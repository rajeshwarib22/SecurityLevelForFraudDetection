<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script>
	function AllowAlphabet() {
		if (!ureg.fname.value.match(/^[a-zA-Z]+$/)
				&& ureg.fname.value != "") {
			ureg.fname.value = "";
			ureg.fname.focus();
			alert("Please Enter only alphabet in text");
		}
		if (!ureg.mname.value.match(/^[a-zA-Z]+$/) && ureg.mname.value != "") {
			ureg.city.value = "";
			ureg.city.focus();
			alert("Please Enter only alphabets in text");
		}
		if (!ureg.ans.lname.match(/^[a-zA-Z]+$/) && ureg.lname.value != "") {
			ureg.ans.value = "";
			ureg.ans.focus();
			alert("Please Enter only alphabets in text");
		}

	}
</script>

<script language="Javascript">
	function validation() {
		
		var email = document.ureg.email.value;

		if (email == 0) 
		{
			alert("Enter Valid mail id");
			document.ureg.email.focus();
			return false;
		}
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) 
		{
		} else {
			alert("Enter valid mail id");
			document.ureg.email.focus();
			return false;
		}

	}
</script>


<script type="text/javascript">
	function ValidateMobNumber(txtMobId) {
		var fld = document.getElementById(txtMobId);

		if (fld.value == "") {
			alert("You didn't enter a phone number.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (isNaN(fld.value)) {
			alert("The phone number contains illegal characters.");
			fld.value = "";
			fld.focus();
			return false;
		} else if (!(fld.value.length == 10)) {
			alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
			fld.value = "";
			fld.focus();
			return false;
		}

	}
</script>








</head>
<body>
	<%
		if (request.getParameter("email") != null) {
			out.println("<script>alert('Email id is Already Exist!')</script>");
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
						<br /> <br /> <strong><font size="6">Personal
								Information</font> </strong> <br /> <br />
						<form name="ureg" action="pinfo" method="post"
							onsubmit="return validation()">
							<center>
								<table>
									<tr>
										<td><strong><font size="4">First Name</font></strong></td>
										<td><input type="text" name="fname" id="fname" onkeyup="AllowAlphabet()" required></input>&nbsp;&nbsp;&nbsp;</td>
										<td><strong><font size="4">Middle Name</font></strong></td>
										<td><input type="text" name="mname" id="mname" onkeyup="AllowAlphabet()" required></input>&nbsp;&nbsp;&nbsp;</td>
										<td><strong><font size="4">Last Name</font></strong></td>
										<td><input type="text" name="lname" id="lname" onkeyup="AllowAlphabet()" required></input>&nbsp;&nbsp;&nbsp;</td>
									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>


									<tr>
										<td><strong><font size="4">Date of Birth</font></strong></td>
										<td><input type="text" name="dob" id="dob" required></input></td>
										<td><strong><font size="4">Gender</font></strong></td>
										<td>&nbsp;<font size="3">Male</font>&nbsp;<input
											type="radio" name="gender" id="gender" value="male"></input>
											&nbsp;<font size="3">Female</font>&nbsp;<input type="radio"
											name="gender" id="gender" value="female"></input></td>

									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>



									<tr>

									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>



									<tr>
										<td><strong><font size="4">Address</font></strong></td>
										<td><input type="text" name="address" id="address"
											onkeyup="AllowAlphabet()" required></input></td>
										<td><strong><font size="4">City</font></strong></td>
										<td><input type="text" name="city" id="city"
											 required></input></td>
									</tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>
									<tr></tr>


									<tr>
										<td><strong><font size="4">Email Id</font></strong></td>
										<td><input type="text" name="email" id="email" required></input></td>
										<td><strong><font size="4">Mobile no</font></strong></td>
										<td><input type="text" name="mobile" id="txtMB"
											onblur="return ValidateMobNumber('txtMB')" required></input></td>
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
									<tr>
										<td></td>
										
										<td><input type="submit" value="save & Continue" style="width: 140px;height: 35px;"/></td>
										<td></td>
										<td><input type="reset" value="Reset" style="width: 140px;height: 35px;"/></td>
																				<td></td>
									</tr>

								</table>
							</center>







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
</html>
