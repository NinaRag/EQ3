package art1;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.Statement;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.math.BigDecimal;
import javax.servlet.RequestDispatcher;



public class mentor{
	public String name;
	public String emailId;
	String place;
	String contact;
	String qualification;
	String affiliation;
	String eq;
	String about;
	String goal;
	String motivation;
	String status;
	//public String mentorName;
	
	
	 public mentor(String name, String maily,String place,String contact,String qualifica,String aff,String eq,String about,String goal,String motive, String status){
		this.name = name;
		this.emailId = maily;
		this.place = place;
		this.contact = contact;
		this.qualification = qualifica;
		this.affiliation = aff;
		this.eq = eq;
		this.about= about;
		this.goal = goal;
		this.motivation = motive;
		this.status = status;
	
		
		
		//this.degree = deg;
		//this.year = yr;
		//this.campus = camp;
		//this.mentorName=mentorName;
	}
	 public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getemailId() {
        return emailId;
    }
    public void setemailId(String emailId) {
        this.emailId = emailId;
    }
	 public String getplace() {
        return place;
    }
    public void setplace(String place) {
        this.place = place;
    }
    public String getcontact() {
        return contact;
    }
    public void setcontact(String contact) {
        this.contact = contact;
    }
    public String getqualification() {
        return qualification;
    }
    public void setquaification(String qualification) {
        this.qualification = qualification;
    }
   
    public String getaffiliation() {
        return affiliation;
    }
    public void setaffiliation(String affiliation) {
        this.affiliation = affiliation;
    }
	public String getEQ() {
        return eq;
    }
    public void setEQ(String eq) {
        this.eq = eq;
    }
	public String getAbout() {
        return about;
    }
    public void setAbout(String about) {
        this.about = about;
    }
	public String getGoal() {
        return goal;
    }
    public void setGoal(String goal) {
        this.goal = goal;
    }
	public String getMotivation() {
        return motivation;
    }
    public void setMotivation(String motivation) {
        this.motivation = motivation;
    }
	public String getstatus() {
        return status;
    }
	public void setstatus(String status) {
        this.status = status;
    }
    public String toString(){
        return "[" + name + "," + emailId + "," +  place + "," + contact + "," +  qualification + "," + affiliation + ","+ eq +","+ about +","+ goal + ","+ motivation + "," + status + "]";
    }
  }