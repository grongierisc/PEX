Class Demo.Lib.Pex.BusinessOperation Extends (Ens.BusinessOperation, Demo.Lib.Pex.Common)
{

Parameter SETTINGS = "%remoteClassname:Remote BusinessOperation,%remoteSettings:Remote BusinessOperation,%gatewayHost:Remote BusinessOperation,%gatewayPort:Remote BusinessOperation,%gatewayTimeout:Remote BusinessOperation,%gatewayExtraClasspaths:Remote BusinessOperation";

Method OnMessage(request As %Library.Persistent, Output response As %Library.Persistent) As %Status
{
	set tSC = $$$OK
	try {
		set tSC = ..CheckGatewayConnection() quit:$$$ISERR(tSC)
		if $isObject(request),request.%IsA("Demo.Lib.Pex.Message") set request = ..serialize(request)
		set response = ..%gatewayProxy.dispatchOnMessage(request)
		if response'="",$isObject(response)=0 set response = ..deserialize(response)
	} catch ex {
		set tSC = ex.AsStatus()
		do ..CheckGatewayDisconnection()
	}
	quit tSC
}

}
