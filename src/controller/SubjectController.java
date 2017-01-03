/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.SubjectDBAccess;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Subject;

/**
 *
 * @author CM <2222cm@gmail.com>
 */
public class SubjectController {

    private SubjectDBAccess subjectDBAccess;

    public SubjectController() {
        subjectDBAccess = new SubjectDBAccess();
    }

    public boolean addSubject(Subject subject) throws SQLException, ClassNotFoundException {
        return subjectDBAccess.addSubject(subject);
    }

    public boolean updateSubject(Subject subject) throws SQLException, ClassNotFoundException {
        return subjectDBAccess.updateSubject(subject);
    }

    public boolean deleteSubject(String id) throws SQLException, ClassNotFoundException {
        return subjectDBAccess.deleteSubject(id);
    }

    public ArrayList<Subject> getAllSubjects() throws ClassNotFoundException, SQLException {
        return subjectDBAccess.getAllSubjects();
    }

    public ArrayList<Subject> searchSubjects(String key, String type) throws SQLException, ClassNotFoundException {
        return subjectDBAccess.searchSubjects(key, type);
    }

    public ArrayList<String> getSubjectCodes() throws SQLException, ClassNotFoundException {
        return subjectDBAccess.getSubjectCodes();
    }

    public Subject getSubjectByCode(String code) throws SQLException, ClassNotFoundException {
        return subjectDBAccess.getSubjectByCode(code);
    }
}
