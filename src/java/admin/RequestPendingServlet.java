/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import bean.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author Sufi
 */
@WebServlet(name = "RequestPendingServlet", urlPatterns = {"/RequestPendingServlet"})
public class RequestPendingServlet extends HttpServlet {

    private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
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
        HttpSession session = request.getSession(true);
        
        String username = "", pickup = "", dropoff = "", bookid = "", id = "", price = "", operator = "", status="";
        ArrayList rList = new ArrayList();  
        
        //get form data from VIEW > V-I
        String bookId = request.getParameter("id");

            String sqlUpdate = "UPDATE requestbus SET status = 'Pending' WHERE bookid = ?";         
        
            try {
                PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
                preparedStatement.setString(1, bookId); 
                preparedStatement.executeUpdate();
                
                String sqlQuery = "SELECT * FROM requestbus ORDER BY id ASC";
            
            preparedStatement = con.prepareStatement(sqlQuery);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                //extract requestbus data
                bookid= rs.getString("bookid");
                username= rs.getString("username");
                id= rs.getString("id");
                status= rs.getString("status");
                
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
                
                Order order= new Order(username, pickup, dropoff, bookid, id, operator, Double.parseDouble(price), status);
                rList.add(order);
                break;
                }
                }
            }
            }
            catch (SQLException ex) {            
            }
        
        
        session.setAttribute("adminrqclist", rList);
        response.sendRedirect(request.getContextPath() + "/AdminViewOrderServlet");
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
