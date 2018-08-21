package com.example.smadil.projectapp;

/**
 * Created by S.m Adil on 02-08-2018.
 */
public class Place {

    private String id;
    private String name, address, address_uri, description;
    private String rating;
    private String image_url;

    public Place(String id, String name, String address, String address_uri, String description, String rating, String image_url) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.address_uri = address_uri;
        this.description = description;
        this.rating = rating;
        this.image_url = image_url;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getAddress_uri() {
        return address_uri;
    }

    public String getDescription() {
        return description;
    }

    public String getRating() {
        return rating;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public void setAddress_uri(String address_uri) {
        this.address_uri = address_uri;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
