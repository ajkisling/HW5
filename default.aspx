<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>            
            
        AJ's Mortgage Repayment Calculator
        
        <br /><br />
     
        Loan Amount*:<asp:TextBox ID="tbLoanAmt" runat="server" TabIndex="1" ></asp:TextBox>

        &nbsp;&nbsp;&nbsp;

        <asp:RequiredFieldValidator ID="rfv_LoanAmount" runat="server" ErrorMessage="*Loan Amount Required" ControlToValidate="tbLoanAmt" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest Rate*: <asp:TextBox ID="tbAnnualInterest" runat="server" TabIndex="2" ></asp:TextBox>
        
        &nbsp;&nbsp;&nbsp;
        
        <asp:RequiredFieldValidator ID="rfv_InterestRate" runat="server" ErrorMessage="*Annual Interest Rate Required" Font-Bold="True" ControlToValidate="tbAnnualInterest" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />

        Loan Term (years)*: <asp:TextBox ID="tbLoanTerm" runat="server" TabIndex="3" ></asp:TextBox>
        
        &nbsp;&nbsp;&nbsp;

        <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" ErrorMessage="*Loan Term Required" Font-Bold="True" ControlToValidate="tbLoanTerm" ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br /><br />
        * denotes required fields
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" TabIndex="4" />

        &nbsp;&nbsp;&nbsp;

        <asp:Button ID="btn_Clear" runat="server" Text="Clear" TabIndex="5" />

        <% If Not IsPostBack Then%>
        <!-- The first time the page loads. Do not display repayment grid. -->  
               
        <p>Welcome to my mortgage calculator.</p>


        <% Else%> 
        <!-- Page is in postback - diplay the repayment grid. -->

        <br /><br />
        
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />

        <% End If%>
            
        </div>
    </form>
</body>
</html>
