<%@page import="java.awt.geom.QuadCurve2D"%>
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

		if (session.getAttribute("customer_Id") != null) {
			cust_id = (String) session.getAttribute("customer_Id");
			System.out.println("Session id is " + cust_id);
	%>


	<%
		if (request.getParameter("status") != null) {
				out.println("<script>alert('Successfully Save!')</script>");
			}
	%>
	
		<%
		if (request.getParameter("status1") != null) {
				out.println("<script>alert('Password and Confirm Password are Different!')</script>");
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
						
						<%
						System.out.print("cust id is "+cust_id);
						Connection con=DbConnection.getConnection();
						ResultSet rs1;
						PreparedStatement ps1;
						String uname="";
						String query="Select p.c_date,b.creaditCard_no,p.fname from bank_info b,personale_info p,sequrity_que s where b.customer_Id='"+cust_id+"' && s.customer_Id='"+cust_id+"' && p.customer_Id='"+cust_id+"'";						
						ps1 =con.prepareStatement(query);
						rs1 = ps1.executeQuery();
						
						String new_pcdate,new_bcard_no,new_pfname;
						
						if(rs1.next())
				          {  
							  String p_c_date=rs1.getString("p.c_date");
				        	  
							  String b_card_no=rs1.getString("b.creaditCard_no");
				        	  
				        	  String p_fname=rs1.getString("p.fname");
				        	  
				        	  new_pcdate=p_c_date.substring(0, 4);
				        	  
				        	  new_bcard_no=b_card_no.substring(6,9);
				        	  
				        	  //new_pfname=p_fname.substring(0, 1);
				        	  
				        	  
				        	  System.out.println(" c date  "+p_c_date);
				        	  
				        	  System.out.println(" card number "+b_card_no);
				        	  
				        	  System.out.println(" name "+p_fname);
				        	  
				        	  System.out.println(" nc date "+new_pcdate);
				        	  
				        	  System.out.println(" cc no "+new_bcard_no);
				        	  
				        	  //System.out.println(" 22 "+new_pfname);
				        	  
				        	   String f=new_bcard_no.concat(p_fname);
				        	  
				        	   uname=f.concat(new_pcdate);
				        	   System.out.println("username is "+uname);
				        	   
				        	  
				        	  
				          }
						else
						{
							System.out.println("No Value Get");
						}
						
						%>
						
						
						
						
						
						<br /> <br /> <strong><font size="6">Password
								Information</font> </strong> <br /> <br />
						<form action="pwdinfo" method="post">
							<center>
								<table>
									<tr align="center">
										<td><input type="hidden" name="c_id" id="c_id"value="<%=cust_id%>" /></td>
										<td><font size="5">Username</font></td>
										<td></td>
										<td><input type="text" name="name" id="name" value="<%=uname %>" style="width: 150px; height: 25px;" disabled="disabled"></input>&nbsp;&nbsp;&nbsp;</td>
										<input type="hidden" name="u_name" id="u_name" value="<%=uname %>" style="width: 150px; height: 25px;"/>
									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr align="center">
										<td></td>
										<td><font size="5">Password</font></td>
										<td></td>
										<td><input type="password" name="password" id="password"
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
									<tr align="center">
										<td></td>

										<td><font size="5">Confirm Password</font></td>
										<td></td>
										<td><input type="password" name="c_password" id="c_password"
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

									<td></td>

									<td align="right"><input type="submit"
										value="save & Continue" /></td>
									<td></td>
									<td><input type="reset" value="Reset" /></td>
									<tr></tr>
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
		//System.out.println("Else block");
		response.sendRedirect("userReg.jsp");
	}
%>

</html>