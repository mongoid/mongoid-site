$(document).ready(function() {
  $(".scrollable").scrollable({circular: true}).navigator("#slider_nav");

  // make khan talk
  $(".khan").live("mouseover", function() {
    var self = $(this);
    setTimeout(function() {
      self.siblings(".quote").show();
    }, 1000);
  });
});
