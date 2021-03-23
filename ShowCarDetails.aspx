<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ShowCarDetails.aspx.cs" Inherits="BilBot.ShowCarDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style=" width=500px; margin-left=40px;  padding:20px" >
        <asp:TextBox ID="fuel" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="style" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="TextSize" runat="server" Visible="false"></asp:TextBox>
           <asp:TextBox ID="purpose" runat="server" Visible="false"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BorderStyle="Solid" CellPadding="15" ForeColor="Gray">
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
        <HeaderStyle BackColor="black" />
    </asp:GridView>    
    </div>
    <div class="container" style="margin-left:50px;  padding:20px">
        <div  class="row">
            <div class ="col-sm-3">
            <asp:Image ID="Image1" runat="server"  Visible="False" ImageUrl="~/Images/eva-png-2-Transparent-Images.png" />
                </div>
                <div class ="col-sm-9 "  >
             <asp:Label ID="Label1" runat="server" style="padding:20px" class="display-6"  Text="Oops! Couldn't find a match." Visible="False" Width="750px"></asp:Label>
                    <a id="tryagainStyle" class="display-6"  href="GetStarted.aspx">Click here to try again!</a>  
            </div>
            <div>
            </div>
            </div>
    </div>
</asp:Content>
