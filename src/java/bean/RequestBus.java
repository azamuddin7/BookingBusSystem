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
public class RequestBus implements Serializable {

    private String bookid;
    private String username;
    private String[] seats;
    private String status;
    private String id;

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
     * @return the seat
     */
    public String getSeat() {
        String s = "";
        int i = 0;
        for (String seat : seats) {
            if (seats.length <= 0) {
                return "";
            } else if (seats.length == 1) {
                return seats[0];
            } else if (i == 0) {
                s += seat;
            }
            s = s + "," + seat;
            i++;
        }
        return s;
    }

    /**
     * @param seats
     */
    public void setSeat(String[] seats) {
        this.seats = seats;
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

}
