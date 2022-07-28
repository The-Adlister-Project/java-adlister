package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Cat_Ad;
import com.codeup.adlister.models.Category;

import java.util.List;

public interface Cats_Ads {

Long insert(Long ad_id, Long cat_id);

 List<Cat_Ad> allCatId(Long cat_id);
 List<Cat_Ad> allAdId(Long ad_id);
 Long editCat (Long cat_id, Long ad_id);

//    Long insertCat(Long cat_id);
//
//    Long insertAd(Long ad_id);


}
