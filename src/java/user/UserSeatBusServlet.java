/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import bean.RequestBus;
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
 * @author Akmal Ikram
 */
@WebServlet(name = "UserSeatBusServlet", urlPatterns = {"/UserSeatBusServlet"})
public class UserSeatBusServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("memberprofile");
        String username = user.getUsername();
        String status = "Pending";
        String busId = request.getParameter("id");
        RequestBus book = new RequestBus();
        String seats[] = request.getParameterValues("seat");

        book.setUsername(username);
        book.setId(busId);
        book.setStatus(status);
        book.setSeat(seats);
        // ArrayList seatList = new ArrayList();        
        PrintWriter out = response.getWriter();
        out.println(book.getSeat());
        String sqlQuery = "insert into requestbus (seat, username, status, id) values (?, ?, ?, ?)";

        try {
            /* TODO output your page here. You may use following sample code. */
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setString(1, book.getSeat());
            preparedStatement.setString(2, book.getUsername());
            preparedStatement.setString(3, book.getStatus());
            preparedStatement.setString(4, book.getId());

            preparedStatement.executeUpdate();

        } catch (SQLException ex) {

            out.println(ex);
        }

        session.setAttribute("book", book);
        response.sendRedirect(request.getContextPath() + "/UserViewOrder.jsp");// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

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
