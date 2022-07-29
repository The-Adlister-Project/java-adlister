package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Cat_Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

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
        AtomicBoolean edit = new AtomicBoolean(false);

        String cat1 = req.getParameter("cat1");
        String cat2 = req.getParameter("cat2");
        String cat3 = req.getParameter("cat3");
        String cat4 = req.getParameter("cat4");
        String cat5 = req.getParameter("cat5");


        if (cat1 != null) {
            req.setAttribute("cat1", cat1);

        }
        if (cat2 != null) {
            req.setAttribute("cat2", cat2);

        }
        if (cat3 != null) {
            req.setAttribute("cat3", cat3);

        }
        if (cat4 != null) {
            req.setAttribute("cat4", cat4);

        }
        if (cat5 != null) {
            req.setAttribute("cat5", cat5);

        }

        List<Cat_Ad> catAds = null;

        if (ad_id != null) {
            DaoFactory.getCatAdsDao().deleteCat(Long.parseLong(ad_id));
            catAds = DaoFactory.getCatAdsDao().allAdId(Long.parseLong(ad_id));
            DaoFactory.getAdsDao().editAd(title, description, Long.parseLong(ad_id));

            req.setAttribute("ad_id", ad_id);

            req.getRequestDispatcher("/category").forward(req,res);
        } else {
            req.getRequestDispatcher("WEB-INF/ads/edit.jsp").forward(req, res);
        }
    }
}
