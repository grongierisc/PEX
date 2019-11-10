Class Demo.Lib.Pex.Common Extends EnsLib.PEX.Common
{

ClassMethod serialize(message As Demo.Lib.Pex.Message) As %String
{
	if $g(message)=$$$NULLOREF quit ""
	quit message.%classname_":"_message.%jsonObject.%ToJSON()
}

ClassMethod deserialize(serialized As %String = "") As Demo.Lib.Pex.Message
{
	if serialized = "" {
		set message = $$$NULLOREF
	} else {
		set message = ##class(Demo.Lib.Pex.Message).%New()
		set message.%classname = $p(serialized,":",1)
		set json = $p(serialized,":",2,*)
		if json="" set json = "{}"
		set message.%jsonObject = ##class(%DynamicObject).%FromJSON(json)
	}
	quit message
}

}
