using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GreenSlate_Test.Models
{
    public class MachineInventory
    {

        private int cokeCount;
        private int pepsiCount;
        private int sodaCount;

        int changeAmount = 0;
        public int getcokeCount()
        {
            return cokeCount;
        }
        public void setcokeCount(int cokeCount)
        {
            this.cokeCount = cokeCount;
        }

        public int getpepsiCount()
        {
            return pepsiCount;
        }
        public void setpepsiCount(int pepsiCount)
        {
            this.pepsiCount = pepsiCount;
        }
        public int getsodaCount()
        {
            return sodaCount;
        }
        public void setsodaCount(int sodaCount)
        {
            this.sodaCount = sodaCount;
        }

        public void updateCountOfCoke()
        {
            try {
                int coke = Global.GetitemsInMachine("countOfCoke");
                Global.SetitemsInMachine("countOfCoke", coke - getcokeCount());
            }
            catch { }
           
        }
        public void updateCountOfPepsi()
        {
            try
            {
                int pepsi = Global.GetitemsInMachine("countOfPepsi");
                Global.SetitemsInMachine("countOfPepsi", pepsi - getpepsiCount());

            }
            catch { }
        }
        public void updateCountOfSoda()
        {
            try
            {
                int soda = Global.GetitemsInMachine("countOfSoda");
                Global.SetitemsInMachine("countOfSoda", soda - getsodaCount());
            }
            catch { }
          
        }


       public int countNumberOfCoinsForChange(double change)
        {
            int c = 0;
            try
            {
                int quarters = 0;
                int dimes = 0;
                int nickels = 0;
                int penny = 0;
               

                //logic
                do
                {
                    if (change >= 0.25 && Global.GetcentsInMachine("quarterCount") > 0)
                    {
                        change = Math.Round(change - 0.25, 2);
                        quarters++;
                        Global.SetcentsInMachine("quarterCount", Global.GetcentsInMachine("quarterCount") - 1);
                        c = 1;
                    }
                    else if (change <= 0.24 && change > 0.09 && Global.GetcentsInMachine("dimeCount") > 0)
                    {
                        change = Math.Round(change - 0.10, 2);
                        dimes++;
                        Global.SetcentsInMachine("dimeCount", Global.GetcentsInMachine("dimeCount") - 1);
                        c = 1;

                    }
                    else if (change == 0.05 && Global.GetcentsInMachine("nickelsCount") > 0)
                    {
                        change = Math.Round(change - 0.05, 2);
                        nickels++;
                        Global.SetcentsInMachine("nickelsCount", Global.GetcentsInMachine("nickelsCount") - 1);
                        c = 1;

                    }
                    else if (change <= 0.04 && Global.GetcentsInMachine("pennyCount") > 0)
                    {
                        change = Math.Round(change - 0.01, 2);
                        penny++;
                        Global.SetcentsInMachine("pennyCount", Global.GetcentsInMachine("pennyCount") - 1);
                        c = 1;

                    }
                    else {

                        c = 0;
                        break;
                    }

                } while (change > 0);
                return c;
            }
            catch
            {
                return c;
            }

          

            
        }

        private int SetcentsInMachine(string v)
        {
            throw new NotImplementedException();
        }

        private int GetcentsInMachine(string v)
        {
            throw new NotImplementedException();
        }
    }
}