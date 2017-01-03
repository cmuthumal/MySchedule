/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class Activity {

    private String id;
    private String subID;
    private String activity;
    private String groups;
    private String date;
    private int fromTime;
    private int toTime;
    private String centre;

    public Activity(String id, String subID, String activity, String groups, String date, int fromTime, int toTime, String centre) {
        this.id = id;
        this.subID = subID;
        this.activity = activity;
        this.groups = groups;
        this.date = date;
        this.fromTime = fromTime;
        this.toTime = toTime;
        this.centre = centre;
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

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getFromTime() {
        return fromTime;
    }

    public void setFromTime(int fromTime) {
        this.fromTime = fromTime;
    }

    public int getToTime() {
        return toTime;
    }

    public void setToTime(int toTime) {
        this.toTime = toTime;
    }

    public String getCentre() {
        return centre;
    }

    public void setCentre(String centre) {
        this.centre = centre;
    }
}
