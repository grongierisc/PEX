using System;

namespace InterSystems.Demo.PEX
{
    public class Response : InterSystems.EnsLib.PEX.Message
    {
        public string responseString = null;

        public Response(string initStringValue)
        {
            responseString = initStringValue;
        }

    }
}
