package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;
import com.user.GeneratOtp;
import com.user.SendSMS;

/**
 * Servlet implementation class OtpSend
 */
@WebServlet("/OtpSend")
public class OtpSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpSend() {
        super();
        // TODO Auto-generated constructor stub
    }
    Connection con ;
	PreparedStatement ps;
	ResultSet rs;
	String email;
	

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();  
        String cust_id,mobile;
        try {
        	Connection con= com.util.DbConnection.getConnection();
            Statement smt=con.createStatement();
        	
        	 cust_id=request.getParameter("cust_id");
        	//String mno=request.getParameter("mno");
        	
        	System.out.println("customer id is ="+cust_id);
        	 rs=smt.executeQuery("select mobile,customer_id  from personale_info where customer_id='"+cust_id+"'");
        	 if(rs.next())
        	 {
        	  mobile=rs.getString("mobile");
        	  cust_id=rs.getString("customer_id");
        	  
		System.out.println("User reg  mobile no is ="+mobile);
		
		java.util.Date dategot = new java.util.Date();

	    Date currentDatetime = new Date(System.currentTimeMillis());
	        java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	        java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
	    
	        

	          GeneratOtp RT = new GeneratOtp();
	          String RandNo = RT.generateRandomString();
	          ResultSet rt=smt.executeQuery("select * from personale_info where customer_id='"+cust_id+"' ");
	          if(rt.next()){
	          
	          String OTP_date =  "";
	          System.out.println("Random no is ="+RandNo);
	          System.out.println("timestamp no is ="+timestamp);
	          
	           String query = "UPDATE personale_info SET otpNo = '"+RandNo+"',otpdate = '"+timestamp+"' WHERE customer_id ='"+cust_id+"'";
	          int n= smt.executeUpdate(query);
	           String msgC="OTP for your CaRP is "+RandNo +" Do not share with anyone.";
	           String user ="vinodotp";
	           String password = "123123";
	           String sender = "CAPTCH";
	           String PhoneNumber = mobile;
	           if(n>0){
	               
	               
	             String myURL = "http://www.smswave.in/panel/sendsms.php";
	               
	               SendSMS sSMS = new SendSMS();
	               sSMS.callURL(myURL, msgC, PhoneNumber);
	               System.out.println(" otp has been send");
	             
	           }else{
	           System.out.println("Not Updated");
	           }
        	 }
			
           
           
          rs=smt.executeQuery("select mobile   from personale_info where customer_id='"+cust_id+"'");
          System.out.println("The result set is="+rs);
          if(rs.next()){
              HttpSession email=request.getSession(true);
                    email.setAttribute("cust_id", cust_id);
                    System.out.println("Hello");
                    
              response.sendRedirect("sendotp.jsp?"+cust_id);
          }
          else{
              out.println("Mobile number not registred with this usename...");
          }
          
        } }
        catch(Exception e){
            out.println(e);
        }
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
