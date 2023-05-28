<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeFile="getstart.aspx.cs" Inherits="Chandra_medical_store.getstart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
    <Style>
 
    .get{  
    color:darkred; 
    font-family:cursive; 
    font-size:50px; 
    }  
    .par{  
    color:dodgerblue; 
    padding:00px 110px; 
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
    font-size:30px; 
   
    }
       #Button1{
         color:white; 
         border-radius: 4px; 
         background-color:brown; 
         border-color:fuchsia;
        } 

        </Style> 

        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    

<div class="get">  
        <span>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Medical Services <br/>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;That You Can Trust&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
          </span>
    </div> 
    <div class="par">  
        <span>
          If you are looking at black casselleers on the web,<br/>              
           You may be very confused at the difference in price<br/>                    
           You may some for as low as each.
        <br />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <asp:Button ID="Button1" runat="server" Text="Get Start" Width="94px" BackColor="Maroon" ForeColor="White" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>

</asp:Content>
