<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div id="container">
  <div id="header"> <a href="">IN-TRAIN</a> </div>

		  <div class="navbar">
		  <a href="">Home</a>
		  <div class="dropdown">
		    <button class="dropbtn">Services
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		      <a href="rpfcomplaint.jsp">RPF Complaint</a>
		      <a href="foodorder.jsp">Food Order</a>
		      <a href="cleaner.jsp">Cleaner Request</a>
		    </div>
		  </div>
		  <a href="">Contact Us</a>
		  <a href="">About Us</a>
		</div>
  <div id="sidebar">
    <h1>Welcome traveller from there you can request for cleaning</h1>
  </div>
  <div id="page" class="container">
		<div class="title">
			<form action="contectuscheck" method="post">
			<table align="center">
				<tr>
				<td colspan="2"><h1>contectus</h1></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="c_name"></td>
				</tr>
				<tr>
					<td>Mobile:</td>
					<td><input type="tel" name="c_mobile"></td>
				</tr>
				<tr>
					<td>Message:</td>
					<td><textarea name="message"></textarea></td>
				</tr>
				<tr>
				<td colspan="2" align="center"><input type="submit" value="Submit"></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
  <div id="footer"> &copy;2018 IN-TRAIN &nbsp;<span class="separator">|</span>&nbsp; Design by Krupal </div>
</div>
</body>
</html>
