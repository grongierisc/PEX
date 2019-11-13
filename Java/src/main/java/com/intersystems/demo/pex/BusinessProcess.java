package com.intersystems.demo.pex;

import com.intersystems.enslib.pex.Persistent;
import com.intersystems.jdbc.IRISObject;

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
			SendRequestAsync("Demo.PEX.RandomGenerator",(IRISObject)null,true,"request #"+(i+1));
		}
		SetTimer(7,"myTimer");
		Reply(null);
		return null;
	}

	public Object OnResponse(Object request, Object response, Object callRequest, Object callResponse, String pCompletionKey) throws Exception {
		if ( pCompletionKey.equals("myTimer") ) {
				return null;
		}
		runningTotal = runningTotal + Integer.parseInt(((Response)callResponse).responseString);
		return null;
	}

	public Object OnComplete(Object request, Object response) throws Exception {
		return null;
	}

}