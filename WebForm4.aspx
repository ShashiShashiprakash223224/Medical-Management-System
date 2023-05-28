<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Chandra_medical_store.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 

            &nbsp;Name :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
            <br />
            lastname :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;&nbsp;
            <br />
            City: <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>&nbsp;<br />
            Streat :<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            productname:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>&nbsp;<br />
            TotalPayable <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
        </div>
    </form>
</body>
</html>
