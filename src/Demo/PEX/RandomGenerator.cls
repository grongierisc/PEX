Class Demo.PEX.RandomGenerator Extends Ens.BusinessProcess
{

Parameter SETTINGS = "RemoteMessagePackageName";

Property RemoteMessagePackageName As %String;

Property random As %Integer;

Method OnRequest(pRequest As EnsLib.PEX.Message, Output pResponse As EnsLib.PEX.Message) As %Status
{
	set ..random = $r(10)
	quit ..SetTimer(..random)
}

Method OnResponse(request As %Library.Persistent, ByRef response As %Library.Persistent, callrequest As %Library.Persistent, callresponse As %Library.Persistent, pCompletionKey As %String) As %Status
{
	set response = ##class(EnsLib.PEX.Message).%New(..RemoteMessagePackageName_".Response")
	set response.responseString = ..random
	quit $$$OK
}

Storage Default
{
<Data name="RandomGeneratorDefaultData">
<Subscript>"RandomGenerator"</Subscript>
<Value name="1">
<Value>random</Value>
</Value>
<Value name="2">
<Value>RemoteMessagePackageName</Value>
</Value>
</Data>
<DefaultData>RandomGeneratorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
