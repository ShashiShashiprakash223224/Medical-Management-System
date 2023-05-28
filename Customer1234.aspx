<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Customer1234.aspx.cs" Inherits="Chandra_medical_store.Customer1234" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
      
 
               <div class="auto-style2" style="background-color:coral"> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Searchbar" Height="27px" Width="401px" CssClass="auto-style1"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#993333" ForeColor="White" OnClick="Button1_Click" Text="Search" Width="83px" Height="28px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-bottom: 0px; margin-left: 141px;" Width="1013px" BackColor="White" Height="465px" > 
                   <ItemTemplate>
                       <image src="image/<%#Eval("img")%>" height="90" weight="70"><br>
               Name:<asp:Label ID="Label1" style="color:darkorchid" runat="server" Text='<%#Eval("name") %>'></asp:Label><br> 
               Rs:<asp:Label ID="Label2" style="color:darkorchid"  runat="server" Text='<%#Eval("rs") %>'></asp:Label><br>
              Description:<asp:Label ID="Label3" style="color:darkorchid" runat="server" Text='<%#Eval("description") %>'></asp:Label><br>
              Quantity:<asp:Label ID="Label4" style="color:darkorchid" runat="server" Text='<%#Eval("quantity") %>'></asp:Label><br> 
                               </div>
                      <asp:HyperLink ID="LinkButton1"   runat ="server" NavigateUrl="Customer_Details.aspx">
                          Buy                       
                      </asp:HyperLink>  
                           <br><br><br>
              </ItemTemplate>
            </asp:DataList>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br /> 
                   </div>
</asp:Content>
