package com.intersystems.demo.pex;

public class InboundAdapter extends com.intersystems.enslib.pex.InboundAdapter {
	
	public int min = 0;
	public int max = 0;
	int runningCount = 0;
	
	public void OnInit() throws Exception {
		System.out.print("\r\n[Java] ...demo.pex.InboundAdapter:OnInit() is called, "+" min="+min+", max="+max);
		return;
	}

	public void OnTearDown() throws Exception {
		return;
	}

	public void OnTask() throws Exception {
		// 50% chance of calling ProcessInput()
		if ( Math.random()<0.5 ) {
			SimpleObject request = new SimpleObject("message #"+(++runningCount));
			System.out.print("\r\n[Java] ...demo.pex.InboundAdapter:OnTask() calls ProcessInput() with " + request.value);
			String response = (String) BusinessHost.ProcessInput(request);
			System.out.print("\r\n[Java] ...demo.pex.InboundAdapter:OnTask() receives \"" + response + "\"");
		}
		return;
	}

}
