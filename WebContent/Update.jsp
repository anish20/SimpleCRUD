<%-- 
    Document   : index
    Created on : Aug 31, 2017, 11:24:22 PM
    Author     : ANISH
--%>

<%@page import="DatabaseConnection.ConnectionDemo"%>
<%@page import="java.sql.*"%>
<%@page import="Bean.User"%>
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
   <%
     User u=new User();
	 u.setForn_no(Integer.parseInt(request.getParameter("id")));
   	 
     try{
    	 Connection con=ConnectionDemo.SharedConnection();//open Connection
    	 String Query="select * from UserData where Form_No='"+u.getForn_no()+"'";
    	 Statement st=con.createStatement();
    	 ResultSet rs=st.executeQuery(Query);
    	 if(rs.next()){
    		 
    	%>
   <div class="form-page">
    
       <form action="PageController" method="post">
        <input type="hidden" name="fn" value="<%=u.getForn_no()%>">
       <table class="table-lookup" style="border-collapse: collapse;padding-bottom:20px;">
       	<tr>
       		<td colspan="4"><h3>User Updation form</h3></td>
       	</tr>
       	  <tr>
       	  	<td>First Name</td>
       	  	<td><input type="text" name="fname" value="<%=rs.getString(2) %>" ></td>
       	  	<td>Last Name</td>
       	  	<td><input type="text" name="lname" value="<%=rs.getString(3) %> " ></td>
       	  	</tr>
       	  	<tr>
       	  	<td>Date of Birth</td>
       	  	<td><input type="date" name="dob" value=" <%=rs.getString(4) %>" ></td>
       	  	<td>Address</td>
       	  	<td><input type="text" name="add" value="<%=rs.getString(5) %>"></td>
       	  	</tr>
       	  	<tr>
       	  	<td>Gender</td>
       	  	<td>
       	  	<select name="gender" >
       	  			<option>--select gender--</option>
       	  			<option> Male </option>
       	  			<option> Female </option>
       	  			       	  		</select>
       	  	</td>
       	  	<td>Qualification</td>
       	  	<td><select name="qlf" >
       	  			<option>--select--</option>
       	  			<option>High School</option>
       	  			<option>Intermediate</option>
       	  			<option>Graduate</option>
					<option>Post-Graduate</option>
       	  		</select></td>
       	  	</tr>
       	  	<tr>
       	  	<td>Email ID</td>
       	  	<td><input type="text" name="email" value=" <%=rs.getString(8)%>" ></td>
       	  	<td>Contact No</td>
       	  	<td><input type="text" name="cot" value="<%=rs.getLong(9)%>" maxlength="10"></td>
       	  	</tr>
       	  	<tr>
       	  	   
       	  	  <td colspan="4" align="right" style="width: 100px;"><button name="btn" value="Update">Update Data</button>  </td>
       	  	</tr>
       	   <%} %> 
       </table>
      
       </form>
       
   </div>
   <%  
     }catch(Exception e){
    	 System.out.print(e);
     }
   
   %> 
</div>
 <!-- footer content -->
 <%@include file="Shared/footer.jsp" %>
</div>

</body>
</html>