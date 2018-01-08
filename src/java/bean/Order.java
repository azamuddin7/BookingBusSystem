/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author Harris D.Ilham Adni
 */
public class Order implements Serializable {
    private String username, pickup, dropoff, bookid, id, operator;
    private double price;
    
    
    //constructor 6 param, set all attr.
    public Order(String username, String pickup, String dropoff, String bookid, String id, String operator, double price){
        this.username= username;
        this.pickup= pickup;
        this.dropoff= dropoff;
        this.bookid= bookid;
        this.id= id;
        this.operator= operator;
        this.price= price;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the pickup
     */
    public String getPickup() {
        return pickup;
    }

    /**
     * @param pickup the pickup to set
     */
    public void setPickup(String pickup) {
        this.pickup = pickup;
    }

    /**
     * @return the dropoff
     */
    public String getDropoff() {
        return dropoff;
    }

    /**
     * @param dropoff the dropoff to set
     */
    public void setDropoff(String dropoff) {
        this.dropoff = dropoff;
    }

    /**
     * @return the bookid
     */
    public String getBookid() {
        return bookid;
    }

    /**
     * @param bookid the bookid to set
     */
    public void setBookid(String bookid) {
        this.bookid = bookid;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the operator
     */
    public String getOperator() {
        return operator;
    }

    /**
     * @param operator the operator to set
     */
    public void setOperator(String operator) {
        this.operator = operator;
    }
    
    
}
