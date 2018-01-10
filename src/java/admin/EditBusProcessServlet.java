/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import bean.SetBus;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet(name = "EditBusProcessServlet", urlPatterns = {"/EditBusProcessServlet"})
public class EditBusProcessServlet extends HttpServlet {
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
        HttpSession session = request.getSession();
        
        ArrayList busList = new ArrayList();  
        
        //get form data from VIEW > V-I
        String operator = request.getParameter("operator");
        String dtime = request.getParameter("dtime");
        String pickup = request.getParameter("pickup");
        String dropoff = request.getParameter("dropoff");
        Double price = Double.parseDouble(request.getParameter("price"));
        String id = request.getParameter("id");
        
        String sqlUpdate = "UPDATE setbus SET operator= ?, dtime = ?, pickup = ?, dropoff = ?, price = ? WHERE id = ?"; 
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlUpdate);
            preparedStatement.setString(1, operator);
            preparedStatement.setString(2, dtime);
            preparedStatement.setString(3, pickup);
            preparedStatement.setString(4, dropoff);
            preparedStatement.setDouble(5, price);
            preparedStatement.setString(6, id);
            preparedStatement.executeUpdate();
            
            String sqlQuery = "SELECT * FROM setbus ORDER BY operator ASC";
            
            preparedStatement = con.prepareStatement(sqlQuery);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                String busOperator = rs.getString("operator");
                String busDTime = rs.getString("dtime");
                String busPickup = rs.getString("pickup");
                String busDropoff = rs.getString("dropoff");
                double busPrice = rs.getDouble("price");
                
                String busStatus = rs.getString("status");
                int setBusId = rs.getInt("id");
                
                SetBus bus = new SetBus();
                bus.setOperator(busOperator);
                bus.setDtime(busDTime);
                bus.setPickup(busPickup);
                bus.setDropoff(busDropoff);
                bus.setPrice(busPrice);
                
                bus.setStatus(busStatus);
                bus.setId(setBusId);
                busList.add(bus);
            }
        }
        catch (SQLException ex) {            
        }
        
        session.setAttribute("buslist", busList);
        response.sendRedirect(request.getContextPath() + "/ManageDataServlet"); 
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
