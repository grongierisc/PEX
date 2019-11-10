package com.intersystems.demo.pex;

public class BusinessService extends com.intersystems.enslib.pex.BusinessService {
	
	public int Min = 0;
	public int Max = 0;

	public void OnInit() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessService:OnInit() is called, Min="+Min+", Max="+Max);
		return;
	}

	public void OnTearDown() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessService:OnTearDown() is called");
		return;
	}

	public Object OnProcessInput(Object messageInput) throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.BusinessService:OnProcessInput() is called");
		return "...demo.pex.BusinessService:OnProcessInput() echos";
	}

}