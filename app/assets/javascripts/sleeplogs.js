$(document).ready(function() {
  $("#sleeplogs-links").on("click", "a", function(event) {
    event.preventDefault();
    $("#sleeplogs-content").fadeToggle();
  })
})
