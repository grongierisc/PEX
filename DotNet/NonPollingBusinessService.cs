using System;
using InterSystems.Data.IRISClient;

namespace InterSystems.Demo.PEX
{
    class NonPollingBusinessService
    {
        static void Main(string[] args)
        {
            try
            {
                IRISADOConnection connection = InterSystems.Data.IRISClient.Gateway.Gateway.GetConnection("Server=localhost; Port=51774; Namespace=Ensemble; Password=SYS; User ID=_SYSTEM; SharedMemory=false");
                InterSystems.EnsLib.PEX.BusinessService service = InterSystems.EnsLib.PEX.Director.CreateBusinessService(connection, "Demo.PEX.NonPollingBusinessService");
                string response = (string)service.ProcessInput(String.Join(" ", args));
                Console.WriteLine("\r\n" + response);
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }
        }

    }
}
