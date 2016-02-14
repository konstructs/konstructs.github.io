$(document).ready(function() {

  var videos = $("iframe[src*=youtube]");
  videos.each(function() {
    $(this).data("aspect_ratio", this.height / this.width)
      .removeAttr('height').removeAttr('width');
  });

  $(window).resize(function() {
    videos.each(function() {
      var parwith = $(this).parent().width();
      $(this).width(parwith).height(parwith * $(this).data("aspect_ratio"));
    });
  }).resize();

});
