package com.intersystems.demo.pex;

import com.intersystems.enslib.pex.Persistent;
import com.intersystems.jdbc.IRISObject;

public class BusinessProcess extends com.intersystems.enslib.pex.BusinessProcess {
	
	@Persistent
	public Integer runningTotal = 0;
	
	public void OnInit() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnInit() is called");
		return;
	}

	public void OnTearDown() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnTearDown() is called");
		return;
	}
	
	public Object OnRequest(Object request) throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnRequest() is called with \"" + ((Request)request).requestString + "\"");
		for ( int i=0 ; i<4 ; i++ ) {
			SendRequestAsync("Demo.PEX.RandomGenerator",(IRISObject)null,true,"request #"+(i+1));
		}
		SetTimer(7,"myTimer");
		Reply(null);
		return null;
	}

	public Object OnResponse(Object request, Object response, Object callRequest, Object callResponse, String pCompletionKey) throws Exception {
		if ( pCompletionKey.equals("myTimer") ) {
			System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnResponse() " + pCompletionKey + " received, remaining cancelled.");
			return null;
		}
		runningTotal = runningTotal + Integer.parseInt(((Response)callResponse).responseString);
		System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnResponse() " + pCompletionKey + " returns " + ((Response)callResponse).responseString + ", runningTotal = " + runningTotal);
		return null;
	}

	public Object OnComplete(Object request, Object response) throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessProcess:OnComplete() is called, final runningTotal = " + runningTotal);
		return null;
	}

}