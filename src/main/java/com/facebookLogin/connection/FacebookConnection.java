package com.facebookLogin.connection;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class FacebookConnection {
	
	private static final String FACEBOOK_APP_ID="101168540412887";
	private static final String FACEBOOK_APP_SECRET="1eb14f2380fc792125d56605f0b0c90f";
	private static final String REDIRECT_URI="http://localhost:8080/FacebookLoginApp/oauth";
	private static String accessToken="";
	
	public String getFacebookLoginUrl() throws Exception{
		return "http://www.facebook.com/dialog/oauth?" + "client_id="
				+ FacebookConnection.FACEBOOK_APP_ID + "&redirect_uri="
				+ URLEncoder.encode(FacebookConnection.REDIRECT_URI, "UTF-8")
				+ "&scope=email";
		 }
	
	
	public String getAccessToken(String code){
		if ("".equals(accessToken)) {
			URL fbGraphURL;
			try {
				fbGraphURL = new URL(getFBGraphUrl(code));
			} catch (MalformedURLException e) {
				e.printStackTrace();
				throw new RuntimeException("Invalid code received " + e);
			}
			URLConnection fbConnection;
			StringBuffer b = null;
			try {
				fbConnection = fbGraphURL.openConnection();
				BufferedReader in;
				in = new BufferedReader(new InputStreamReader(
						fbConnection.getInputStream()));
				String inputLine;
				b = new StringBuffer();
				while ((inputLine = in.readLine()) != null)
					b.append(inputLine + "\n");
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException("Unable to connect with Facebook "
						+ e);
			}

			accessToken = b.toString();
			if (accessToken.startsWith("{")) {
				throw new RuntimeException("ERROR: Access Token Invalid: "
						+ accessToken);
			}
		}
		return accessToken;
		
	}
	public String getFBGraphUrl(String code) {
		String fbGraphUrl = "";
		try {
			fbGraphUrl = "https://graph.facebook.com/oauth/access_token?"
					+ "client_id=" + FacebookConnection.FACEBOOK_APP_ID + "&redirect_uri="
					+ URLEncoder.encode(FacebookConnection.REDIRECT_URI, "UTF-8")
					+ "&client_secret=" + FACEBOOK_APP_SECRET + "&code=" + code;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return fbGraphUrl;
	}
}
