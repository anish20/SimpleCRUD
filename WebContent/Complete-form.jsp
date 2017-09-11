<%-- 
    Document   : index
    Created on : Aug 31, 2017, 11:24:22 PM
    Author     : ANISH
--%>

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
   <div class="form-page">
       <form action="PageController" method="post">
       <%
         String fn=request.getParameter("fn");
         String ln=request.getParameter("ln");
         String d=request.getParameter("db");
         String ad=request.getParameter("add");
         String gen=request.getParameter("gen");
         String Ql=request.getParameter("ql");
         String eml=request.getParameter("email");
         long cont_no=Long.parseLong(request.getParameter("contact"));
          %>
        
       <table class="table-lookup" style="border-collapse: collapse;padding-bottom:20px;">
       	<tr>
       		<td colspan="4"><h3>User filled complete form</h3></td>
       	</tr>
       	  <tr>
       	  	<td>First Name</td>
       	  	<td><input type="text" name="fname" value=" <%=fn %>" readonly="readonly"></td>
       	  	<td>Last Name</td>
       	  	<td><input type="text" name="lname" value=" <%=ln %>" readonly="readonly"></td>
       	  	</tr>
       	   
       	  	 <tr>
       	  	<td>Date of Birth</td>
       	  	<td><input type="text" name="dob" value=" <%=d %>" readonly="readonly"></td>
       	  	<td>Address</td>
       	  	<td><input type="text" name="add" value=" <%=ad %>" readonly="readonly"></td>
       	  	</tr>
       	  	<tr>
       	  	<td>Gender</td>
       	  	<td><input type="text" name="gender" value=" <%=gen %>" readonly="readonly"></td>
       	  	<td>Qualification</td>
       	  	<td><input type="text" name="qualifiaction" value=" <%=Ql %>" readonly="readonly"></td>
       	  	</tr>
       	  	<tr>
       	  	<td>Email ID</td>
       	  	<td><input type="text" name="email" value=" <%=eml%>" readonly="readonly"></td>
       	  	<td>Contact No</td>
       	  	<td><input type="text" name="cot" value="<%=cont_no%>" readonly="readonly"></td>
       	  	</tr>
       	  	<tr>
       	  	   
       	  	  <td colspan="4" align="right" style="width: 100px;"> <input type="checkbox" name="sr"  value="Are you Sure" style="height: 13px;"> Are you Sure <button name="btn" value="Insert">Insert Data</button>   <button name="btn" value="cancel">Cancel</button></td>
       	  	</tr>
       	   
       </table>
       
       </form>
       
   </div>
  
</div>
 <!-- footer content -->
 <%@include file="Shared/footer.jsp" %>
</div>

</body>
</html>