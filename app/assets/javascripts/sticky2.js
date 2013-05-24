
// * Created with JetBrains RubyMine.
// * User: conorocallaghan
// * Date: 17/04/2013
// * Time: 13:55
// * To change this template use File | Settings | File Templates.


$(function(){ // document ready
    if ($("#stickyside").length) {
    var stickyTop = $('#stickyside').offset().top; // returns number

    $(window).scroll(function(){ // scroll event

        var windowTop = $(window).scrollTop(); // returns numb         er

        if (stickyTop < windowTop) {
            $('#stickyside').css({ position: 'fixed', top: '60px' });
        }
        else {
            $('#stickyside').css({ position: 'fixed', top: '80px' });
   }

    });
    }
});



