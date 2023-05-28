<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="Diiseas1.aspx.cs" Inherits="Chandra_medical_store.Diiseas1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
     <style type="text/css">
       
        .auto-style4 {
             width: 500px;
             height: 370px;
             margin:66px 199px 20px 153px; 
             background-image:linear-gradient(silver,pink);
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
     <div  class="auto-style4">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label1" runat="server" Text="Disease Name" Font-Bold="True" Font-Size="Medium" ForeColor="Fuchsia"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disease Name
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" Width="265px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medicine Name
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Width="265px"></asp:TextBox>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Brand Name
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style3" Width="265px"></asp:TextBox>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Medicine Type
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3" Width="265px"></asp:TextBox>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Disease Discription
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" TextMode="MultiLine" Width="265px"></asp:TextBox>
&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#00CC00" ForeColor="Red" OnClick="Button1_Click" Text="Submit" Width="261px" Height="36px" />
        <br />
        <br />
      </div>
</asp:Content>
