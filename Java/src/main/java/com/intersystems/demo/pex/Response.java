package com.intersystems.demo.pex;

public class Response extends com.intersystems.enslib.pex.Message {

	public String responseString = null;

	public Integer responseInteger = 0;
	
	public Response(String initStringValue) {
		responseString = initStringValue;
	}
	
}
