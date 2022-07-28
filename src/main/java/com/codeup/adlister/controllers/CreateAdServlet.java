package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = (User) request.getSession().getAttribute("user");

        String id = (String) request.getAttribute("edit");

        if (id != null){
            System.out.println(id + " this is from create ad servlet");
        }



        //todo: this is scotts work

        HttpSession session = request.getSession();
        String title = request.getParameter("title");
        String category1 = request.getParameter("cat1");
        String category2 = request.getParameter("cat2");
        String category3 = request.getParameter("cat3");
        String category4 = request.getParameter("cat4");
        String category5 = request.getParameter("cat5");
        String description = request.getParameter("description");


//        Ad ad = new Ad(
//            user.getId(),
//            request.getParameter("title"),
//            request.getParameter("categories"),
//            request.getParameter("description")
//        );

//        if (category != null){
//            System.out.println(category);
//        }

        Ad newAd = new Ad(user.getId(), title, description);
        DaoFactory.getAdsDao().insert(newAd);


        if (category1 != null){
            request.getSession().setAttribute("creation1", category1);
//            request.getRequestDispatcher("/category").forward(request,response);
        }
        if (category2 != null){
            request.getSession().setAttribute("creation2", category2);
//            request.getRequestDispatcher("/category").forward(request,response);
        }
        if (category3 != null){
            request.getSession().setAttribute("creation3", category3);
//            request.getRequestDispatcher("/category").forward(request,response);
        }
        if (category4 != null){
            request.getSession().setAttribute("creation4", category4);
//            request.getRequestDispatcher("/category").forward(request,response);
        }
        if (category5 != null){
            request.getSession().setAttribute("creation5", category5);
//            request.getRequestDispatcher("/category").forward(request,response);
        }
        request.getRequestDispatcher("/category").forward(request,response);
    }

}
