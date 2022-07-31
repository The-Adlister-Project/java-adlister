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
        String url = (String) request.getSession().getAttribute("image");
        Ads adsDao = DaoFactory.getAdsDao();
        List<Ad> ads = adsDao.all();

        List<Ad> userAd = new ArrayList<>();
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        System.out.println(user.getUrl() + " : this is from doGet view profile servlet");
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
        String t = (String) req.getSession().getAttribute("edit_id");

        if (t != null){
            System.out.println(t + " this is from view profile");
        }
    User user = (User) req.getSession().getAttribute("user");
        System.out.println(user.getUrl());

        //todo: scotts work
        String search = req.getParameter("search");
        String forSale = req.getParameter("forSale");
        String jobs = req.getParameter("jobs");
        String antiques = req.getParameter("antiques");
        String automotive = req.getParameter("automotive");
        String lookingFor = req.getParameter("lookingFor");

        if (search != null) {
           List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(search);
            req.setAttribute("categoryAds", categories);
        }

        if (forSale != null) {
            forSale = "For Sale";
            List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(forSale);
            req.setAttribute("categoryAds", categories);
        }

        if (jobs != null) {
            jobs = "Jobs";
            List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(jobs);
            req.setAttribute("categoryAds", categories);
        }

        if (antiques != null) {
            antiques = "Antiques";
            List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(antiques);
            req.setAttribute("categoryAds", categories);
        }

        if (automotive != null) {
            automotive = "Automotive";
            List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(automotive);
            req.setAttribute("categoryAds", categories);
        }

        if (lookingFor != null) {
            lookingFor = "Looking For";
            List<Ad> categories = DaoFactory.getCategoriesDao().findByCategory(lookingFor);
            req.setAttribute("categoryAds", categories);
        }

        if (id != null) {
            DaoFactory.getAdsDao().deleteAd(id);
            resp.sendRedirect("/profile");
        } else {
            req.getRequestDispatcher("WEB-INF/profile.jsp").forward(req, resp);
        }
    }
}