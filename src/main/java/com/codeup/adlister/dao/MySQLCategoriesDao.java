package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories {
    private Connection connection = null;

    public List<Category> getCategoryName(Long ad_id){
        String query = "select name from categories cat join cat_ads ca on cat.id = ca.cat_id join ads a on ca.ad_id = a.id where ad_id = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, ad_id);
            ResultSet rs = ps.executeQuery();
            List<Category> categories = new ArrayList<>();
            while (rs.next()){
                categories.add(new Category(rs.getString("name")));
            }
            return categories;
        } catch (SQLException e) {
            throw new RuntimeException("get cat name", e);
        }
    }

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }
    @Override
    public Long insert (Category category) {
        String insertQuery = "INSERT INTO categories(name) VALUES (?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, category.getName());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    public List<Ad> findByCategory(String name) {
        String query = "select * from ads as a join cat_ads ca on a.id = ca.ad_id join categories c on ca.cat_id = c.id where name = ?;";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            List<Ad> categories = new ArrayList<>();
            while (rs.next()){
                categories.add(new Ad(
                        rs.getString("title"),
                        rs.getString("description")

                ));
            }
            return categories;

        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    public List<Category> all(){
        List<Category> categories = new ArrayList<>();
        String query = "SELECT * FROM categories;";
        try{
            PreparedStatement ps = connection.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                categories.add(new Category(
                        rs.getString("name")
                ));
            }
        }catch (SQLException e){
            throw new RuntimeException("From all method for categories", e);
        }

        return categories;
    }

    public Long editCat (Long cat_id, Long ad_id){
        String query = "UPDATE cat_ads SET cat_id = ? WHERE ad_id = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, cat_id);
            ps.setLong(2, ad_id);
            ps.executeUpdate();
            return 1L;
        } catch (SQLException e){
            throw new RuntimeException("from edit ad method", e);
        }
    }


//    private List<Category> extractCategory (ResultSet rs) throws SQLException {
//
//        List<Category> categories = new ArrayList<>();
//
//        while (rs.next()) {
//            ads.add(new Ad(
//                    rs.getString("title"),
//                    rs.getString("categories"),
//                    rs.getString("description")
//            ));
//        }
//        return ads;
//    }
}