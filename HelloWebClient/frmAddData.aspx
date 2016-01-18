<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAddData.aspx.cs" Inherits="HelloWebClient.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Pyraleads Sample Web Site</h1>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="First Name: " Width="120px"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Surname: " Width="120px"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email: " Width="120px"></asp:Label><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Mobile: " Width="120px"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />  
         <asp:Label ID="Label6" runat="server" Text="Debt Level: " Width="120px"></asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />       
         <asp:Label ID="Label7" runat="server" Text="Monthly Payment: " Width="120px"></asp:Label><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />            
    </div>
        <br /> 
        <br /> 
    <div>
        <asp:Button ID="Button1" runat="server" Text="Submit Data" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>

    </div>
        <br /> 
        <br /> 
    <div>
        <h2>Web Lead Table</h2>
        <asp:GridView ID="grvCustomers" runat="server" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="grvCustomers_PageIndexChanging">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>

    </form>
</body>
</html>

