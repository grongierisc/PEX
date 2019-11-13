using System;

namespace InterSystems.Demo.PEX
{
    public class Request : InterSystems.EnsLib.PEX.Message
    {
        public string requestString = null;

        public Request(string initStringValue)
        {
            requestString = initStringValue;
        }

    }
}
