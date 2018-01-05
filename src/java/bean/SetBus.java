/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
/**
 *
 * @author Sufi
 */
public class SetBus implements Serializable{
    private String operator, dtime, pickup, dropoff, status;
    private double price;
    private int id;
    /**
     * @return the oper
     */
    public String getOperator() {
        return operator;
    }

    /**
     * @param oper the oper to set
     */
    public void setOperator(String operator) {
        this.operator = operator;
    }

    /**
     * @return the dtime
     */
    public String getDtime() {
        return dtime;
    }

    /**
     * @param dtime the dtime to set
     */
    public void setDtime(String dtime) {
        this.dtime = dtime;
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
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
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
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    
}
