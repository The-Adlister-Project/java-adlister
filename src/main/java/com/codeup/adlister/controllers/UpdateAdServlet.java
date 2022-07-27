package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name="controllers.UpdateAdServlet", urlPatterns = "/updatead")
public class UpdateAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/updatead.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
HttpSession session = req.getSession();
Ad ad = (Ad) session.getAttribute("ad");
String title = req.getParameter("title");
String description = req.getParameter("description");

//if( != null) {
//    ad.setId();
//}

Ad modify = new Ad (1, 1, title, description);
        DaoFactory.getAdsDao().update(modify);
        if (req.getParameter("edit-ad") != null) {
//            resp.sendRedirect("/profile");
            System.out.println(modify);
        }
req.getRequestDispatcher("/WEB-INF/profile.jsp");
    }



}
