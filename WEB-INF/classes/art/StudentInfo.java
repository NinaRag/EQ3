package art1;
import art.articlesPublished;
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
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;



public class StudentInfo{
	String userName;
	String emailId;
	String degree;
	String year;
	String campus;
	ArrayList<String> ideas = new ArrayList<>();
	ArrayList<articlesPublished> articles = new ArrayList<>();
	int activityScore;
	int selfEsteemScore;
	
	 StudentInfo(String name, String maily,String deg,String yr,String camp,ArrayList<String> idea,ArrayList<articlesPublished> article,int activity,int selfEsteem){
		this.userName = name;
		this.emailId = maily;
		this.degree = deg;
		this.year = yr;
		this.campus = camp;
		this.ideas = idea;
		this.articles = article;
		this.activityScore = activity;
		this.selfEsteemScore = selfEsteem;
	}
	 public String getuserName() {
        return userName;
    }
    public void setuserName(String userName) {
        this.userName = userName;
    }
    public String getemailId() {
        return emailId;
    }
    public void setemailId(String emailId) {
        this.emailId = emailId;
    }
	 public String getdegree() {
        return degree;
    }
    public void setdegree(String degree) {
        this.degree = degree;
    }
    public String getyear() {
        return year;
    }
    public void setyear(String year) {
        this.year = year;
    }
    public String getcampus() {
        return campus;
    }
    public void setcampus(String campus) {
        this.campus = campus;
    }
    ArrayList<String> getideas() {
        return ideas;
    }
    public void setideas(ArrayList<String> ideas) {
        this.ideas = ideas;
    }
	ArrayList<articlesPublished> getarticles() {
        return articles;
    }
    public void setarticles(ArrayList<articlesPublished> articles) {
        this.articles = articles;
    }
    public int getactivityScore() {
        return activityScore;
    }
    public void setactivityScore(int activityScore) {
        this.activityScore = activityScore;
    }
	public int getselfEsteemScore() {
        return selfEsteemScore;
    }
    public void setselfEsteemScore(int selfEsteemScore) {
        this.selfEsteemScore = selfEsteemScore;
    }
    
    public String toString(){
        return "[" + userName + "," + emailId + "," +  degree + "," +  year + "," +  campus + "," +  ideas + "," +  articles + "," +  activityScore + "," +  selfEsteemScore + "]";
    }
  }
