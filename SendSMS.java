package com.user;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;

public class SendSMS {
	public static void main(String[] args) throws UnsupportedEncodingException {
        
        // String PhoneNumber = "9960976529";
        // String msgC = "OTP for your CaRP is hshs77 Do not share with anyone.";
        // String myURL = "http://www.smswave.in/panel/sendsms.php";           
//        // System.out.println("\nOutput: \n" + callURL(myURL,msgC,PhoneNumber));
}

public static String callURL(String myURL,String msgC,String PhoneNumber) throws UnsupportedEncodingException {
        
        
        String msg= URLEncoder.encode(msgC, "ISO-8859-1");
       String user ="vinodotp";
       String password = "123123";
       String sender = "CAPTCH";
       
       
       
	System.out.println("Requeted URL:" + myURL);
            String RURL = myURL+"?PhoneNumber="+PhoneNumber+"&Text="+msg+"&user=vinodotp&password=123123&sender=CAPTCH";
            System.out.println("Requeted URL After:" + RURL);
            
	StringBuilder sb = new StringBuilder();
	URLConnection urlConn = null;
	InputStreamReader in = null;
	try {
		URL url = new URL(RURL);
		urlConn = url.openConnection();
		if (urlConn != null)
			urlConn.setReadTimeout(60 * 1000);
		if (urlConn != null && urlConn.getInputStream() != null) {
			in = new InputStreamReader(urlConn.getInputStream(),
					Charset.defaultCharset());
			BufferedReader bufferedReader = new BufferedReader(in);
			if (bufferedReader != null) {
				int cp;
				while ((cp = bufferedReader.read()) != -1) {
					sb.append((char) cp);
				}
				bufferedReader.close();
			}
		}
	in.close();
	} catch (Exception e) {
		throw new RuntimeException("Exception while calling URL:"+ myURL, e);
	} 

	return sb.toString();
}
}