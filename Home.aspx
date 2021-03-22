<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BilBot.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row row-cols-2">
            <div class="col-6">
                <h1 class="display-2">Who is <small class="text-muted">BilBot</small></h1>
                <h2 class="display-6">Bil is a robot application that makes your car selection very easy.
    You just need to answer few questions.
    Bil will suggest you the best options of cars based on your answers!
    Its Fun! Try It! </h2>
            </div>
            <div class="col">
                <div class="row">
                    <img src="Images/EVE-icon.png" width="290" height="460" class="animated animate__fadeInUpBig"/>
                         
                        <button type="button" class="btn btn-outline-primary" onclick= "location.href='GetStarted.aspx'" >Lets get started!!</button>
                   
                </div>

            </div>
        </div>
    </div>



</asp:Content>
