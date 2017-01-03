/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.ActivityDBAccess;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Activity;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class ActivityController {

    private ActivityDBAccess activityDBAccess;

    public ActivityController() {
        activityDBAccess = new ActivityDBAccess();
    }

    public boolean addActivity(Activity activity) throws SQLException, ClassNotFoundException {
        return activityDBAccess.addActivity(activity);
    }

    public boolean updateActivity(Activity activity) throws SQLException, ClassNotFoundException {
        return activityDBAccess.updateActivity(activity);
    }

    public boolean deleteActivity(String id) throws SQLException, ClassNotFoundException {
        return activityDBAccess.deleteActivity(id);
    }

    public ArrayList<Activity> getAllActivities() throws ClassNotFoundException, SQLException {
        return activityDBAccess.getAllActivities();
    }

    public ArrayList<Activity> searchActivities(String key, String type) throws SQLException, ClassNotFoundException {
        return activityDBAccess.searchActivities(key, type);
    }

    public ArrayList<Activity> searchActivitiesByDateAndSub(String fromDate, String toDate, String subID) throws SQLException, ClassNotFoundException {
        return activityDBAccess.searchActivitiesByDateAndSub(fromDate, toDate, subID);
    }

    public String getNextID() throws SQLException, ClassNotFoundException {
        return activityDBAccess.getNextID();
    }
}
