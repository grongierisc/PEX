package com.intersystems.demo.pex;

public class Response extends com.intersystems.enslib.pex.Message {

	public String responseString = null;

	public Integer responseInteger = 0;

	public SimpleObject simpleObject = new SimpleObject("test");
	
	public Response(String initStringValue) {
		responseString = initStringValue;
	}

	public Response(String string, int nextInt) {
		responseString = string;
		responseInteger = nextInt;
	}
	
}
