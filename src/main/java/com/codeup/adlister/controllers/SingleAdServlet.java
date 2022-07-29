package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.SingleAdServlet", urlPatterns = "/soloAd")
public class SingleAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("user", user.getUsername());
        String ad_id = (String) session.getAttribute("id");
        request.setAttribute("id", ad_id);
        request.getRequestDispatcher("/WEB-INF/ads/soloAd.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("ad_id"));
        req.setAttribute("ad", DaoFactory.getAdsDao().selectById(Long.parseLong(String.valueOf(id))));
        Ad ad = (Ad) req.getAttribute("ad");
        System.out.println(ad.getUserId());
        req.setAttribute("ad_user", DaoFactory.getUsersDao().findById(ad.getUserId()));
        req.getRequestDispatcher("WEB-INF/ads/soloAd.jsp").forward(req, res);
    }
}