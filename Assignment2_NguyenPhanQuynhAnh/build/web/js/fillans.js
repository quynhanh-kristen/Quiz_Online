/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//function fillCorrectAnswer() {
var ans1 = document.getElementById("ans1").value;
var ans2 = document.getElementById("ans2").value;
var ans3 = document.getElementById("ans3").value;
var ans4 = document.getElementById("ans4").value;
var correctans = document.getElementById("correctans").value;


if (ans1 === correctans) {
    document.getElementById("chk1").checked = true;
} else if (ans2 === correctans) {
    document.getElementById("chk2").checked = true;
} else if (ans3 === correctans) {
    document.getElementById("chk3").checked = true;
} else if (ans4 === correctans) {
    document.getElementById("chk4").checked = true;
}

var chkb1 = document.getElementById("chk1");
var chkb2 = document.getElementById("chk2");
var chkb3 = document.getElementById("chk3");
var chkb4 = document.getElementById("chk4");
function fillValue() {
    if (chkb1.checked) {
        document.getElementById("correctans").value = document.getElementById("ans1").value;
        chkb2.checked = false;
        chkb3.checked = false;
        chkb4.checked = false;
    } else if (chkb2.checked) {
        document.getElementById("correctans").value = document.getElementById("ans2").value; 
        chkb1.checked = false;
        chkb3.checked = false;
        chkb4.checked = false;
    } else if (chkb3.checked) {
        document.getElementById("correctans").value =document.getElementById("ans3").value;
        chkb2.checked = false;
        chkb1.checked = false;
        chkb4.checked = false;
    } else if (chkb4.checked) {
        document.getElementById("correctans").value =document.getElementById("ans4").value;
        chkb2.checked = false;
        chkb3.checked = false;
        chkb1.checked = false;
    }else{
         document.getElementById("correctans").value = "";
    }
}

//}



