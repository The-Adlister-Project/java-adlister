package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Ads adsDao = DaoFactory.getAdsDao();
        List<Ad> ads = adsDao.all();

        List<Ad> userAd = new ArrayList<>();
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        for (Ad ad : ads) {
            if (ad.getUserId() == user.getId()) {
                userAd.add(ad);
            }
        }
        request.setAttribute("ads", userAd);

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("delete");



        if (id != null) {
            DaoFactory.getAdsDao().deleteAd(id);
            resp.sendRedirect("/profile");
        } else {
            req.getRequestDispatcher("WEB-INF/profile.jsp").forward(req, resp);
        }
    }

}