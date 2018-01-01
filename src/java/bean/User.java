/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author MSI
 */
public class User implements Serializable {
    private String username, password, usertype, fullName, image, email;

    /**
     * @return the login
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param login the login to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return usertype;
    }

    /**
     * @param userType the userType to set
     */
    public void setUserType(String usertype) {
        this.usertype = usertype;
    }

    /**
     * @return the fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * @param fullName the fullName to set
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String Email) {
        this.email = email;
    }
}
