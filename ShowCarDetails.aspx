<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ShowCarDetails.aspx.cs" Inherits="BilBot.ShowCarDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 53%;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style=" width=500px; margin-left=40px;  padding:20px" >
        <asp:TextBox ID="fuel" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="style" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="TextSize" runat="server" Visible="false"></asp:TextBox>
           <asp:TextBox ID="purpose" runat="server" Visible="false"></asp:TextBox>
       

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BorderStyle="Solid" CellPadding="15" ForeColor="#33CCFF">
        <Columns>
                <asp:BoundField DataField="car_company" HeaderText ="Company" />
                <asp:BoundField DataField="car_model" HeaderText ="Model" />
                <asp:BoundField DataField="car_style" HeaderText ="Style" />
            <asp:BoundField DataField="car_purpose" HeaderText ="Purpose" />
                <asp:BoundField DataField="car_fuel" HeaderText ="Fuel" />
                <asp:BoundField DataField="car_size" HeaderText ="Size" />
            <asp:BoundField DataField="car_price" HeaderText ="Price (SEK)" />
            <asp:BoundField DataField="car_topspeed" HeaderText ="Topspeed" />
           <%-- <asp:BoundField DataField="car_imageurl" HeaderText ="Image" />--%>
            <asp:HyperLinkField DataNavigateUrlFields="car_imageurl" HeaderText ="Full Description" DataTextField="car_imageurl"  />
            


            </Columns>
        <HeaderStyle BackColor="#333399" />
    </asp:GridView>    
       

    </div>
    <div class="container" style="margin-left:50px;  padding:20px">
        <div  class="row">
            <div class ="col-sm-3">
            <asp:Image ID="Image1" runat="server"  Visible="False" ImageUrl="~/Images/eva-png-2-Transparent-Images.png" />
                </div>
                <div class ="col-sm-9 " style="margin-top:30px; " >
             <asp:Label ID="Label1" runat="server" style="padding:20px"   Font-Bold="True" Font-Italic="True" Font-Size="XX-Large"  Height="108px" Text="Oops! Couldn't find a match. Please try again!" Visible="False" Width="750px"></asp:Label>
            </div>
            </div>
    </div>
    
</asp:Content>
