/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import extra.Validate;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Activity;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class ActivityDBAccess {

    private Connection connection = null;
    private Statement stm = null;

    public boolean addActivity(Activity activity) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "INSERT INTO activity VALUES('" + activity.getId() + "', '" + activity.getSubID() + "',  '" + activity.getActivity() + "','" + activity.getGroups() + "','" + activity.getDate() + "'," + activity.getFromTime() + "," + activity.getToTime() + ",'" + activity.getCentre() + "');";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public boolean updateActivity(Activity activity) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();
        String sql = "UPDATE activity SET subID='" + activity.getSubID() + "', activity='" + activity.getActivity() + "', groups='" + activity.getGroups() + "', date='" + activity.getDate() + "' ,fromTime=" + activity.getFromTime() + ",toTime=" + activity.getToTime() + ", centre='" + activity.getCentre() + "' WHERE id='" + activity.getId() + "';";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public boolean deleteActivity(String id) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "DELETE FROM activity WHERE id='" + id + "';";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public ArrayList<Activity> getAllActivities() throws ClassNotFoundException, SQLException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT * FROM activity ORDER BY date,fromTime;";
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<Activity> activityList = new ArrayList<>();
        while (resultSet.next()) {
            Activity activity = new Activity(resultSet.getString("id"), resultSet.getString("subID"), resultSet.getString("activity"), resultSet.getString("groups"), resultSet.getString("date"), resultSet.getInt("fromTime"), resultSet.getInt("toTime"), resultSet.getString("centre"));
            activityList.add(activity);
        }
        return activityList;
    }

    public ArrayList<Activity> searchActivities(String key, String type) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT * FROM activity WHERE " + type + " LIKE '" + key + "%' ORDER BY date,fromTime;";
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<Activity> activityList = new ArrayList<>();
        while (resultSet.next()) {
            Activity activity = new Activity(resultSet.getString("id"), resultSet.getString("subID"), resultSet.getString("activity"), resultSet.getString("groups"), resultSet.getString("date"), resultSet.getInt("fromTime"), resultSet.getInt("toTime"), resultSet.getString("centre"));
            activityList.add(activity);
        }
        return activityList;
    }

    public ArrayList<Activity> searchActivitiesByDateAndSub(String fromDate, String toDate, String subID) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql;
        if (subID.equals("all")) {
            sql = "SELECT* FROM activity WHERE date<='" + toDate + "' AND date>='" + fromDate + "' ORDER BY date,fromTime;";
        } else {
            sql = "SELECT* FROM activity WHERE date<='" + toDate + "' AND date>='" + fromDate + "' AND subID='" + subID + "' ORDER BY date,fromTime;";
        }
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<Activity> activityList = new ArrayList<>();
        while (resultSet.next()) {
            Activity activity = new Activity(resultSet.getString("id"), resultSet.getString("subID"), resultSet.getString("activity"), resultSet.getString("groups"), resultSet.getString("date"), resultSet.getInt("fromTime"), resultSet.getInt("toTime"), resultSet.getString("centre"));
            activityList.add(activity);
        }
        return activityList;
    }

    public String getNextID() throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String id = "";
        String sql = "SELECT id FROM activity ORDER BY id DESC LIMIT 1;";
        ResultSet resultSet = stm.executeQuery(sql);

        if (resultSet.next()) {
            id = resultSet.getString("id");
        } else {
            id = "ACT0001";
        }
        String newID = new Validate().getNextID(id);
        return newID;
    }
}
