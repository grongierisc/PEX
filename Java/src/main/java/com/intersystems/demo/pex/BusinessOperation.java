package com.intersystems.demo.pex;

import java.util.Random;

public class BusinessOperation extends com.intersystems.enslib.pex.BusinessOperation {
	
	public void OnInit() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessOperation:OnInit() is called");
		return;
	}

	public void OnTearDown() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessOperation:OnTearDown() is called");
		return;
	}
	
	public Object OnMessage(Object request) throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessOperation:OnMessage() is called with " + ((Request)request).requestString);
		Response response = new Response("...demo.pex.BusinessOperation:OnMessage() echos " + ((Request)request).requestString);
		
		Random rand = new Random();
		response.responseInteger = rand.nextInt(100);
		LOGINFO(response.responseString);
		

		return response;
	}

}