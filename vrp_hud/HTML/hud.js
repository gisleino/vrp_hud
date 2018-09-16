$(document).ready(function(){
    window.addEventListener( 'message', function( event ) {
        var item = event.data;
        $(".container-fluid").css("display",item.showHUD? "none":"block");
        $("#sede").css("width",100 - item.sede + "%");
        $("#fome").css("width",100 - item.fome + "%");
    });
});