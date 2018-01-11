/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import java.io.IOException;
import bean.SetBus;
import bean.User;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class SearchBus extends HttpServlet {
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("memberprofile");
        String login = user.getUsername();
        String pickup = request.getParameter("pickup");
        String dropoff = request.getParameter("dropoff");
        ArrayList busList = new ArrayList();

        String sqlQuery = "SELECT * FROM setbus where pickup = ? and dropoff = ? ORDER BY pickup ASC";

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            try {
                PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
                preparedStatement.setString(1,pickup);
                preparedStatement.setString(2,dropoff);
                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    
                    String operator = rs.getString("operator");
                    String dtime = rs.getString("dtime");
                    double price = rs.getDouble("price");
                    String status = rs.getString("status");
                    int id = rs.getInt("id");
                    
                    SetBus searchbus = new SetBus();
                    searchbus.setOperator(operator);
                    searchbus.setDtime(dtime);
                    searchbus.setPickup(pickup);
                    searchbus.setDropoff(dropoff);
                    searchbus.setPrice(price);
                    searchbus.setStatus(status);
                    searchbus.setId(id);
                    busList.add(searchbus);
                }
            } catch (SQLException ex) {
                out.println(ex);
            }

            session.setAttribute("searchbus", busList);
            response.sendRedirect(request.getContextPath() + "/SearchBus.jsp");
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
