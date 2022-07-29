package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Users userDao = DaoFactory.getUsersDao();
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        User userExists = userDao.findByUsername(username);

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));

//        if (userExists != null) {
//            response.sendRedirect("/register");
//            return;
//        }

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user


        List<User> users = DaoFactory.getUsersDao().all();
        try {
            if (userExists != null) {
                response.sendRedirect("/error");
            } else {
                User user = new User(username, email, password);
                DaoFactory.getUsersDao().insert(user);
                response.sendRedirect("/login");
            }
        } catch (Exception e) {
            response.sendRedirect("/error");
        }


    }
}