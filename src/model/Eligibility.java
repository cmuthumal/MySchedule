/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class Eligibility {

    private String id;
    private String subID;
    private String criteria;

    public Eligibility(String id, String subID, String criteria) {
        this.id = id;
        this.subID = subID;
        this.criteria = criteria;
    }

    public String getCriteria() {
        return criteria;
    }

    public void setCriteria(String criteria) {
        this.criteria = criteria;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSubID() {
        return subID;
    }

    public void setSubID(String subID) {
        this.subID = subID;
    }
}
