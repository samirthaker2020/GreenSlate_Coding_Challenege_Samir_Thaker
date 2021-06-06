using GreenSlate_Test.Models;
using System;
using System.Collections.Generic;

namespace GreenSlate_Test
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public static double changeAmount = 0;
        public const int cokeAmount = 25;
        public const int pepsiAmount = 36;
        public const int sodaAmount = 45;
        double v;
       
        double txtorderTotal = 0;
        private int cokeCount;
        private int pepsiCount;
        private int sodaCount;
        MachineInventory m = new MachineInventory();


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                v = 0;
                if (!IsPostBack)
                {
                    setValue();
                    Global.filldata();
                    totalQuantity();
                }

                if (int.Parse(txtCoke.Text) > 0 || int.Parse(txtPepsi.Text) > 0 || int.Parse(txtSoda.Text) > 0)
                {
                    btn_calculate.Enabled = true;

                }
            }
            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }
          

        }
       
    void setValue()
        {
            txtCoke.Text = "0";
            txtPepsi.Text = "0";
            txtSoda.Text = "0";
            txt_orderTotal.Text = "0";
            txtPenny.Text = "0";
            txtDime.Text = "0";
            txtNickel.Text = "0";
            txtQuarter.Text = "0";
            custTotalAmount.Text = "0";
            txt_orderTotal.Text = "0";
            txtorderTotal = 0;
            txt_orderTotal.Text = "0";
            v = 0;
            changeAmount = 0;
            btn_calculate.Enabled = false;

        }

        void totalQuantity()
        {

            try
            {
                if (Global.GetitemsInMachine("countOfCoke") >= 1)
                { totalCoke.Text = Global.GetitemsInMachine("countOfCoke").ToString(); }
                else
                {
                    txtCoke.Enabled = false;
                    totalCoke.Text = Global.GetitemsInMachine("countOfCoke").ToString();
                    txtCoke.Text = "0";
                }
                if (Global.GetitemsInMachine("countOfPepsi") >= 1)
                { totalPepsi.Text = Global.GetitemsInMachine("countOfPepsi").ToString(); }
                else
                {
                    txtPepsi.Enabled = false;
                    totalPepsi.Text = Global.GetitemsInMachine("countOfPepsi").ToString();
                    txtPepsi.Text = "0";
                }
                if (Global.GetitemsInMachine("countOfSoda") >= 1)
                { totalSoda.Text = Global.GetitemsInMachine("countOfSoda").ToString(); }
                else
                {
                    txtSoda.Enabled = false;
                    totalSoda.Text = Global.GetitemsInMachine("countOfSoda").ToString();
                    txtSoda.Text = "0";
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

           

            

        }
        protected void txtPenny_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtPenny.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtPenny.Text = "0";
                }
                else
                {
                    custTotalAmountEnter();
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

          


        }

        protected void txtNickel_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtNickel.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtNickel.Text = "0";
                }
                else
                {
                    custTotalAmountEnter();
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

          
        }

        protected void txtDime_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtDime.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtDime.Text = "0";
                }
                else
                {
                    custTotalAmountEnter();
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

           
        }

        protected void txtQuarter_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtQuarter.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtQuarter.Text = "0";
                }
                else
                {
                    custTotalAmountEnter();
                }
            }

            catch
            {

                Response.Write("<script>alert('Try Again');</script>");
            }

         
        }

        protected void txtCoke_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtCoke.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtCoke.Text = "0";
                }
                else
                {
                    if (int.Parse(txtCoke.Text) > Global.GetitemsInMachine("countOfCoke"))
                    {
                        Response.Write("<script>alert('Please enter valid quantity');</script>");
                        txtCoke.Text = "0";
                    }
                    calculateAmount(int.Parse(txtCoke.Text), int.Parse(txtPepsi.Text), int.Parse(txtSoda.Text));
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

           
            
        }

        protected void txtPepsi_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtPepsi.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtPepsi.Text = "0";
                }
                else
                {
                    if (int.Parse(txtPepsi.Text) > Global.GetitemsInMachine("countOfPepsi"))
                    {
                        Response.Write("<script>alert('Please enter valid quantity');</script>");
                        txtPepsi.Text = "0";
                    }
                    calculateAmount(int.Parse(txtCoke.Text), int.Parse(txtPepsi.Text), int.Parse(txtSoda.Text));
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

           
            
        }

        protected void txtSoda_TextChanged(object sender, EventArgs e)
        {

            try
            {
                if (System.Text.RegularExpressions.Regex.IsMatch(txtSoda.Text, "[^0-9]"))
                {

                    Response.Write("<script>alert('Please enter only numbers');</script>");
                    txtSoda.Text = "0";
                }
                else
                {
                    if (int.Parse(txtSoda.Text) > Global.GetitemsInMachine("countOfSoda"))
                    {
                        Response.Write("<script>alert('Please enter valid quantity');</script>");
                        txtSoda.Text = "0";
                    }
                    calculateAmount(int.Parse(txtCoke.Text), int.Parse(txtPepsi.Text), int.Parse(txtSoda.Text));
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

          
          
        }


        void calculateAmount(int qtyCoke, int qtyPepsi, int qtySoda)
        {

            try
            {
                txt_orderTotal.Text = "0";
                txtorderTotal = txtorderTotal + (qtyCoke * cokeAmount) + (qtyPepsi * pepsiAmount) + (qtySoda * sodaAmount);


                v = txtorderTotal / 100;
                txt_orderTotal.Text = v.ToString();
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

        
        }


        protected void btn_calculate_Click(object sender, EventArgs e)
        {

            try
            {
                if (double.Parse(custTotalAmount.Text) != 0 || double.Parse(txt_orderTotal.Text) != 0 || !(txtPenny.Text.Equals("") || txtNickel.Text.Equals("") || txtDime.Text.Equals("") || txtQuarter.Text.Equals("") || txtCoke.Text.Equals("") || txtPepsi.Text.Equals("") || txtSoda.Text.Equals("")))
                {
                    if (double.Parse(custTotalAmount.Text) >= double.Parse(txt_orderTotal.Text))
                    {
                        calculate(int.Parse(txtCoke.Text), int.Parse(txtPepsi.Text), int.Parse(txtSoda.Text));
                        totalQuantity();
                    }
                    else
                    {
                        Response.Write("<script>alert('Enter correct coins ');</script>");
                    }


                }
                else
                {
                    Response.Write("<script>alert('Enter all required fields');</script>");
                }
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }



           
        }

        void custTotalAmountEnter()
        {
            try
            {
                custTotalAmount.Text = (double.Parse(txtDime.Text) * 0.10 + double.Parse(txtPenny.Text) * 0.01 + double.Parse(txtNickel.Text) * 0.05 + double.Parse(txtQuarter.Text) * 0.25).ToString();
            }

            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }

          

        }

        void calculate(int cokeCount, int pepsiCount, int sodaCount)
        {

            try
            {
               
                changeAmount = double.Parse(custTotalAmount.Text) - double.Parse(txt_orderTotal.Text);
             //   Response.Write("<script>alert('" + Math.Round(changeAmount, 2).ToString() + "');</script>");
              int response=  m.countNumberOfCoinsForChange(Math.Round(changeAmount, 2));
                if (response == 1)
                {
                    if (Global.GetitemsInMachine("countOfCoke") >= 1)
                    {
                        m.setcokeCount(cokeCount);
                        m.updateCountOfCoke();


                    }
                    else
                    {

                        totalCoke.Text = "OUT OF STOCK";
                    }

                    if (Global.GetitemsInMachine("countOfPepsi") >= 1)
                    {
                        m.setpepsiCount(pepsiCount);
                        m.updateCountOfPepsi();


                    }
                    else
                    {

                        totalPepsi.Text = "OUT OF STOCK";
                    }
                    if (Global.GetitemsInMachine("countOfSoda") >= 1)
                    {
                        m.setsodaCount(sodaCount);
                        m.updateCountOfSoda();


                    }
                    else
                    {

                        totalSoda.Text = "OUT OF STOCK";
                    }
                    Response.Write("<script>alert('Thank you for your purchase');</script>");
                    totalQuantity();
                    setValue();
                }
                else
                {
                    Response.Write("<script>alert('System Error!! Try Again / Not sufficient change in the inventory”');</script>");
                    totalQuantity();
                    setValue();
                }
               
           /*     Response.Write("<script>alert('Dime:" + Global.GetcentsInMachine("dimeCount").ToString() + "');</script>");
                Response.Write("<script>alert('Penny:" + Global.GetcentsInMachine("pennyCount").ToString() + "');</script>");
                Response.Write("<script>alert('Nickel:" + Global.GetcentsInMachine("nickelsCount").ToString() + "');</script>");
                Response.Write("<script>alert('Quarter:" + Global.GetcentsInMachine("quarterCount").ToString() + "');</script>");*/
            }
            catch
            {
                Response.Write("<script>alert('Try Again');</script>");
            }


           

        }

       
    }

    }

