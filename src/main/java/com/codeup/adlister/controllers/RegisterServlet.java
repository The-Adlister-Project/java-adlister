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

        String url = null;
        int random = (int) (Math.random() * 4) + 1;
        List<User> users = DaoFactory.getUsersDao().all();

        if (random == 1){
            url = "/images/profile-img.webp";
        }
        if (random == 2){
            url = "/images/random-user1.webp";
        }
        if (random == 3){
            url = "/images/random-user2.webp";
        }
        if (random == 4){
            url = "/images/random-user3.webp";
        }

        try {
            if (userExists != null && url == null) {
                response.sendRedirect("/error");
            } else {
                User user = new User(username, email, Password.hash(password), url);
                DaoFactory.getUsersDao().insert(user);
                response.sendRedirect("/login");
            }
        } catch (Exception e) {
            response.sendRedirect("/error");
        }


    }
}