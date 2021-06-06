<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GreenSlate_Test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 10%;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            width: 10%;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            width: 65px;
        }
    </style>
    <style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div style="width:80%; margin:20px;margin-left:60px">
            <table class="auto-style1" border="0" style="border-color: #000000" style="width: 50%;" cellpadding="0px" cellspacing="0px" border="1px" rules="none" frame="border">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3">
                        <strong>
                        <asp:Label ID="lbl_title" runat="server" Text="COINS INFORMATION" CssClass="auto-style3"></asp:Label>
                        </strong>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2"><strong>
                        <asp:Label ID="lbl_penny" runat="server" Text="Penny ($ 0.01)" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td><strong>
                        <asp:Label ID="lbl_nickels" runat="server" Text="Nickels ($ 0.05)" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td><strong>
                        <asp:Label ID="lbl_coins" runat="server" Text="Dime ($ 0.10)" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td><strong>
                        <asp:Label ID="lbl_quarter" runat="server" Text="Quarter ($ 0.25)" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:TextBox ID="txtPenny" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtPenny_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNickel" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtNickel_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDime" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtDime_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQuarter" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtQuarter_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="YOUR TOTAL :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="custTotalAmount" runat="server" ReadOnly="True" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="3"><strong>
                        <asp:Label ID="lbl_title1" runat="server" Text="PRODUCTS INFORMATION" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7" colspan="2"><strong>
                        <asp:Label ID="lbl_coke" runat="server" Text="Coke" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtCoke" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" MinValue="0"  OnTextChanged="txtCoke_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Cost=$0.25"></asp:Label>
                    </td>
                    <td class="auto-style7">InStock:
                        <asp:Label ID="totalCoke" runat="server" Text="0"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="ORDER TOTAL :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_orderTotal" runat="server" ReadOnly="True" TextMode="Number"  ></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7" colspan="2"><strong>
                        <asp:Label ID="lbl_pepsi" runat="server" Text="Pepsi" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="txtPepsi" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtPepsi_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Cost=$0.36"></asp:Label>
                    </td>
                    <td class="auto-style6">InStock:
                        <asp:Label ID="totalPepsi" runat="server" Text="0"></asp:Label>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5" colspan="2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" colspan="2"><strong>
                        <asp:Label ID="lbl_soda" runat="server" Text="Soda" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtSoda" runat="server" TextMode="Number" Width="69px" AutoPostBack="True" OnTextChanged="txtSoda_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Cost=$0.45"></asp:Label>
                    </td>
                    <td class="auto-style6">InStock:
                        <asp:Label ID="totalSoda" runat="server" Text="0"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btn_calculate" runat="server" class="w3-button w3-blue-grey" UseSubmitBehavior="false" Font-Bold="True" Text="GET DRINKS" Width="139px" Enabled="False" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
   
     

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>

         <table class="auto-style1" border="1" class="w3-button w3-blue-grey" style="color:black;font-weight:300;border-color: #000000;align-content:center" style="width: 50%;" cellpadding="5px" cellspacing="5px" border="1px solid" rules="none" frame="border">
             <th>
                 <td colspan="4"  ><h3>Purchase Summary</h3></td>
                
             </th>
             <tr>
                 <td>
                     Drink-Type
                 </td>
                  <td>
                      Quantity
                 </td>
                  <td>
                      Unit Price
                 </td>
                  <td>
                      Total Price
                 </td>
             </tr>
             <tr>
                 <td>
                     C O K E
                 </td>
                  <td>
                    <% try { Response.Write( txtCoke.Text.ToString()); } catch{} %>
                      
                      
                 </td>
                  <td>
                      $ 0.25
                 </td>
                  <td>
                     $ <% try { Response.Write((int.Parse(txtCoke.Text) * 0.25).ToString()); } catch { } %> 
                 </td>
             </tr>
               <tr>
                 <td>
                    P E P S I
                 </td>
                  <td>
                       <% try { Response.Write( txtPepsi.Text.ToString()); } catch { } %> 
                      
                 </td>
                  <td>
                     $ 0.36
                 </td>
                  <td>
                     $ <% try { Response.Write( (int.Parse(txtPepsi.Text) * 0.36).ToString()); } catch { } %> 
                 </td>
             </tr>
              <tr>
                 <td>
                   S O D A
                 </td>
                  <td>
                       <% try { Response.Write( txtSoda.Text.ToString()); } catch { } %> 
                      
                 </td>
                  <td>
                     $ 0.45
                 </td>
                  <td>
                     $ <% try {Response.Write( (int.Parse(txtSoda.Text) * 0.45).ToString()); } catch { } %> 
                 </td>
             </tr>
              <tr>
                 <td colspan="4">
                   ---------------------------------------------------------------------------------------------------------------------------------------------------------
                 </td>
             </tr>
              <tr>
                 <td></td>
                  <td></td>
                  <td>Total Bill::</td>
                  <td>$ <% try { Response.Write(((int.Parse(txtSoda.Text) * 0.45) + (int.Parse(txtPepsi.Text) * 0.36) + (int.Parse(txtCoke.Text) * 0.25)).ToString()); } catch { } %>   </td>
                 
             </tr>
             <tr>
                 <td></td>
                  <td></td>
                  <td>Your Deposit::</td>
                  <td>$ <% try {
                                if (double.Parse(custTotalAmount.Text) <= 0.00 && double.Parse(txt_orderTotal.Text) > 0.00)
                                { 
                                 Response.Write("<b style='color:red'>Enter Coins first</b>");
                                }
                                else {
                                    Response.Write(((int.Parse(txtPenny.Text) * 0.01) + (int.Parse(txtDime.Text) * 0.10) + (int.Parse(txtNickel.Text) * 0.05) + (int.Parse(txtQuarter.Text) * 0.25)).ToString());
                                }
                               } catch { } %>    </td>
             </tr>
             <tr>
                 <td></td>
                  <td></td>
                  <td>Your Change::</td>
                  <td>$ <% try { Response.Write(Math.Round(((int.Parse(txtPenny.Text) * 0.01) + (int.Parse(txtDime.Text) * 0.10) + (int.Parse(txtNickel.Text) * 0.05) + (int.Parse(txtQuarter.Text) * 0.25)) - ((int.Parse(txtSoda.Text) * 0.45) + (int.Parse(txtPepsi.Text) * 0.36) + (int.Parse(txtCoke.Text) * 0.25)), 2).ToString()); } catch { } %>    </td>
                 
             </tr>
              <tr>
                 <td colspan="4">
                     <br />
                    <center>----------------THANK YOU VISIT AGAIN----------------</center>  <br />
                 </td>
             </tr>
               <tr>
                 <td colspan="4">
                     <br />
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Confirm Order & Purchase" OnClick="btn_calculate_Click"/>

                    </center>  <br />
                 </td>
             </tr>
             </table>
    </p>
  </div>

</div>
    <script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
        var btn = document.getElementById("btn_calculate");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
    </script>
         </form>
</body>
</html>
