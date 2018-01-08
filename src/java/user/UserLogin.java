/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import bean.SetBus;
import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author MSI
 */
@WebServlet(name = "UserLogin", urlPatterns = {"/UserLogin"})
public class UserLogin extends HttpServlet {

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

        User user = null;
        
        ArrayList<String> pickUpList=new ArrayList<String>();
        ArrayList<String> dropOffList=new ArrayList<String>();

        //Get the session object
        HttpSession session = request.getSession();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userType = "", fullName = "", image = "", email = "";

        ArrayList busList = new ArrayList();
        PrintWriter out = response.getWriter();
        
        String sqlQueryUser = "SELECT * FROM user WHERE username = ? AND password = ? AND usertype = 'client'";
        String sqlQueryBus = "SELECT * FROM setbus ORDER BY operator ASC";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlQueryUser);
            PreparedStatement preparedStatementbus = con.prepareStatement(sqlQueryBus);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            ResultSet rsbus = preparedStatementbus.executeQuery();

            while (rs.next()) {
                userType = rs.getString("usertype");
                fullName = rs.getString("fullname");
                image = rs.getString("image");
                password = rs.getString("password");
                email = rs.getString("email");

                user = new User();
                user.setUsername(username);
                user.setFullName(fullName);
                user.setUserType(userType);
                user.setPassword(password);
                user.setEmail(email);
                user.setImage(image);
            }

            while (rsbus.next()) {
                /*
                String operator = rsbus.getString("operator");
                String dtime = rsbus.getString("dtime");
                String pickup = rsbus.getString("pickup");
                String dropoff = rsbus.getString("dropoff");
                double price = rsbus.getDouble("price");
                String status = rsbus.getString("status");
                String date = rsbus.getString("date");
                int id = rsbus.getInt("id");
                
                SetBus searchbus = new SetBus();
                searchbus.setOperator(operator);
                searchbus.setDtime(dtime);
                searchbus.setPickup(pickup);
                searchbus.setDropoff(dropoff);
                searchbus.setPrice(price);
                searchbus.setStatus(status);
                searchbus.setDate(date);
                searchbus.setId(id);
                busList.add(searchbus);
                */
                
                /*extract pickup n dropoff n put into AL*/
                
                //check if bus active
                if(rsbus.getString("status").equals("inactive") ) continue;
                
                System.out.println("masuk");
                //first input
                if(pickUpList.isEmpty() && dropOffList.isEmpty() ){
                    pickUpList.add(rsbus.getString("pickup"));
                    dropOffList.add(rsbus.getString("dropoff"));
                    System.out.println("pickup:"+ rsbus.getString("pickup"));
                    System.out.println("drop:"+ rsbus.getString("dropoff"));
                    
                    continue;
                }
                
                //next... if not duplicate...
                //pickUpList
                String curP= "";
                boolean sameP= false;
                for(int i= 0; i<pickUpList.size(); i++){
                    curP= pickUpList.get(i).toString();
                    
                    if(curP.equals(rsbus.getString("pickup")) ){
                        sameP= true;
                        break;
                    }
                }
                if(sameP==false) { pickUpList.add(rsbus.getString("pickup")); System.out.println("pickup:"+ rsbus.getString("pickup")); }
                
                //dropOffList
                String curD= "";
                boolean sameD= false;
                for(int i= 0; i<dropOffList.size(); i++){
                    curD= dropOffList.get(i).toString();
                    
                    if(curD.equals(rsbus.getString("dropoff")) ){
                        sameD= true;
                        break;
                    }
                }
                if(sameD==false) { dropOffList.add(rsbus.getString("dropoff"));System.out.println("drop:"+ rsbus.getString("dropoff")); }
                
                
            }
        } catch (SQLException ex) {
            
            out.println(ex);
        }
        catch( NullPointerException e){
            out.println(e);
        }

        if (user != null) {
            session.setAttribute("memberprofile", user);
            //session.setAttribute("searchbus", busList);
            session.setAttribute("pickup", pickUpList);
            session.setAttribute("dropoff", dropOffList);
            response.sendRedirect(request.getContextPath() + "/MainPageUser.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/index.html");
        }
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
