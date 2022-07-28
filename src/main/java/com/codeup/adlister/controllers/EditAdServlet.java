package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditAdServlet", urlPatterns = "/edit")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String id = (String) req.getAttribute("edit");

        if (id != null){
            System.out.println(id);
        }


        req.getRequestDispatcher("WEB-INF/ads/edit.jsp").forward(req,res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("edit");
        req.setAttribute("edit_id", id);

        String edit = req.getParameter("editButton");
        String title = req.getParameter("title");
        String description = req.getParameter("description");



       if (title != null && description != null && edit != null) {
           DaoFactory.getAdsDao().editAd(title,description,Long.parseLong(edit));
           res.sendRedirect("/profile");
       } else{
            req.getRequestDispatcher("WEB-INF/ads/edit.jsp").forward(req,res);
       }


    }
}
