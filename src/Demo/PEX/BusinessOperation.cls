Class Demo.PEX.BusinessOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.PEX.OutboundAdapter";

Method OnMessage(pRequest As EnsLib.PEX.Message, Output pResponse As EnsLib.PEX.Message) As %Status
{
	set tSC = $$$OK
	try {
		if $$$EnsJobStatus($$$SystemName,$job,$$$eJobForeground) {
			set io = $io use $p
			write !,"[IRIS] Demo.PEX.BusinessOperation:OnMessage() is called"
			use io
		}
		set string = ##class(Ens.StringContainer).%New(pRequest.Message)
		set responseString = ..Adapter.printStringContainer(string)
		$$$LOGINFO(responseString)
		set pResponse = ##class(Demo.Lib.Pex.Message).%New()
		set pResponse.%jsonObject.javaMessage = responseString
	} catch ex {
		set tSC = ex.AsStatus()
	}
	quit tSC
}

}
