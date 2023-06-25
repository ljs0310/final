$(function() {
    /* 마우스 올리는곳에만 각각 내려오기*/
    $(".nav>li").mouseover(function() {
        $(this).children(".submenu").stop().slideDown(0);
    });
    $(".nav>li").mouseout(function() {
        $(this).children(".submenu").stop().slideUp(0);
    });
    

    // 마우스 올려놓으면 전체 메뉴 내려오기
    /*
    $(".nav").mouseover(function() {
        $(".submenu").stop().slideDown();
    });
    $(".nav").mouseout(function() {
        $(".submenu").stop().slideUp();
    })
    */
   const x = $("#imgslide>div");
   setInterval(function() {
        if(x.position().left == -2000) {
            x.animate({left:"-=1000px"}, function() {
             x.css("left", 0);
            })
        } else {
        x.animate({left:"-=1000px"})
     }
    },2000)
})
 // 왼쪽으로 1000px만큼 밀겠다
        // 1000px 하는 이유는 사진 크기가 1000이미 때문이다.