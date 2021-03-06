/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import bean.Order;
import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author irsya
 */
public class UserViewOrder extends HttpServlet {
    
    private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() throws ServletException {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "bus";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        jdbcUtility = new JDBCUtility(driver,
                url,
                userName,
                password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String username = "", pickup = "", dropoff = "", bookid = "", id = "", price = "", operator = "", seat = "",status= "";
        double total=0;
        
        
        ArrayList<Order> booking= new ArrayList<Order>();
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            //response.sendRedirect(request.getContextPath() + "/UserPayment");   
            HttpSession session = request.getSession(true);
            
            
            //get current user
            User user = (User)session.getAttribute("memberprofile");
            
            /*GET DATA TABLE REQUESTBUS*/
            //sql query requestbus
            String sql = "SELECT * FROM requestbus WHERE username=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();
            
            while(rs.next() ){
                
                //extract requestbus data
                bookid= rs.getString("bookid");
                username= rs.getString("username");
                id= rs.getString("id");
                seat= rs.getString("seat");
                System.out.println(seat);
                
                /*GET DATA TABLE SETBUS*/
                //get bus data from setbus using the id
                String sql2= "SELECT * FROM setbus WHERE id="+ id;
                Statement s= con.createStatement();
                ResultSet rs2= s.executeQuery(sql2);
                
                while(rs2.next() ){
                    //check if bus id is the bus chosen 
                    if(rs2.getString("id").equals(id)){
                        //extract setbus data
                        pickup= rs2.getString("pickup");
                        dropoff= rs2.getString("dropoff");
                        price= rs2.getString("price");
                        operator= rs2.getString("operator");
                        
                        total+= Double.parseDouble(price);
                        
                        
                        //create Order bean
                        Order order= new Order(username, pickup, dropoff, bookid, id, operator, Double.parseDouble(price), status);
                        order.setSeat(seat);
                        
                        //put into arraylist
                        booking.add(order);
                        
                        break;
                    }
                }
                
              
            }
            
            //put session
            session.setAttribute("bookingU", booking);
            session.setAttribute("total", total);

            //redirect to UserViewOrder.jsp to display result
            
            sendPage(request, response, "/UserViewOrder.jsp");
            
        }
        catch (SQLException ex)
	{
            while (ex != null)
            {
                System.out.println ("SQLState: " + ex.getSQLState ());
                System.out.println ("Message:  " + ex.getMessage ());
		System.out.println ("Vendor:   " + ex.getErrorCode ());
                ex = ex.getNextException ();
		System.out.println ("");
            }
            
            System.out.println("Connection to the database error");
	}
	catch (java.lang.Exception ex)
	{
            ex.printStackTrace ();
	}
    }
    
    void sendPage(HttpServletRequest req, HttpServletResponse res, String fileName) throws ServletException, IOException
    {
        // Get the dispatcher; it gets the main page to the user
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(fileName);

	if (dispatcher == null)
	{
            System.out.println("There was no dispatcher");
	    // No dispatcher means the html file could not be found.
	    res.sendError(res.SC_NO_CONTENT);
	}
	else
	    dispatcher.forward(req, res);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
