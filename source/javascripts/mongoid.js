$(function() {

  var $win = $(window);

  var $subnav = $(".subnav");
  var $pagenav = $(".page-nav");

  var subnavTop = $(".subnav").length && $(".subnav").offset().top - 60;
  var pagenavTop = $(".page-nav").length && $(".page-nav").offset().top - 120;

  var subnavFixed = 0;
  var pagenavFixed = 0;

  var scrollSubNav = function() {
    var _, scrollTop = $win.scrollTop();

    if (scrollTop >= subnavTop && !subnavFixed) {
      subnavFixed = 1;
      $subnav.addClass("subnav-fixed");
    }
    else if (scrollTop <= subnavTop && subnavFixed) {
      subnavFixed = 0;
      $subnav.removeClass("subnav-fixed");
    }
  }

  var scrollPageNav = function() {
    var _, scrollTop = $win.scrollTop();

    console.log(pagenavTop);
    console.log(scrollTop);

    if (scrollTop >= pagenavTop && !pagenavFixed) {
      console.log("add");
      pagenavFixed = 1;
      $pagenav.addClass("page-nav-fixed");
    }
    else if (scrollTop <= pagenavTop && pagenavFixed) {
      console.log("remove")
      pagenavFixed = 0;
      $pagenav.removeClass("page-nav-fixed");
    }
  }

  scrollSubNav();
  scrollPageNav();

  $win.bind("scroll", scrollSubNav);
  $win.bind("scroll", scrollPageNav);
});
