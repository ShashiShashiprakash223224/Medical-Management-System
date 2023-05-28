<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeFile="InsertView1.aspx.cs" Inherits="Chandra_medical_store.InsertView1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
      <style type="text/css">
       .auto-style2{ 
          border-radius:16px; 
          border-color:2px solid black;
           
        }
        .Content2 
           { 
              background-color:darkmagenta;
           }
       </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
       <br /> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="373px" Placeholder="You search here" Height="27px" CssClass="auto-style2" style="margin-left: 3px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="search" BackColor="#FFFF99" ForeColor="Blue" Width="79px" CssClass="auto-style2" />
&nbsp;<br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Font-Overline="False" ForeColor="White" Visible="False"></asp:Label>
            &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="No record available" DataKeyNames="Id" DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" style="margin-left: 69px" Width="751px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            &nbsp;<br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [insert_table]"></asp:SqlDataSource>
        </div>
</asp:Content>
