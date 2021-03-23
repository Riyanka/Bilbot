<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="GetStarted.aspx.cs" Inherits="BilBot.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="mainDivStyle">
        <div class="container">
            <div class="row row-cols-2">
                <div class="col-sm-10">
                    <div class="row align-items-start">
                        <div class="col">
                            <%--First question bubble--%>
                            <div id="q1" class="row demo animated bounceIn bubble">
                                <label class="form-check-label" id="q1labelStyle">
                                    What's your purpose?
                                </label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="purpose" id="Family" onclick="checkPurpose(this.value)" value="Family">
                                    <label class="form-check-label" for="Family">
                                        Family
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="purpose" id="Luxury" onclick="checkPurpose(this.value)" value="Luxury">
                                    <label class="form-check-label" for="Luxury">
                                        Luxury
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="purpose" id="Sports" onclick="checkPurpose(this.value)" value="Sports">
                                    <label class="form-check-label" for="Sports">
                                        Sports
                                    </label>
                                </div>
                            </div>
                            <%--Third question bubble--%>
                            <div id="q3" class="row demo animated bounceIn bubble">
                                <label class="form-check-label" for="exampleRadios1" id="q3labelStyle">
                                    Now pick a body style!
                                </label>
                                <div class="form-check" style="align-content: center">
                                    <input class="form-check-input" type="radio" name="style1" id="Coupe" onclick="checkStyle(this.value)" value="Coupe">
                                    <label class="form-check-label" for="Coupe">
                                        Coupe
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="style1" id="Hatchback" onclick="checkStyle(this.value)" value="Hatchback">
                                    <label class="form-check-label" for="Hatchback">
                                        Hatchback
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="style1" id="Sedan" onclick="checkStyle(this.value)" value="Sedan">
                                    <label class="form-check-label" for="Sedan">
                                        Sedan
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="style1" id="Suv" onclick="checkStyle(this.value)" value="Suv">
                                    <label class="form-check-label" for="Suv">
                                        Suv
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <%--Bilbot Image--%>
                            <img id="ImageButton2" src="Images/GSEve.png" />
                        </div>
                        <div class="col">
                            <%--Second question bubble--%>
                            <div id="q2" class="row demo animated bounceIn bubbleRight">
                                <label class="form-check-label" for="exampleRadios1" id="q2labelStyle">
                                    Which car fuel would you choose?
                                </label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="fuel" onclick="checkFuel(this.value)" value="Diesel" id="Diesel">
                                    <label class="form-check-label" for="Diesel">
                                        Diesel
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="fuel" onclick="checkFuel(this.value)" value="Electric" id="Electric">
                                    <label class="form-check-label" for="Electric">
                                        Electric
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="fuel" onclick="checkFuel(this.value)" value="Hybrid" id="Hybrid">
                                    <label class="form-check-label" for="Hybrid">
                                        Hybrid
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="fuel" onclick="checkFuel(this.value)" value="Natural" id="Natural">
                                    <label class="form-check-label" for="Natural">
                                        Natural Gas
                                    </label>
                                </div>
                            </div>
                            <%--Forth question bubble--%>
                            <div id="q4" class="row demo animated bounceIn bubbleRight">
                                <label class="form-check-label" for="exampleRadios1" id="q4labelStyle">
                                    Which size do you prefer?
                                </label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" onclick="checkSize(this.value)" value="Micro" id="Micro">
                                    <label class="form-check-label" for="Micro">
                                        Micro
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" onclick="checkSize(this.value)" value="Compact" id="Compact">
                                    <label class="form-check-label" for="Compact">
                                        Compact
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" onclick="checkSize(this.value)" value="Large" id="Large">
                                    <label class="form-check-label" for="Large">
                                        Large
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" onclick="checkSize(this.value)" value=" Extra Large" id="Extra">
                                    <label class="form-check-label" for="Extra">
                                        Extra Large
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" container col-sm-2">
                    <%--Selected results--%>
                    <div id="purposeSelected" class="animated bounceInRight">
                        <label class="form-check-label" id="psStyle">
                            Purpose
                        </label>
                        <input class="form-control" type="text" id="whichpurpose" readonly>
                    </div>
                    <div id="fuelSelected" class="animated bounceInRight">
                        <label class="form-check-label" id="fsStyle">
                            Fuel
                        </label>
                        <input class="form-control" type="text" id="whichfuel" readonly>
                    </div>
                    <div id="styleSelected" class="animated bounceInRight">
                        <label class="form-check-label" id="ssStyle">
                            Style
                        </label>
                        <input class="form-control" type="text" id="whichstyle" readonly>
                    </div>
                    <div id="sizeSelected" class="animated bounceInRight">
                        <label class="form-check-label" id="szsStyle">
                            Size
                        </label>
                        <input class="form-control" type="text" id="whichsize" readonly>
                    </div>
                        <button type="submit" class="btn btn-outline-success   animated bounceIn" id="submitStyle" onclick="passValueToUrl()">Submit</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
