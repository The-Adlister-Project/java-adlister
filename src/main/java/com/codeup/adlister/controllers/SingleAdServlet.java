package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

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
        String ad_id = (String) session.getAttribute("id");
        request.setAttribute("id", ad_id);
        System.out.println(ad_id);
        request.getRequestDispatcher("/WEB-INF/ads/soloAd.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        int id = Integer.parseInt(req.getParameter("ad_id"));
        System.out.println(id);
        req.setAttribute("ad", DaoFactory.getAdsDao().all().get(id - 1));


        req.getRequestDispatcher("WEB-INF/ads/soloAd.jsp").forward(req,res);
    }


}

