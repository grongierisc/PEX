package com.intersystems.demo.pex;

import java.util.Random;

public class BusinessOperation extends com.intersystems.enslib.pex.BusinessOperation {
	
	Random rand = new Random();

	public void OnInit() throws Exception {

		return;
	}

	public void OnTearDown() throws Exception {

		return;
	}
	
	public Object OnMessage(Object request) throws Exception {
		
		Response response = new Response("Java's echo " + ((Request)request).requestString,rand.nextInt(100));

		LOGINFO("Java LOGINFO");


		return response;
	}

}