<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="BilBot.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row align-items-start">
    <div class="col">
     <div class="row demo animated bounceInLeft bubble" style=" margin-right: 10px; margin-top: 35px; padding-left:10px;">
                        <label class="form-check-label" for="exampleRadios1" style="margin-top:30px;">
                            
                 What's your budget?
                        </label>
                        <div class="form-check" style="align-content: center">
                            <input class="form-check-input" type="radio" name="price" id="exampleRadios1" onclick="checkPrice(this.value)" value="100000 kr  - 150000 kr" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                100000 kr  - 150000 kr
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="price" id="exampleRadios1" onclick="checkPrice(this.value)" value="150000 kr  - 200000 kr" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                150000 kr  - 200000 kr
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="price" id="exampleRadios1" onclick="checkPrice(this.value)" value="200000 kr  - 250000 kr" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                200000 kr  - 250000 kr
                            </label>
                        </div>
                        
                    </div>
      <div class="row demo animated bounceInLeft bubble" style="margin-top: 10px; padding-left:10px;">
                        <label class="form-check-label" for="exampleRadios1" style="margin-top:25px; ">
                           
                 Now pick a body style!
                        </label>
                        <div class="form-check" style="align-content: center">
                            <input class="form-check-input" type="radio" name="style1" id="exampleRadios1" onclick="checkStyle(this.value)" value="Coupe" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Coupe
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="style1" id="exampleRadios1" onclick="checkStyle(this.value)" value="Hatchback" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Hatchback
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="style1" id="exampleRadios1" onclick="checkStyle(this.value)" value="Sedan" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Sedan
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="style1" id="exampleRadios1" onclick="checkStyle(this.value)" value="SUV" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                SUV
                            </label>
                        </div>
                    </div>  
    </div>
    <div class="col">
       <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/GSEve.png" Width="320" Height="500"  />
    </div>
    <div class="col">
       <div class="row demo animated bounceInRight bubbleRight" style=" margin-left: 10px; padding-left:20px;">
                        <label class="form-check-label" for="exampleRadios1" style="margin-top:20px; ">
                             Which car fuel would you choose?
                        </label>
                        <div class="form-check" style="align-content: center">
                            <input class="form-check-input" type="radio" name="fuel" id="exampleRadios" onclick="checkFuel(this.value)" value="Diesel Cars" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Diesel Cars
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="fuel" id="exampleRadios" onclick="checkFuel(this.value)" value="Electric Cars" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Electric Cars
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="fuel" id="exampleRadios" onclick="checkFuel(this.value)" value="Hybrid Cars" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Hybrid Cars
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="fuel" id="exampleRadios" onclick="checkFuel(this.value)" value="Natural Cars" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Natural Gas Cars
                            </label>
                        </div>

                    </div>
        <div class="row demo animated bounceInRight bubbleRight" style=" margin:10px;padding-left:20px;">
                        <label class="form-check-label" for="exampleRadios1" style="margin-top:25px; ">
                            
                            Which size do you prefer?
                        </label>
                        <div class="form-check" style="align-content: center">
                            <input class="form-check-input" type="radio" name="size" id="exampleRadios1" onclick="checkSize(this.value)" value="Micro" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Micro
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="size" id="exampleRadios1" onclick="checkSize(this.value)" value="Compact" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Compact
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="size" id="exampleRadios1" onclick="checkSize(this.value)" value="Large" checked>
                            <label class="form-check-label" for="exampleRadios1">
                               Large
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="size" id="exampleRadios1" onclick="checkSize(this.value)" value=" Extra Large" checked>
                            <label class="form-check-label" for="exampleRadios1">
                                Extra Large
                            </label>
                        </div>

                    </div>
    </div>
  </div>
    </div>



   
  
        
</asp:Content>
