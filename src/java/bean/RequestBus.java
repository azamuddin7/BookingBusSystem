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
public class RequestBus implements Serializable{
    private String bookid;
    private String username;
    private String seat;
    private String status; 
    private String setbusId;
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
        return seat;
    }

    /**
     * @param seat the seat to set
     */
    public void setSeat(String seat) {
        this.seat = seat;
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
     * @return the setbusId
     */
    public String getSetbusId() {
        return setbusId;
    }

    /**
     * @param setbusId the setbusId to set
     */
    public void setSetbusId(String setbusId) {
        this.setbusId = setbusId;
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
