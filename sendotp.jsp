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

		if (session.getAttribute("customer_id") != null) {
			cust_id = (String) session.getAttribute("customer_id");
			System.out.println("sq1 Session id is " + cust_id);
	%>

	<div id="wrapper">
		<div id="header-wrapper">
			<div id="header">
				<%@ include file='logo.jsp'%>
			</div>
			<div id="menu-wrapper">
				<ul id="menu">
					<li><a  class="current_page_item" href="uHome.jsp"><span>Home</span></a></li>
					<li><a href="userHome.jsp"><span>Purchase</span></a></li>
					<li><a href="#"><span>Logout</span></a></li>
					
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
						<br /> <br /> <strong><font size="6">Verify OTP</font> </strong> <br /> <br />





						<%
							Connection con = DbConnection.getConnection();
							//String Userid = (String) session.getAttribute("username");
							//	System.out.println("User id Is " + Userid);
							Statement st = con.createStatement();
							System.out.println("customer id ="+cust_id);
							ResultSet rs = st
									.executeQuery("select * from personale_info where customer_Id='"+cust_id+"'");
							String mobile;
							mobile = null;
							while (rs.next()) {

								mobile = rs.getString("mobile");
								

								String custmr_id = rs.getString("customer_id");

								System.out.println("Customer id is" + custmr_id);
								System.out.println("mobile no is" + mobile);
								
							}
						%>

						<form action="OtpVerify" method="post">
							<center>
								<table>
									<tr>

										<td><font size="4"><strong>1</strong></font></td>
										
										<td><input type="hidden" name="c_id" id="c_id"
											value="<%=cust_id%>" /></td>
										<td><font size="4"><strong>Enter Otp</strong></font></td>
										<td><input type="password" name="otp" id="otp"
											style="width: 200px; height: 30px" /></td>
										<td><input type="submit" value="verify" /></td>


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