/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function startTimer(duration, display) {
    var start = Date.now(),
            diff,
            minutes,
            seconds;
    function timer() {
        // get the number of seconds that have elapsed since 
        // startTimer() was called
        
            diff = duration - (((Date.now() - start) / 1000) | 0);
        

        // does the same job as parseInt truncates the float
        minutes = (diff / 60) | 0;
        seconds = (diff % 60) | 0;

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;
        sessionStorage.setItem("currentTime", minutes * 60 + seconds);

        if (diff <= 0) {
            // add one second so that the count down starts at the full duration
            // example 05:00 not 04:59
            display.textContent = "TIME UP !!!";
            sessionStorage.clear();
            setTimeout(submitTest(), 7000);
        }
        
    }
    ;
    // we don't want to wait a full second before the timer starts
    timer();
    setInterval(timer, 1000);
}

window.onload = function () {
    var fiveMinutes = sessionStorage.getItem("currentTime"),
            display = document.querySelector('.number');    
    if(fiveMinutes === null || fiveMinutes == 0)
        fiveMinutes = 60 * 30;
    startTimer(fiveMinutes, display);   
};

function submitTest(){
    document.getElementById("btAction").click();
}
