$(document).ready(function (){
  $("signup-partial").hide();
  $("#welcome-title").css("opacity", 0).animate({ opacity: 1}, 1000);
  $("#welcome-description").css("opacity", 0).animate({ opacity: 1}, 2000);
  setTimeout(function() {
      $("#app-info").css("opacity", 0).animate({ opacity: 1}, 2000);
  }, 0);
});

$(document).ready(function() {
  $('#bottom_right_sign_up').click(function() {
    event.preventDefault();
    $('#login-partial').hide();
    $('#signup-partial').show();
;
  })
});

$(document).ready(function() {
  $('#bottom_right_sign_in').click(function() {
    event.preventDefault();
    $('#login-partial').show();
    $('#signup-partial').hide();
;
  })
});
