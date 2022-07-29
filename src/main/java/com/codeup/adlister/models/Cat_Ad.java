package com.codeup.adlister.models;

public class Cat_Ad {
    private Integer id;
    private Integer ad_id;
    private Integer cat_id;

    public Integer getId() {
        return id;
    }

    public Cat_Ad(Integer id, Integer ad_id, Integer cat_id) {
        this.id = id;
        this.ad_id = ad_id;
        this.cat_id = cat_id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Cat_Ad(Integer ad_id, Integer cat_id) {
        this.ad_id = ad_id;
        this.cat_id = cat_id;
    }

    public Cat_Ad() {
    }

    public Integer getAd_id() {
        return ad_id;
    }

    public void setAd_id(Integer ad_id) {
        this.ad_id = ad_id;
    }

    public Integer getCat_id() {
        return cat_id;
    }

    public void setCat_id(Integer cat_id) {
        this.cat_id = cat_id;
    }
}
