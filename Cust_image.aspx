<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Cust_image.aspx.cs" Inherits="Chandra_medical_store.Cust_image" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            margin-top: 0px; 
           
        }
        .auto-style2 {
            height: 54px;
            width: 1483px; 
           
        }
        .auto-style3 {
            margin-left: 126px;
            margin-top: 0px;               
        }
        #abc{ 
            border-radius:8px; 
           border-color:2 px solid black;
        }
        #abc1 {
            border-radius:8px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <p class="auto-style2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="279px" CssClass="abc" style="margin-left: 8px; margin-right: 0px; margin-top: 0px; margin-bottom: 4px" PlaceHolder="You search here"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#FFCC00" ForeColor="White" Height="27px" Text="search" Width="67px" OnClick="Button1_Click1" CssClass="abc1" />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
     
<asp:DataList ID="DataList1" runat="server" CssClass="auto-style3" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-bottom: 0px; " Width="987px" BackColor="burlywood" Height="408px" > 
                   <ItemTemplate>
                     <asp:HyperLink ID="LinkButton1"   runat ="server" NavigateUrl="Imageview1.aspx">  <image src="image/<%#Eval("img")%>" height="90" weight="70"></asp:HyperLink><br>
               Name:<asp:Label ID="Label1" style="color:darkorchid" runat="server" Text='<%#Eval("name") %>'></asp:Label><br> 
               Rs:<asp:Label ID="Label2" style="color:darkorchid"  runat="server" Text='<%#Eval("rs") %>'></asp:Label><br>          
                           <br><br><br>
              </ItemTemplate>
            </asp:DataList>                   
</asp:Content>
