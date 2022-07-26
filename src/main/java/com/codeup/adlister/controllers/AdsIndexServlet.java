
package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.setAttribute("user", "null");
        }
        if (user != null) {
            request.setAttribute("user", user.getUsername());
        }

        String id = request.getParameter("ad_id");
        System.out.println(id + " this is from doGet index");
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}