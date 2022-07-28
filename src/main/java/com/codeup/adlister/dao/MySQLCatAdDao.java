package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Cat_Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCatAdDao implements Cats_Ads{
    private Connection connection = null;

    public MySQLCatAdDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
                connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e){
            throw new RuntimeException("Connection for Cat_Ad Dao");
        }
    }

    public Long insert(Long ad_id, Long cat_id){
        String query = "INSERT INTO cat_ads(ad_id, cat_id) VALUES (?,?);";

        try {
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1,ad_id);
            ps.setLong(2,cat_id);
            ps.executeUpdate();
            return 1L;
        }catch (SQLException e){
            throw new RuntimeException("From insert for cat_ads table", e);
        }
    }

    public List<Cat_Ad> allCatId(Long cat_id){
        List <Cat_Ad> catAds = new ArrayList<>();
        String query = "SELECT * FROM cat_ads WHERE cat_id = ?;";
        try{
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, cat_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
               catAds.add(new Cat_Ad(
                       rs.getInt("ad_id"),
                       rs.getInt("cat_id")
               ));
            }
            return catAds;
        } catch (SQLException e){
            throw new RuntimeException("from all catAds" , e);
        }

    }

    public List<Cat_Ad> allAdId(Long ad_id){
        List <Cat_Ad> catAds = new ArrayList<>();
        String query = "SELECT * FROM cat_ads WHERE ad_id = ?;";
        try{
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, ad_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                catAds.add(new Cat_Ad(
                        rs.getInt("ad_id"),
                        rs.getInt("cat_id")
                ));
            }
            return catAds;
        } catch (SQLException e){
            throw new RuntimeException("from all catAds" , e);
        }

    }

    public Long editCat (Long cat_id, Long ad_id) {
        String query = "UPDATE cat_ads SET cat_id = ? WHERE ad_id = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setLong(1, cat_id);
            ps.setLong(2, ad_id);
            ps.executeUpdate();
            return 1L;
        } catch (SQLException e){
            throw new RuntimeException("edit cat", e);
        }

    }


//    public Long insertAd(Long ad_id){
//        String query = "INSERT INTO cat_ads(ad_id)  FROM ads WHERE id = ?;";
//
//        try {
//            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            ps.setLong(1,ad_id);
//            ps.executeUpdate();
//            return 1L;
//        }catch (SQLException e){
//            throw new RuntimeException("From insert for cat_ads table", e);
//        }
//    }
//
//    public Long insertCat(Long cat_id){
//        String query = "INSERT INTO cat_ads(SELECT cat_id FROM categories WHERE id = ?);";
//
//        try {
//            PreparedStatement ps = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            ps.setLong(1,cat_id);
//            ps.executeUpdate();
//            return 1L;
//        }catch (SQLException e){
//            throw new RuntimeException("From insert for cat_ads table", e);
//        }
//    }

}
