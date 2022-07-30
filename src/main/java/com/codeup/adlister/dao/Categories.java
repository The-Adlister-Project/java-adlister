package com.codeup.adlister.dao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Categories {

    List<Category> getCategoryName(Long ad_id);

    List<Category> all();

    Long insert(Category category);

    List<Ad> findByCategory(String name);

    Long editCat (Long cat_id, Long ad_id);

}