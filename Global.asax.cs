using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace GreenSlate_Test
{
    public   class Global  : HttpApplication
    {
        private static Dictionary<string, int> getitemsInMachine = new Dictionary<string, int>();
        private static Dictionary<string, int> centsInMachine = new Dictionary<string, int>();

        public static void SetitemsInMachine(string parametrName, int paramValue)
        {
            getitemsInMachine[parametrName]= paramValue;
        }

        public static int GetitemsInMachine(String parametrName)
        {
            // ContainKey ---> It returns value if the key was found 
            if (getitemsInMachine.ContainsKey(parametrName))
                return getitemsInMachine[parametrName];
            else
                return 0;
        }

        public static void SetcentsInMachine(string parametrName, int paramValue)
        {
            centsInMachine[parametrName]= paramValue;
        }

        public static int GetcentsInMachine(String parametrName)
        {
            // ContainKey ---> It returns value if the key was found 
            if (centsInMachine.ContainsKey(parametrName))
                return centsInMachine[parametrName];
            else
                return 0;
        }

        public static void filldata()
        {
            try
            {
                SetitemsInMachine("countOfCoke", 5);
                SetitemsInMachine("countOfPepsi", 15);
                SetitemsInMachine("countOfSoda", 3);

                SetcentsInMachine("dimeCount", 100);
                SetcentsInMachine("pennyCount", 10);
                SetcentsInMachine("nickelsCount", 5);
                SetcentsInMachine("quarterCount", 25);
            }
            catch { }
        }
    }
}