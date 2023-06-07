package com.blog.servlets;

import com.blog.dao.UserDao;
import com.blog.entities.Message;
import com.blog.entities.User;
import com.blog.helper.ConnectionProvider;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String userEmail = request.getParameter("email");
            String userPassword = request.getParameter("password");

            UserDao userDao = new UserDao(ConnectionProvider.getConnection());

            User user = userDao.getUserByEmailAndPassword(userEmail, userPassword);

            if (user == null) {
                // Invalid login details
                Message msg = new Message("Invalid Details! Please try again.", "error", "alert-danger");
                HttpSession session = request.getSession();
                session.setAttribute("msg", msg);

                response.sendRedirect("LoginServlet");

            } else {
                // Login success
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", user);
                response.sendRedirect("ProfileServlet"); // Redirect to ProfileServlet
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward the request to the login page
        request.getRequestDispatcher("/WEB-INF/jsp/login_page.jsp").forward(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}
