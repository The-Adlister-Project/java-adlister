package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Cat_Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EditAdServlet", urlPatterns = "/edit")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String id = (String) req.getAttribute("edit");

        if (id != null) {
            System.out.println(id);
        }


        req.getRequestDispatcher("WEB-INF/ads/edit.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("edit");
        req.setAttribute("edit_id", id);

        String ad_id = req.getParameter("editButton");
        String title = req.getParameter("title");
        String description = req.getParameter("description");


        String cat1 = (String) req.getSession().getAttribute("cat1");
        String cat2 = (String) req.getSession().getAttribute("cat2");
        String cat3 = (String) req.getSession().getAttribute("cat3");
        String cat4 = (String) req.getSession().getAttribute("cat4");
        String cat5 = (String) req.getSession().getAttribute("cat5");

List<Cat_Ad> catAds = DaoFactory.getCatAdsDao().allAdId(Long.valueOf(ad_id));

        if (title != null && description != null && ad_id != null) {

            for (Cat_Ad cat : catAds) {
                DaoFactory.getAdsDao().editAd(title, description, Long.parseLong(ad_id));

            }
            res.sendRedirect("/profile");
        } else {
            req.getRequestDispatcher("WEB-INF/ads/edit.jsp").forward(req, res);
        }
    }

    public static void main(String[] args) {
        List<Cat_Ad> catAds = DaoFactory.getCatAdsDao().allAdId(Long.parseLong("3"));

        String cat1 = "1";
        String cat2 = "2";
        String cat3 = "3";
        String cat4 = "4";
        String cat5 = "5";

        for (Cat_Ad cat : catAds) {
            System.out.println(cat.getCat_id());
            System.out.println(cat.getAd_id());

            DaoFactory.getCatAdsDao().editCat(Long.parseLong(cat2) ,Long.parseLong("3"));


//            DaoFactory.getAdsDao().editAd("title", "description", Long.parseLong("3"));

        }



    }


}
