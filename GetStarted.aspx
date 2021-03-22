<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="GetStarted.aspx.cs" Inherits="BilBot.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height:520px; ">
    <div class="container">
        <div class="row row-cols-2">

            <div class="col-sm-10">
                <div class="row align-items-start">
                    <div class="col">
                        <div id="q1" class="row demo animated bounceIn bubble" style="margin-right: 10px; margin-top: 25px; padding-left: 10px;">
                            <label class="form-check-label" for="exampleRadios1" style="margin-top: 30px;">
                                What's your purpose?
                            </label>
                            <div class="form-check" style="align-content: center">
                                <input class="form-check-input" type="radio" name="purpose" id="exampleRadios1" onclick="checkPurpose(this.value)" value="Family" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Family
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="purpose" id="exampleRadios1" onclick="checkPurpose(this.value)" value="Luxury" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Luxury
                                </label>
                            </div>

                           
                             <div class="form-check">
                                <input class="form-check-input" type="radio" name="purpose" id="exampleRadios1" onclick="checkPurpose(this.value)" value="Sports" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                   Sports
                                </label>
                            </div>

                        </div>
                        <div id="q3" class="row demo animated bounceIn bubble" style="margin-top: 10px; padding-left: 10px; display: none;">
                            <label class="form-check-label" for="exampleRadios1" style="margin-top: 25px;">
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
                                <input class="form-check-input" type="radio" name="style1" id="exampleRadios1" onclick="checkStyle(this.value)" value="Suv" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Suv
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/GSEve.png" Width="280" Height="400" />
                    </div>
                    <div class="col">
                        <div id="q2" class="row demo animated bounceIn bubbleRight" style="margin-left: 10px; padding-left: 20px; display: none;">
                            <label class="form-check-label" for="exampleRadios1" style="margin-top: 20px;">
                                Which car fuel would you choose?
                            </label>
                            <div class="form-check" style="align-content: center">
                                <input class="form-check-input" type="radio" name="fuel"  onclick="checkFuel(this.value)" value="Diesel" >
                                <label class="form-check-label" for="exampleRadios1">
                                    Diesel
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="fuel"  onclick="checkFuel(this.value)" value="Electric" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Electric
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="fuel"  onclick="checkFuel(this.value)" value="Hybrid" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Hybrid
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="fuel"  onclick="checkFuel(this.value)" value="Natural" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Natural Gas
                                </label>
                            </div>

                        </div>
                        <div id="q4" class="row demo animated bounceIn bubbleRight" style="margin: 10px; padding-left: 20px; display: none;">
                            <label class="form-check-label" for="exampleRadios1" style="margin-top: 25px;">
                                Which size do you prefer?
                            </label>
                            <div class="form-check" style="align-content: center">
                                <input class="form-check-input" type="radio" name="size"  onclick="checkSize(this.value)" value="Micro" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Micro
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="size"  onclick="checkSize(this.value)" value="Compact" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Compact
                                </label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="size"  onclick="checkSize(this.value)" value="Large" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Large
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="size"  onclick="checkSize(this.value)" value=" Extra Large" checked>
                                <label class="form-check-label" for="exampleRadios1">
                                    Extra Large
                                </label>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class=" container col-sm-2">
                


                <div id="purposeSelected" style="display: none">
                    <label class="form-check-label" style="margin-top: 7px">
                        Purpose
                    </label>
                   
                    <input class="form-control" type="text" id="whichpurpose" readonly>
                </div>
                <div id="fuelSelected" style="display: none">
                
                    <label class="form-check-label" style="margin-top: 7px">
                       Fuel
                    </label>
                     <input class="form-control" type="text" id="whichfuel" readonly>
                 
                </div>

                <div id="styleSelected" style="display: none">
                    <label class="form-check-label" style="margin-top: 7px">
                        Style
                    </label>
                    <input class="form-control" type="text" id="whichstyle" readonly>
                </div>

                <div id="sizeSelected" style="display: none">
                    <label class="form-check-label" style="margin-top: 7px">
                        Size
                    </label>
                    <input class="form-control" type="text" id="whichsize" readonly>

                    
                </div>
                

               <%-- <button id="Button1" type="button" runat="server" class="btn btn-outline-success" style="margin-top: 30px; float: right;" OnClick="Button1_Click" >Submit</button>--%>

            </div>
            <div class="container animated bounceIn" id="belowPanel" style="display:none" >
                <div class="row">
                    <div class ="col-sm-3">
                 <label class="form-check-label" style="margin-top: 7px">
                     Purpose
                    </label>
                 <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class ="col-sm-3">
                <label class="form-check-label" style="margin-top: 7px">
                     Fuel
                    </label>
                 <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>   
                </div>
                  <div class ="col-sm-3">
                <label class="form-check-label" style="margin-top: 7px">
                      Style
                    </label>
                <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class ="col-sm-3">
                <label class="form-check-label" style="margin-top: 7px">
                     Size
                    </label>
                <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                         </div>
                   </div>
                <div class="row" style="margin:4px">
    
            <asp:Button ID="Button2" class="btn btn-outline-success" runat="server" Text="I confirm" OnClick="Button2_Click"  />
</div>
            </div>
            </div>

        

            
            

   

     
          </div>
</div></asp:Content>
