package DAO;

import java.sql.*;
import java.util.ArrayList;

import Bean.User;
import DatabaseConnection.ConnectionDemo;

public class UtilDao {
	 
	public static Connection con=null;
	
	public static int insertUser(User u) {
		 Statement st=null;
		int i=0;
		String Status="Active";
		
		try {
			//Open the connection..
		   con=ConnectionDemo.SharedConnection();//connection opend..
		   String Qurey="insert into UserData (FName,Lname,DOB,Address,Gender,Qualification,Email_ID,Contact_No,Status) values('"+u.getFname()+"','"+u.getLname()+"','"+u.getDob()+"','"+u.getAdd()+"','"+u.getGender()+"','"+u.getQualification()+"','"+u.getEmail()+"','"+u.getContact()+"','"+Status+"')";
		   st=con.createStatement();
		   i=st.executeUpdate(Qurey);
		   if(i>0) {
			   System.out.println("Inserted.."+Qurey);
		   }else {
			   System.out.println("Not Inserted.");
		   }
			
		} catch (Exception e) {
			System.out.println("User manully Exception:"+e);
		}
		
		
		
		return i;
	}
	
	
	//Retrieve Users
	
	public static int updateUser(User u) {
	   Statement st=null;
		int i=0;
		try {
			con=ConnectionDemo.SharedConnection();//connection opend..
			String Query="UPDATE UserData SET FName='"+u.getFname()+"',LName='"+u.getLname()+"',DOB='"+u.getDob()+"',Address='"+u.getAdd()+"',Gender='"+u.getGender()+"',Qualification='"+u.getQualification()+"',Email_ID='"+u.getEmail()+"',Contact_No='"+u.getContact()+"' WHERE Form_No='"+u.getForn_no()+"'";
			st=con.createStatement(); 
			i=st.executeUpdate(Query);
			if(i>0) {
				System.out.println("Data Updated..."+Query);
			}else {
				System.out.println("Data not Updated...");
			}
		} catch (Exception e) {
			System.out.println("Sorry updation Exception"+e);
		}
		return i;
	}
	
	
	// Delete data by particular form no..
	
	public static int deleteByForm_No(User u) {
		Statement st=null;
		int i=0;
		try {
			con=ConnectionDemo.SharedConnection();//connection opend..
			String Query="delete from UserData where Form_No='"+u.getForn_no()+"'";
			st=con.createStatement();
			i=st.executeUpdate(Query);
			if(i>0) {
				System.out.println("Deleted data.."+Query);
			}else {
				System.out.println("Sorry not Deleted..");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}
	
	//insert new row.
	
	public static int insertNew_Row(User u) {
		int i=0;
		Statement st=null;
		
		try {
			con=ConnectionDemo.SharedConnection();
			String Query="insert into UserData (Status) values('"+u.getStatus()+"')";
			st=con.createStatement();
			i=st.executeUpdate(Query);//return int type execute Query..
			if(i>0) {
				System.out.println("Inserted new row..");
			}else {
				System.out.println("Sorry....");
			}
			
		    
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return i;
	}
	
	
}
