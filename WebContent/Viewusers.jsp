<%-- 
    Document   : index
    Created on : Aug 31, 2017, 11:24:22 PM
    Author     : ANISH
--%>

<%@page import="java.sql.*"%>
<%@page import="DatabaseConnection.ConnectionDemo"%>
<%@page import="Bean.User"%>
<%@page import="DAO.UtilDao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="Styling/Myapp.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Crud Application</title>
</head>
<body>
<div class="wrapper">
 <!-- Header Content-->
 <%@include file="Shared/header.jsp" %>
 <div class="menu">
     <a href="Form-1.jsp"><img src="icons/icons8_Add_User_Male_32.png" class="im-size">Add User</a> |
      <a href="Viewusers.jsp"><img src="icons/icons8_View_More_32.png" class="im-size">View Users</a>
</div><hr>
<div class="content">
   <!-- Content page information -->
	
	<div class="view">
	<%!
	
	Connection con=null;
	%>
	
	 <%
	 
	 
		try {
			con=ConnectionDemo.SharedConnection();//open the connection
			String sql="select * from UserData";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			System.out.println("Select And Retrieve All Data:"+sql);
			%>
			<table  id="view-tb">
			<tr class="head">
			<th class="th">Form No</th>
			<th class="th">First Name</th>
			<th class="th">Last Name</th>
			<th class="th">DOB</th>
			<th class="th">Address</th>
			<th class="th">Gender</th>
			<th class="th">Qualification</th>
			<th class="th">Email ID</th>
			<th class="th">Contact No</th>
			<th class="th"> Status</th>
			<th class="th" colspan="10">Operation</th>
			</tr>
			
			
			<% 
			while(rs.next()) {
				User u=new User();
				u.setForn_no(rs.getInt(1));
				u.setFname(rs.getString(2));
				u.setLname(rs.getString(3));
				u.setDob(rs.getString(4));
				u.setAdd(rs.getString(5));
				u.setGender(rs.getString(6));
				u.setQualification(rs.getString(7));
				u.setEmail(rs.getString(8));
				u.setContact(rs.getLong(9));
				u.setStatus(rs.getString(10));
				%>
				<tr class="select">
				<td class="td"><%=u.getForn_no() %></td>
				<td class="td"><%=u.getFname() %></td>
				<td class="td"><%=u.getLname() %></td>
				<td class="td"><%=u.getDob() %></td>
				<td class="td"><%=u.getAdd() %></td>
				<td class="td"><%=u.getGender() %></td>
				<td class="td"><%=u.getQualification() %></td>
				<td class="td"><%=u.getEmail() %></td>
				<td class="td"><%=u.getContact() %></td>
				<td class="td" ><span style="color:green;" ><%=u.getStatus() %></span></td>
				<td class="td"><a href="InsertRowController" class="im-size" ><img src="icons/icons8_Add_User_Male_32.png" class="im-size">Add User</a></td>
				<td class="td"><a href="Update.jsp?id=<%=u.getForn_no() %>" class="im-size" ><img src="icons/icons8_Edit_32.png" class="im-size">Update</a></td>
				<td class="td"><a href="PageController?fn=<%=u.getForn_no() %>" class="im-size" ><button  name="btn1" value="delete" style="border: none;background: none;color:darkcyan;width: auto;cursor: pointer;"><img src="icons/icons8_Trash_32.png" class="im-size">Delete</button></a></td>
				</tr>
				<%} %>
				</table>
				<% 
				
			
		} catch (Exception e) {
			
		}
			// TODO: handle exception
	 %>
 	
	</div>  
  
</div>
 <!-- footer content -->
 <%@include file="Shared/footer.jsp" %>
</div>

</body>
</html>