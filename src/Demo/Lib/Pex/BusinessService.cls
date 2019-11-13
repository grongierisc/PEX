/* Copyright (c) 2019 by InterSystems Corporation.
   Cambridge, Massachusetts, U.S.A.  All rights reserved.
   Confidential property of InterSystems Corporation. */

Class Demo.Lib.Pex.BusinessService Extends (Ens.BusinessService, Demo.Lib.Pex.Common)
{

Parameter ADAPTER = "Ens.InboundAdapter";

Parameter SETTINGS = "%remoteClassname:Remote BusinessService,%remoteSettings:Remote BusinessService,%gatewayHost:Remote BusinessService,%gatewayPort:Remote BusinessService,%gatewayTimeout:Remote BusinessService,%gatewayExtraClasspaths:Remote BusinessService";

ClassMethod dispatchProcessInput(host As %RegisteredObject, pInput As %RegisteredObject) As %RegisteredObject
{
	// dispatchProcessInput is a classmethod because it can be called on a BusinessService object that is not PEX enabled
	set tSC = host.ProcessInput(pInput,.tOutput)
	if $$$ISERR(tSC) throw ##class(%Exception.StatusException).CreateFromStatus(tSC)
	quit tOutput
}

Method OnProcessInput(request As %RegisteredObject, Output response As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	try {
		set tSC = ..CheckGatewayConnection() quit:$$$ISERR(tSC)
		set response = ..%gatewayProxy.OnProcessInput(request)
	} catch ex {
		set tSC = ex.AsStatus()
		do ..CheckGatewayDisconnection()
	}
	quit tSC
}

}
