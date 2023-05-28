<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicine_brief_view.aspx.cs" Inherits="Chandra_medical_store.Medicine_brief_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 24px;
        }
        .auto-style2 {
            margin-left: 198px;
            width: 697px;
            margin-top: 21px;
        }
        #LinkButton1 { 
            color:red; 
            font-size:large;
        }
        #Label1{ 
            color:yellow;
                }
    </style>
</head>
<body style="background-color:darkorchid">
    <form id="form1" runat="server">
        <div class="auto-style2"> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" RepeatColumns="3" RepeatDirection="Horizontal"> 
                   <ItemTemplate>
                       <image src="image/<%#Eval("img")%>" height="90" weight="70"><br>
               Name:<asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label><br> 
               Rs:<asp:Label ID="Label2" runat="server" Text='<%#Eval("rs") %>'></asp:Label><br>
              Description<asp:Label ID="Label3" runat="server" Text='<%#Eval("description") %>'></asp:Label><br>
              Quantity:<asp:Label ID="Label4" runat="server" Text='<%#Eval("quantity") %>'></asp:Label><br>
                      <asp:HyperLink ID="LinkButton1"   runat ="server" NavigateUrl="Customer_Details.aspx">
                          Buy                       
                      </asp:HyperLink>  
                           <br><br><br>
              </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
