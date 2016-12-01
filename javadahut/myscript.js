$(document).ready(function() {
    console.log($);

    var div = document.getElementById("some-id");
	div.innerHTML = "HELLO I WAS WRITTEN BY JAVASCRIPT";
    var button = document.getElementById("click-me");
    var clickCount = 0;
   	button.addEventListener('click', function(event) {
        clickCount ++;
        div.innerHTML = "Button Clicked " + clickCount + " times!";
    });
});