/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    for (var i = 0; i < 5; i++) {
        var radios = document.getElementsByName(i.toString());
        var val = localStorage.getItem(i.toString());
        for (var i = 0; i < radios.length; i++) {
            if (radios[i].value == val) {
                radios[i].checked = true;
            }
        }
        $('input[name="'+i.toString()+'"]').on('change', function () {
            localStorage.setItem(i.toString(), $(this).val());
        });
    }
});