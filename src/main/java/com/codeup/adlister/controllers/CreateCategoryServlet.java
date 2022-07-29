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
        String category1 = (String) req.getAttribute("creation1");
        String category2 = (String) req.getAttribute("creation2");
        String category3 = (String) req.getAttribute("creation3");
        String category4 = (String) req.getAttribute("creation4");
        String category5 = (String) req.getAttribute("creation5");

        String ad_id = (String) req.getAttribute("ad_id");

        String c1 = (String) req.getAttribute("cat1");
        String c2 = (String) req.getAttribute("cat2");
        String c3 = (String) req.getAttribute("cat3");
        String c4 = (String) req.getAttribute("cat4");
        String c5 = (String) req.getAttribute("cat5");

        List<Ad> ads = DaoFactory.getAdsDao().all();
        Ad ad = ads.get(ads.size() - 1);




        if(ad_id != null) {
            try {
                if (c1 != null) {
                    System.out.println(c1 + " this is from create category!");
                    DaoFactory.getCatAdsDao().insert(Long.parseLong(ad_id), Long.parseLong(c1));
                }
                if (c2 != null) {
                    System.out.println(c2);
                    DaoFactory.getCatAdsDao().insert(Long.parseLong(ad_id), Long.parseLong(c2));
                }
                if (c3 != null) {
                    System.out.println(c3);
                    DaoFactory.getCatAdsDao().insert(Long.parseLong(ad_id), Long.parseLong(c3));
                }
                if (c4 != null) {
                    System.out.println(c4);
                    DaoFactory.getCatAdsDao().insert(Long.parseLong(ad_id), Long.parseLong(c4));
                }
                if (c5 != null) {
                    System.out.println(c5);
                    DaoFactory.getCatAdsDao().insert(Long.parseLong(ad_id), Long.parseLong(c5));
                }
            } catch (Exception e){
                resp.sendRedirect("/error");
            }
        } else {
            try {
                if (category1 != null) {
                    DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(category1));
                    System.out.println(category1 + " this is cat1");
                }
                if (category2 != null) {
                    DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(category2));
                    System.out.println(category2 + " this is cat2");
                }
                if (category3 != null) {
                    DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(category3));
                    System.out.println(category3 + " this is cat3");
                }
                if (category4 != null) {
                    DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(category4));
                    System.out.println(category4 + " this is cat4");
                }
                if (category5 != null) {
                    DaoFactory.getCatAdsDao().insert(ad.getId(), Long.parseLong(category5));
                    System.out.println(category5 + " this is cat5");
                }
            } catch (Exception e){
                resp.sendRedirect("/error");
            }
        }
        resp.sendRedirect("/profile");
    }
}
