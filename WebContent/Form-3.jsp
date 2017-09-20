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
    <<a href="Form-1.jsp"><img src="icons/icons8_Add_User_Male_32.png" class="im-size">Add User</a> |
      <a href="Viewusers.jsp"><img src="icons/icons8_View_More_32.png" class="im-size">View Users</a>
</div><hr>
<div class="content">
   <!-- Content page information -->
   <div class="form-page">
       <form action="Form-4.jsp" method="post">
       <%
         String fn=request.getParameter("fn");
         String ln=request.getParameter("ln");
         String dob=request.getParameter("dob");
         String ad=request.getParameter("add");
         
        
       %>
       <input type="hidden" name="fn" value="<%=fn%>">
       <input type="hidden" name="ln" value="<%=ln%>">
       <input type="hidden" name="dob" value="<%=dob%>">
       <input type="hidden" name="add" value="<%=ad%>">
       
       <table class="table-lookup">
        <tr>
       	  	<td>Gender</td>
       	  	<td><input type="radio" name="gender" value="Male" required="required">Male
       	  		<input type="radio" name="gender" value="Female" required="required">Female
       	  	</td>
       	  
       	  </tr>
       	  <tr>
       	  	<td>Qualification</td>
       	  	<td><select name="ql" style="width:170px;">
       	  			<option>--select qualification--</option>
       	  			<option>High School</option>
       	  			<option>Intermediate</option>
       	  			<option>Graduate</option>
					<option>Post-Graduate</option>
       	  		</select>
       	  	</td>
       	  
       	  </tr>
       	  
       	  <tr>
       	  	
       	  	<td colspan="2" align="right"><button>Next &RightArrow;</button></td>
       	  
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