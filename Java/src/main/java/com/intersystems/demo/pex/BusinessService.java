package com.intersystems.demo.pex;

public class BusinessService extends com.intersystems.enslib.pex.BusinessService {

	public String Target = "Demo.PEX.BP.BusinessProcess";

	public void OnInit() throws Exception {
		return;
	}

	public void OnTearDown() throws Exception {
		return;
	}

	public Object OnProcessInput(Object messageInput) throws Exception {

		Request request = new Request("test");
		SendRequestSync(Target, request);
		
		return null;
		
	}

}