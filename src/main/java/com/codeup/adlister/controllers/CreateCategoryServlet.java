package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "CreateCategoryServlet", urlPatterns = "/category")
public class CreateCategoryServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cat1 = (String) req.getSession().getAttribute("creation1");
        String cat2 = (String) req.getSession().getAttribute("creation2");
        String cat3 = (String) req.getSession().getAttribute("creation3");
        String cat4 = (String) req.getSession().getAttribute("creation4");
        String cat5 = (String) req.getSession().getAttribute("creation5");
        List<Ad> ads = DaoFactory.getAdsDao().all();
        Ad ad = ads.get(ads.size() - 1);

        if (cat1 != null){
            DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(cat1));
        }
        if (cat2 != null){
            DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(cat2));
        }
        if (cat3 != null){
            DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(cat3));
        }
        if (cat4 != null){
            DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(cat4));
        }
        if (cat5 != null){
            DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(cat5));
        }

            resp.sendRedirect("/profile");
        }
    }
