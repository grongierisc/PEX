package com.intersystems.demo.pex;

import com.intersystems.jdbc.IRISObject;

public class OutboundAdapter extends com.intersystems.enslib.pex.OutboundAdapter {
	
	public void OnInit() throws Exception {
		return;
	}

	public void OnTearDown() throws Exception {
		return;
	}

	public String printStringContainer(IRISObject stringContainer) {
		return "printed from java"+stringContainer;
	}

}