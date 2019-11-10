package com.intersystems.demo.pex;

import com.intersystems.jdbc.IRISObject;

public class OutboundAdapter extends com.intersystems.enslib.pex.OutboundAdapter {
	
	public void OnInit() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.OutboundAdapter:OnInit() is called");
		return;
	}

	public void OnTearDown() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.OutboundAdapter:OnTearDown() is called");
		return;
	}

	public String printStringContainer(IRISObject stringContainer) {
		System.out.print("\r\n[Java] ...demo.pex.OutboundAdapter:printStringContainer(): "+(String)stringContainer.get("StringValue"));
		return "printed successfully";
	}

}