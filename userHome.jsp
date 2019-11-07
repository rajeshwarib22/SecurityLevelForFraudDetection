<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN"
	dir="ltr">
<head profile="http://gmpg.org/xfn/11">

<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><%@ include file='title.jsp'%></title>
	<link href="http://fonts.googleapis.com/css?family=Abel|Arvo"
		rel="stylesheet" type="text/css" />
	<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript"
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="jquery.dropotron-1.0.js"></script>
	<script type="text/javascript" src="jquery.slidertron-1.0.js"></script>
</head>

<body>
	<%
		if (request.getParameter("status") != null) {
			out.println("<script>alert('Login Successfully!')</script>");
		}
	%>
	<%
		if (request.getParameter("Done") != null) {
			out.println("<script>alert('Your Transaction is Succesfully!')</script>");
		}
	%>
	<%
		if (request.getParameter("Block") != null) {
			out.println("<script>alert('Your Account is Block!')</script>");
		}
	%>

	
	<%
	String cust_id=(String)session.getAttribute("customer_id");
	if(cust_id!=null)
	{
	System.out.println("cust id is"+cust_id);
	
	
	%>

	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">
				<%@ include file='logo.jsp'%>
			</div>
			<div id="menu-wrapper">
				<ul id="menu">
					<li><a href="uHome.jsp"><span>Home</span></a></li>

					<li class="current_page_item"><a href="userHome.jsp"><span>Purchase</span></a></li>
					<li><a href="userlog"><span>Logout</span></a></li>
					

				</ul>

				<script type="text/javascript">
					$('#menu').dropotron();
				</script>
				<!-- end #menu -->
				<div id="banner">
					<div class="contentbg">

						<div class="post">

							<h2 class="title"></h2>
						</div>
						<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />

						<!-- <form action="userpur" method="post"> -->
						<form action="OtpSend" method="post">
						<input type="submit" name="one" value="Add Card" />
							<table align="center">


								<tr>

									<td><img src="images/q1.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/q2.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/q3.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/q4.jpg" alt="aa" width="50%"
										height="50%" /></td>
								</tr>
								<tr>
									<td><font size="3">Price: 500 $</font></td>
									<td><font size="3">Price: 1000 $</font></td>
									<td><font size="3">Price: 2000 $</font></td>
									<td><font size="3">Price: 2000 $</font></td>
									<td><input type="hidden" value="<%=cust_id %>"
										name="cust_id" id="cust_id" /></td>
								</tr>
									
								
								<tr>
									<td><input type="checkbox" name="ch1" value="500" /></td>
									<td><input type="checkbox" name="ch2" value="1000" /></td>
									<td><input type="checkbox" name="ch3" value="2000" /></td>
									<td><input type="checkbox" name="ch4" value="2000" /></td>

									

								</tr>
								
								<tr>

									<td><img src="images/img1.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/img2.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/img3.jpg" alt="aa" width="50%"
										height="50%" /></td>
									<td><img src="images/img4.jpg" alt="aa" width="50%"
										height="50%" /></td>
								</tr>
								<tr>
									<td><font size="3">Price: 200 $</font></td>
									<td><font size="3">Price: 56734 $</font></td>
									<td><font size="3">Price: 4350 $</font></td>
									<td><font size="3">Price: 3400 $</font></td>
									<td><input type="hidden" value="<%=cust_id %>"
										name="cust_id" id="cust_id" /></td>
								</tr>
									
								
								<tr>
									<td><input type="checkbox" name="ch1" value="500" /></td>
									<td><input type="checkbox" name="ch2" value="1000" /></td>
									<td><input type="checkbox" name="ch3" value="2000" /></td>
									<td><input type="checkbox" name="ch4" value="2000" /></td>

									

								</tr>

								<tr>



								</tr>
								
							</table>
						</form>




					</div>


					<p></p>




					<div style="clear: both;">&nbsp;</div>
				</div>

			</div>
		</div>
	</div>
	<!-- end #header -->
	<!--<div id="page">-->
	<div id="content"></div>

	<!-- end #sidebar -->
	<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
	<!--</div>-->
	<%@ include file='footer.jsp'%>
	<!-- end #footer -->
</body>
<%
	}
	else
	{
		System.out.println("else block");
		response.sendRedirect("userLogin.jsp");
	}
%>
</html>