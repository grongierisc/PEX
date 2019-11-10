Class Demo.PEX.TickerService Extends Ens.BusinessService
{

Parameter ADAPTER = "Ens.InboundAdapter";

Parameter SETTINGS = "TargetConfigName,RemoteMessagePackageName";

Property TargetConfigName As %String;

Property RemoteMessagePackageName As %String;

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject, ByRef pHint As %String) As %Status
{
	try {
		set request = ##class(Demo.Lib.Pex.Message).%New(..RemoteMessagePackageName_".Request")
		set request.requestString = $tr($p($zdt($zu(188),3,,3)," ",2),":")
		set tSC = ..SendRequestSync(..TargetConfigName,request,.response) quit:$$$ISERR(tSC)
		set ..%WaitForNextCallInterval=1
	} catch ex {
		set tSC = ex.AsStatus()
	}
	quit tSC
}

}
