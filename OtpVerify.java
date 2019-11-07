package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

/**
 * Servlet implementation class OtpVerify
 */
@WebServlet("/OtpVerify")
public class OtpVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpVerify() {
        super();
        // TODO Auto-generated constructor stub
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String ans1,ans2,ans3;
	String cust_id,votp;

	public void init(ServletConfig config) throws ServletException {
		try {
			con = DbConnection.getConnection();

		} catch (Exception e1) {
			e1.printStackTrace();

		}

	}
	
/*	protected void hmm1(HttpServletRequest req,HttpServletResponse res)
	{
		
		try {
			
			cust_id = req.getParameter("c_id");
			votp = req.getParameter("otp");
			System.out.println("verify otp is = " + votp);
			System.out.println("1 cust_id " + cust_id);

			ps = con.prepareStatement("Select * from personale_info where customer_id='"+ cust_id + "'");
			rs = ps.executeQuery();

			String otp = null;

			if (rs.next()) 
			{
				otp = rs.getString("otpNo");
				if (otp.equals(votp)) 
				{
					HttpSession session = req.getSession();
					session.setAttribute("customer_Id", cust_id);

					System.out.println("otp is Correct");
					res.sendRedirect("sequrityAnswer1.jsp?otp=true");

				} 
				else 
				{
					ps = con.prepareStatement("update user_info set status='Block' where customer_id='"+cust_id+"'");
					System.out.println("ankita2");
					int result = ps.executeUpdate();
					if(result>0)
					{
						System.out.println("Your account is Block");
						res.sendRedirect("userLogin.jsp?Block=true");
						
					}


				}

			}

			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
	}
	*/
	
		
	
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{

try {
			
			cust_id = req.getParameter("c_id");
			votp = req.getParameter("otp");
			System.out.println("verify otp is = " + votp);
			System.out.println("1 cust_id " + cust_id);

			ps = con.prepareStatement("Select * from personale_info where customer_id='"+ cust_id + "'");
			rs = ps.executeQuery();

			String otp = null;

			if (rs.next()) 
			{
				otp = rs.getString("otpNo");
				if (otp.equals(votp)) 
				{
					HttpSession session = req.getSession();
					session.setAttribute("customer_Id", cust_id);

					System.out.println("otp is Correct");
					res.sendRedirect("sequrityAnswer1.jsp?otp=true");

				} 
				else 
				{
					ps = con.prepareStatement("update user_info set status='Block' where customer_id='"+cust_id+"'");
					System.out.println("ankita2");
					int result = ps.executeUpdate();
					if(result>0)
					{
						System.out.println("Your account is Block");
						res.sendRedirect("userLogin.jsp?Block=true");
						
					}


				}

			}

			
		} catch (Exception e) {
			// TODO: handle exception
		}
		try {

			ans1 = req.getParameter("ans1");
			ans2 = req.getParameter("ans2");
			ans3 = req.getParameter("ans3");
			
			cust_id = req.getParameter("c_id");
			
			HttpSession session=req.getSession();
			session.setAttribute("customer_id", cust_id);
			
			System.out.println("cust id is"+cust_id);
			
			
		
			
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
