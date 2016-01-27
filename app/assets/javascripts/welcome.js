$(document).ready(function (){
  $("#welcome-title").css("opacity", 0).animate({ opacity: 1}, 1000);
  $("#welcome-description").css("opacity", 0).animate({ opacity: 1}, 2000);
  setTimeout(function() {
      $("#app-info").css("opacity", 0).animate({ opacity: 1}, 2000);
  }, 1000);
});
