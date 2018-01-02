/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin;

import bean.SetBus;
import bean.User;
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
@WebServlet(name = "AddBusServlet", urlPatterns = {"AddBusServlet"})
public class AddBusServlet extends HttpServlet{
    
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
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Get the session object
	HttpSession session = request.getSession();
        
        ArrayList busList = new ArrayList();  
        
        //get form data from VIEW > V-I
        String operator = request.getParameter("operator");
        String dtime = request.getParameter("dtime");
        String pickup = request.getParameter("pickup");
        String dropoff = request.getParameter("dropoff");
        Double price = Double.parseDouble(request.getParameter("price"));
        
        String sqlInsert = "INSERT INTO setbus(operator, dtime, pickup, dropoff, price, status) VALUES(?, ?, ?, ?, ?, 'active')"; 
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlInsert);
            preparedStatement.setString(1, operator);
            preparedStatement.setString(2, dtime);
            preparedStatement.setString(3, pickup);
            preparedStatement.setString(4, dropoff);
            preparedStatement.setDouble(5, price);
            preparedStatement.executeUpdate();
            
            String sqlQuery = "SELECT * FROM setbus ORDER BY name ASC";
            
            preparedStatement = con.prepareStatement(sqlQuery);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                String busOperator = rs.getString("operator");
                String busDTime = rs.getString("dtime");
                String busPickup = rs.getString("pickup");
                String busDropoff = rs.getString("dropoff");
                double busPrice = rs.getDouble("price");
                
                String busStatus = rs.getString("status");
                int id = rs.getInt("id");
                
                SetBus bus = new SetBus();
                bus.setOperator(busOperator);
                bus.setDtime(busDTime);
                bus.setPickup(busPickup);
                bus.setDropoff(busDropoff);
                bus.setPrice(busPrice);
                
                bus.setStatus(busStatus);
                bus.setId(id);
                busList.add(bus);
            }
        }
        catch (SQLException ex) {            
        }
        
        session.setAttribute("buslist", busList);
        response.sendRedirect(request.getContextPath() + "AdminManageBus.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
