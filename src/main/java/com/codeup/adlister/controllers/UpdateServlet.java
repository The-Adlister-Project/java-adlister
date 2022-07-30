
package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "controllers.UpdateServlet", urlPatterns = "/update")
public class UpdateServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }


        request.getRequestDispatcher("/WEB-INF/updateprofile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        User user = (User) session.getAttribute("user");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        if (username == null) {
            username = user.getUsername();
        }
        if (email.equals("")){
            email = user.getEmail();
        }

        User test = null;
        try {
            if (username != null) {
                user.setUsername(username);
            }
            if (password != null) {
                if (username == null) {
                    test = new User(user.getId(), user.getUsername(), email, Password.hash(password));
                }
                else if (email == null) {
                    test = new User(user.getId(), username, user.getEmail(), Password.hash(password));
                }
                else {
                    test = new User(user.getId(), username, email, Password.hash(password));
                }
                DaoFactory.getUsersDao().update(test);
            }
            response.sendRedirect("/profile");
        } catch (Exception e) {
            response.sendRedirect("/error");
        }

    }
}