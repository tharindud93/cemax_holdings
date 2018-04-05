/**
 * 
 */
function openNav() {
    document.getElementById("mySidenav").style.width = "15%";
    document.getElementById("main").style.marginLeft = "15%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}

var span = 0;

document.getElementById("span").addEventListener("click", function () {
    if (span == 0) {
        span = 1;
        openNav();
    } else {
        span = 0;
        closeNav();
    }
}, false);







function htmlbodyHeightUpdate(){
	var height3 = $( window ).height()
	var height1 = $('.nav').height()+50
	height2 = $('.main').height()
	if(height2 > height3){
		$('html').height(Math.max(height1,height3,height2)+10);
		$('body').height(Math.max(height1,height3,height2)+10);
	}
	else
	{
		$('html').height(Math.max(height1,height3,height2));
		$('body').height(Math.max(height1,height3,height2));
	}
	
}
$(document).ready(function () {
	htmlbodyHeightUpdate()
	$( window ).resize(function() {
		htmlbodyHeightUpdate()
	});
	$( window ).scroll(function() {
		height2 = $('.main').height()
			htmlbodyHeightUpdate()
	});
});
