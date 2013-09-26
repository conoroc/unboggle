$(function() {
stars = $("#rate").data('rating');
for(i=1; i<=10; i++){
    if(i<=stars){
        $('#star_id_' + i).addClass('on');
    } else{
        $('#star_id_' + i).removeClass('on');
    }
}

});

check_stars = (function() {

    stars = $("#rate").data('rating');
    for(i=1; i<=10; i++){
        if(i<=stars){
            $('#star_id_' + i).addClass('on');
        } else{
            $('#star_id_' + i).removeClass('on');
        }
    }

});