(function ($) {
    "use strict";
    //pre-loader
    $("#pre-loader").fakeLoader({

timeToHide:1200, //Time in milliseconds for fakeLoader disappear
zIndex:"9999999",//Default zIndex
spinner:"spinner6",//Options: 'spinner1', 'spinner2', 'spinner3', 'spinner4', 'spinner5', 'spinner6', 'spinner7'
bgColor:"#2ecc71", //Hex, RGB or RGBA colors
        
        

});
    //nav parallax
    $(window).scroll(function () {
        var scrollh = $(this).scrollTop();
        if (scrollh == 0) {
            $(".navbar-default").css({
                'padding': '15px'
                , 'transition': '.5s'
                , 'background-color': 'transparent'
            });
            $(".navbar-brand ").css({
                'margin-top': '0px'
                , 'transition': '.5s'
            , });
            $(".navbar-default .navbar-nav > li > a  ").css({
                'margin-top': '0px'
                , 'transition': '.5s'
            , });
            $(".navbar-brand > img ").css({
                'display': 'block'
                , 'height': '35px'
            , });
        }
        else {
            $(".navbar-default").css({
                'padding': '10px'
                , 'transition': '.5s'
                , 'background-color': '#222'
            , });
            $(".navbar-brand").css({
                'margin-top': '0px'
                , 'transition': '.5s'
            , });
            $(".navbar-default .navbar-nav > li > a  ").css({
                'margin-top': '0px'
                , 'transition': '.5s'
            , });
            $(".navbar-brand > img ").css({
                'display': 'block'
                , 'height': '20px'
            , });
        }
    });
    //particels js
    var particles = Particles.init({
      		selector: '.parralax-particels',
            color: ['#2BC084', '#404B69', '#DBEDF3'],
            connectParticles: true,
            maxParticles: 150,
           sizeVariations:15,

    });
    //scroll nav 
    $(function () {
        $.scrollIt();
    });
    //isotop portfolio
    var $grid = $('.portfolio-active').isotope({
        itemSelector: '.grid-item'
        , percentPosition: true
        , masonry: {
            // use outer width of grid-sizer for columnWidth
            columnWidth: 1
        }
    });
    // portfolio filter items on button click
    $('.portfolio-menu').on('click', 'button', function () {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({
            filter: filterValue
        });
    });
    //for portfolio menu active class
    $('.portfolio-menu button').on('click', function (event) {
        $(this).siblings('.active').removeClass('active');
        $(this).addClass('active');
        event.preventDefault();
    });
    //portfolio image popup
    $('.portfolio-popup-active').magnificPopup({
            type: 'image',
            gallery: {
                enabled: true,
                navigateByImgClick: true,
                preload: [0, 1]
            },

});
    //testmonial slider
     
    $('.testmonial-item-group').owlCarousel({
    loop:true,
    margin:10,
    navText:false,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:3,
            nav:false
        },
        1000:{
            items:1,
            nav:true,
            loop:false
        }
    }
});
      //counter
    $('.counter-num').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 4000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
});

    //blog slider
     
    $('.blog-post-active').owlCarousel({
    loop:true,
    dots:false,
    margin:10,
    autoplay:true,
    autoplayTimeout:2000,    
    navText:['Back','Next'],
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:1,
            nav:false
        },
        1000:{
            items:3,
            nav:true,
            loop:false
        }
    }
});
    
    
})(jQuery);