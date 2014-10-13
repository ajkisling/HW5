<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>AJ's Mortgage Payment Calculator</title>

    <link rel="stylesheet" type="text/css" href="./Style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>            
          
        <h1>AJ's Mortgage </h1>
        <h1>Payment Calculator</h1>

            <h3>
            <asp:RequiredFieldValidator ID="rfv_LoanAmount" runat="server" ErrorMessage="*Loan Amount Required" ControlToValidate="tbLoanAmt" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="rfv_InterestRate" runat="server" ErrorMessage="*Annual Interest Rate Required" Font-Bold="True" ControlToValidate="tbAnnualInterest" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" ErrorMessage="*Loan Term Required" Font-Bold="True" ControlToValidate="tbLoanTerm" ForeColor="Red"></asp:RequiredFieldValidator>
            </h3>

            <table class="center">
                <tr>
                    <td class="column1">Loan Amount *</td>
                    <td class="column2"><asp:TextBox ID="tbLoanAmt" runat="server" TabIndex="1" CssClass="tb"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="column1">Annual Interest Rate *</td>
                    <td class="column2"><asp:TextBox ID="tbAnnualInterest" runat="server" TabIndex="2" CssClass="tb"></asp:TextBox>
        
                    </td>
                </tr>
                <tr>
                    <td class="column1">Loan Term (years) *</td>
                    <td class="column2"><asp:TextBox ID="tbLoanTerm" runat="server" TabIndex="3" CssClass="tb"></asp:TextBox>
        
                    </td>
                </tr>

            </table>

        * denotes required fields
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" TabIndex="4" CssClass="button" />

        &nbsp;&nbsp;&nbsp;

        <asp:Button ID="btn_Clear" runat="server" Text="Clear" TabIndex="5" CssClass="button" />

        <% If Not IsPostBack Then%>
        <!-- The first time the page loads. Do not display repayment grid. -->  
               
        <h4>Welcome to my mortgage calculator.</h4>


        <% Else%> 
        <!-- Page is in postback - diplay the repayment grid. -->

        <br /><br />
        
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>

        <% End If%>
            
    </div>
    </form>
</body>
</html>
