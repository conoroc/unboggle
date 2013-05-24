//$(function(){
//
//$('#searchdrop').hide();
//$('#srchbtn').toggle(function() {
//    $('#searchdrop')
//        .addClass('active')
//        .next('form')
//        .animate({'height':'show'}, {
//            duration: 'slow',
//            easing: 'easeOutBounce'
//        });
//}, function() {
//    $(this)
//        .removeClass('active')
//        .next('form')
//        .slideUp();
//});
//});




$(document).ready(function(){

    if($('#homey')) {
        $('#srchbtn').hide();
    }
    $('#searchdrop').hide();
    $('#srchbtn').click(function(){
        if ($('#searchdrop').is(':hidden')){
            $('#searchdrop').slideDown('slow');
        }
        else{
            $('#searchdrop').slideUp('slow');
        }
    });

    $('#gosearch').click(function() {
        $('#searchdrop').slideUp('slow');

    });
});


//function closeForm(){
//    $('#messageSent').show('slow');
//    setTimeout('$('#messageSent').hide();$('#contactForm').slideUp('slow')', 2000);
//}