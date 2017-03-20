package com.facebookLogin.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.facebookLogin.connection.FacebookConnection;
import com.facebookLogin.graph.FacebookGraph;
import com.facebookLogin.model.UserInfo;



public class FacebookLoginController extends HttpServlet{
	 
	private static final long serialVersionUID = 1L;
	private String responseCode="";
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException{
		responseCode=req.getParameter("code");
		if (responseCode == null || responseCode.equals("")) {
			throw new RuntimeException(
					"ERROR: Didn't get code parameter in callback.");
		}
		
		FacebookConnection fbConnection = new FacebookConnection();
		String accessToken = fbConnection.getAccessToken(responseCode);
		UserInfo user=new UserInfo();
		FacebookGraph fbGraph = new FacebookGraph(accessToken);
		String graph = fbGraph.getFBGraph();
		Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
		ServletOutputStream out = res.getOutputStream();
		user.setUserName(fbProfileData.get("name"));
		
		/*
		out.println("<h1>Facebook Login using Java</h1>");
		out.println("<h2>Application Main Menu</h2>");
		out.println("<div>Welcome "+fbProfileData.get("name"));
		out.println("<div>Your Email: "+fbProfileData.get("email"));
		out.println("<div>You are "+fbProfileData.get("gender"));	*/
	}

	
}
