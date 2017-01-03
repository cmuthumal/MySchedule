/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.Subject;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class SubjectDBAccess {

    private Connection connection = null;
    private Statement stm = null;

    public boolean addSubject(Subject subject) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "INSERT INTO subject VALUES('" + subject.getId() + "', '" + subject.getTitle() + "',  " + subject.getYear() + ");";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public boolean updateSubject(Subject subject) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "UPDATE subject SET title='" + subject.getTitle() + "', year=" + subject.getYear() + " WHERE id='" + subject.getId() + "';";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public boolean deleteSubject(String id) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "DELETE FROM subject WHERE id='" + id + "';";
        int res = stm.executeUpdate(sql);
        return res == 1;
    }

    public ArrayList<Subject> getAllSubjects() throws ClassNotFoundException, SQLException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT * FROM subject";
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<Subject> subjectList = new ArrayList<>();
        while (resultSet.next()) {
            Subject subject = new Subject(resultSet.getString("id"), resultSet.getString("title"), resultSet.getInt("year"));
            subjectList.add(subject);
        }
        return subjectList;
    }

    public ArrayList<Subject> searchSubjects(String key, String type) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT * FROM subject WHERE " + type + " LIKE '" + key + "%';";
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<Subject> subjectList = new ArrayList<>();
        while (resultSet.next()) {
            Subject subject = new Subject(resultSet.getString("id"), resultSet.getString("title"), resultSet.getInt("year"));
            subjectList.add(subject);
        }
        return subjectList;
    }

    public ArrayList<String> getSubjectCodes() throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT id FROM subject;";
        ResultSet resultSet = stm.executeQuery(sql);

        ArrayList<String> subjectNameList = new ArrayList<>();
        while (resultSet.next()) {
            subjectNameList.add(resultSet.getString("id"));
        }
        return subjectNameList;
    }

    public Subject getSubjectByCode(String code) throws SQLException, ClassNotFoundException {
        connection = DBConnection.getConnection();
        stm = connection.createStatement();

        String sql = "SELECT * FROM subject WHERE id='" + code + "';";
        ResultSet resultSet = stm.executeQuery(sql);

        Subject subject = null;
        while (resultSet.next()) {
            subject = new Subject(resultSet.getString("id"), resultSet.getString("title"), resultSet.getInt("year"));
        }
        return subject;
    }
}
