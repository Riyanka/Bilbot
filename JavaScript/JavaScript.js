function checkPurpose(purpose) {
    document.getElementById("whichpurpose").value = purpose;
    var x = document.getElementById("purposeSelected");
    x.style.display = "block";
    var showQ2 = document.getElementById("q2");
    showQ2.style.display = "block";
}
function checkFuel(fuel) {
    document.getElementById("whichfuel").value = fuel;
    var x = document.getElementById("fuelSelected");
    x.style.display = "block";
    var showQ3 = document.getElementById("q3");
    showQ3.style.display = "block";
}
function checkStyle(style1) {
    document.getElementById("whichstyle").value = style1;
    var x = document.getElementById("styleSelected");
    x.style.display = "block";
    var showQ4 = document.getElementById("q4");
    showQ4.style.display = "block";
}
function checkSize(size) {
    document.getElementById("whichsize").value = size;
    var x = document.getElementById("sizeSelected");
    x.style.display = "block";
    var y = document.getElementById("submitStyle");
    y.style.display = "block";
}
function passValueToUrl() {
    var purposeVal = document.getElementById("whichpurpose").value;
    var fuelVal = document.getElementById("whichfuel").value;

    var styleVal = document.getElementById("whichstyle").value;
    var sizeVal = document.getElementById("whichsize").value;
    
    event.preventDefault();
    location.href = 'ShowCarDetails.aspx?fuel=' + fuelVal + '&style=' + styleVal + '&size=' + sizeVal + '&purpose=' + purposeVal;
}

