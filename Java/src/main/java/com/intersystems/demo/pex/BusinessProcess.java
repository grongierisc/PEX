package com.intersystems.demo.pex;

import com.intersystems.enslib.pex.Persistent;

public class BusinessProcess extends com.intersystems.enslib.pex.BusinessProcess {
	
	@Persistent
	public Integer runningTotal = 0;
	
	public void OnInit() throws Exception {

		return;
	}

	public void OnTearDown() throws Exception {

		return;
	}
	
	public Object OnRequest(Object request) throws Exception {
		for ( int i=0 ; i<4 ; i++ ) {
			Request tRequest = new Request("test");
			tRequest.message = "test"+i;
			SendRequestAsync("Demo.PEX.BP.BusinessProcess",tRequest);
		}
		return null;
	}

	public Object OnResponse(Object request, Object response, Object callRequest, Object callResponse, String pCompletionKey) throws Exception {
		runningTotal = runningTotal + 1;
		return null;
	}

	public Object OnComplete(Object request, Object response) throws Exception {
		return null;
	}

}