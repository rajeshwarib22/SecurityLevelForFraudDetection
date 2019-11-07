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
            String cust_id = null;

            if (session.getAttribute("customer_Id") != null) 
            {
                cust_id = (String) session.getAttribute("customer_Id");
                System.out.println("Session id is "+cust_id);

        %>
        

<%
      
        if(request.getParameter("status")!=null){
        out.println("<script>alert('Successfully Save!')</script>");
        }
%>
	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">
				<%@ include file='logo.jsp'%>
			</div>
			<div id="menu-wrapper">
				<ul id="menu">
					<li><a href="index.jsp"><span>Home</span></a></li>

					<li><a href="userLogin.jsp"><span>User Login</span></a></li>
					<li class="current_page_item"><a href="userReg.jsp"><span>Registration</span></a></li>
					<li><a href="adminLogin.jsp"><span>Admin</span></a></li>

					

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
						<br /> <br /> <strong><font size="6">Secured
								Information</font> </strong> <br /> <br />
								
							
						<form action="sinfo" method="post">
							<center>
								<table>
									<tr align="center">
									<input type="hidden" name="c_id" id="c_id" value="<%=cust_id%>"/>
										<td><strong><font size="4"> 1. </font></strong></td>
										<td><select  name="que1" id="que1" style="width: 100%; height: 35px;">
												<option value="What is your UID number?">What is your UID number?</option>
												<option value="What is your PAN Card Number?">What is your PAN Card Number?</option>
												<option value="What is your Votter ID number?">What is your Votter ID number?</option>
												<option value="What is your Votter ID number?">What is your Driving Licence number?</option>
												<option value="What is your Votter ID number?">What is your Passport Number?</option>
 
										</select></td>
										<td></td>

										<td><font size="4"> Answer </font></td>


										<td><input type="password" name="ans1" id="ans2"
											style="width: 150px; height: 25px;"></input>&nbsp;&nbsp;&nbsp;</td>

									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr align="center">
										<td><strong><font size="4"> 2. </font></strong></td>
										<td><select  name="que2" id="que2" style="width: 100%; height: 35px;">
												<option value="What is your First Mobile Number?">What is your First Mobile Number?</option>
												<option value="What is your First Mobile Handset?">What is your First Mobile Handset?</option>
												<option value="Whoose your First Best Friend?">What is First Laptop Series Number?</option>
												<option value="Whoose your First Best Friend?">What is First Laptop Company Name?</option>
												<option value="Whoose your First Best Friend?">What is Favourate Native?</option>
												
										</select></td>
										<td></td>
										<td><font size="4"> Answer </font></td>


										<td><input type="password" name="ans2" id="ans2"
											style="width: 150px; height: 25px;"></input>&nbsp;&nbsp;&nbsp;</td>

									</tr>


									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr align="center">
										<td><strong><font size="4"> 3. </font></strong></td>
										<td><select name="que3" id="que3" style="width: 100%; height: 35px;">
												<option value="What is your Date of Birth?">What is your Date of Birth?</option>
												<option value="What is your Mother Date of Birth?">What is your Mother Date of Birth?</option>
												<option value="What is your Father Date of Birth?">What is your Father Date of Birth?</option>
												<option value="What is your Father Date of Birth?">What is your GrandFather Date of Birth?</option>
												<option value="What is your Father Date of Birth?">What is your GrandMother Date of Birth?</option>
										</select></td>
										<td></td>
										<td><font size="4"> Answer </font></td>


										<td><input type="password" name="ans3" id="ans3" style="width: 150px; height: 25px;"></input>&nbsp;&nbsp;&nbsp;</td>

									</tr>

									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr align="right">
										<td></td>
										<td><input type="submit" value="save & Continue" /></td>
										<td></td>

										<td></td>

										<td align="left"><input type="reset" value="Reset" /></td>
									</tr>

								</table>
							</center>



</form>



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
            } else {
//               System.out.println("Else block");
            	response.sendRedirect("userReg.jsp");
            }
        %>

</html>
