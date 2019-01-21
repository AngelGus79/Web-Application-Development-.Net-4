$(document).ready(function () {
    //console.log('funcionando');

    //replace the text from the tags with a class named h1
    //1 for a class
    //$('h1').html('This is selected by tag');
    ////2 for a tag
    //$('.myClass').html('this is selected by myClass class');
    ////3 for a ID
    //$('#myId').html('this is select by myId id');

    //the opertations from java would be
    //document.querySelector('h1').innerHTML = "Selected by h1 tag";
    //document.querySelector('.myClass').innerHTML = "Selected from myClass class";
    //document.querySelector('#myId').innerHTML = "Selected from myId";

    //$('.col-12 h1:first').html('this is a change in the first h1 tag');
    //$('.col-12 h1:last').html('this is a change in the last h1 tag');

    //Adding and removing a class
    //$('.col-12 h1:first').addClass('text-center');
    //$('.col-12 h1:last').addClass('text-right');
    //$('.col-12 h1:first').removeClass('text-center');

    //append content
    //$('.col-12 h1:first').append('<p> this is added at the end of h1</p>');
    //$('.col-12 h1:last').prepend('<p> this is added at the first of h1</p>');

    //making changes with the styles 
    $('.col-12 h1').css({ color: 'black', background: 'white' });

    //hide an element
    $('.col-12 h1:last').hide();

    //adding attribute
    $('img').attr('src', 'data:image/jpeg;base64,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');

    //working with events

    var img = $('img');
    $('#btnAdd').click(function () {

        img.addClass('w-100');
    });

    $('#btnRemove').click(function () {
        img.removeClass('w-100');
        //img.hide();
    })

    $('#btnToggle').click(function () {
       // img.toggle();
        img.toggleClass('w-100');

    });

});

$('form').submit(function (e) {
    e.preventDefault();
    var value = $('#idInput').val();
    console.log(value);
});

$('#btnShow').click(function() {
    $('#img').show(1000);

});

$('#btnHide').click(function() {
    $('#img').hide(1000);

});
$('#btnToggle1').click(function() {
    $('#img').toggle(1000);

});
$('#btnFadeIn').click(function () {
    $('#img').fadeIn(1000);
});
$('#btnFadeOut').click(function () {
    $('#img').fadeOut(1000);
});
$('#btnFadeToogle').click(function () {
    $('#img').fadeToggle(1000);
});

$('#btnAnimation').click(function () {
    $('#square').animate({ left: '250px', opacity: '0.5', heigh: '200px', width: '200px' }, 3000,
        function () { $('#square').animate({ left: '-250px', opacity: '1', heigh: '100px', width: '100px' }, 3000)});
});