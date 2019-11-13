package com.intersystems.demo.pex;

import com.intersystems.gateway.JavaGateway;
import com.intersystems.jdbc.IRISConnection;
import com.intersystems.enslib.pex.Director;

public class NonPollingBusinessService {

	public static void main(String[] args) {
		
		try {
			IRISConnection connection = JavaGateway.getConnection("jdbc:IRIS://localhost:51770/PEX/","SuperUser","password");
			com.intersystems.enslib.pex.BusinessService service = Director.CreateBusinessService(connection,"Demo.PEX.Service");
			String response = (String) service.ProcessInput(String.join(" ", args));
			System.out.println("\r\n" + response);
		} catch ( Exception ex ) {
			System.out.println(ex);
		}
	
	}

}
