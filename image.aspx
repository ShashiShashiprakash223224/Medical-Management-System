<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="image.aspx.cs" Inherits="Chandra_medical_store.image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 505px;
            margin-left: 16px;
            margin-top: 17px;
            margin-bottom: 15px;
            height: 260px; 
            color:darkmagenta;
        }
        .auto-style2 {
            width: 357px;
            height: 342px;
            margin-left: 396px;
            margin-top: 51px;
        }
        .form1 { 
            color:darkgoldenrod
        } 
      #Button
        { 
        border-color:darkblue; 
        cursor:pointer; 
        border-radius:8px ;
        } 
       #Button1:hover{ 
            background-color:blue; 
            color:darkorange;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server"> 
        <div style="background-color:darkgoldenrod" class="auto-style2">
        <div class="auto-style1">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Add Image"></asp:Label>
            &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select image:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" Width="227px" ForeColor="#990000" />
&nbsp;&nbsp;
            <br />
&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" ForeColor="#CC33FF" Width="190px"></asp:TextBox>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Price<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" ForeColor="#CC66FF" Width="185px"></asp:TextBox>
            <br />
&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <div id="insert">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Width="199px" BackColor="#CC33FF" ForeColor="White" Text="insert" /> 
            </div>

            <br />
        </div> 
            </div>
    </form>
</body>
</html>
