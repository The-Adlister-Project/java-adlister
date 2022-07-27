package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    Ad findOne(Long id);

    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Ad findOne(long id); // find an individual record by its id
    Long insert(Ad ad);

    void destroy(Ad ad); // remove a record

    Long update(Ad ad);
}
