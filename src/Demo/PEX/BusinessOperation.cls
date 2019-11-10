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
		set string = ##class(Ens.StringContainer).%New(pRequest.requestString)
		set responseString = ..Adapter.printStringContainer(string)
	} catch ex {
		set tSC = ex.AsStatus()
	}
	quit tSC
}

}
