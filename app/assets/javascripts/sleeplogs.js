$(document).ready(function() {
  $("#sleeplogs-links").on("click", "a", function(event) {
    event.preventDefault();
    $("#sleeplogs-content").fadeToggle();
  })
})

var barHighChart = function(dates, hours) {
  $('#container-1').highcharts({
    chart: {
      type: 'column'
    },
    legend: {
      enabled: false
    },
    xAxis: {
      categories: dates
    },
    yAxis: {
      title: {
        text: 'Hours Slept'
      }
    },
    rangeSelector: {
      allButtonsEnabled: true,
      selected: 2
    },
    series: [{
      data: hours
    }]
  });
};

$(function () {
  $.ajax({
    method: "GET",
    url: "/sleeplogs",
    dataType: "json"
  })

  .done(function(data){
    var dates = data[0];
    var hours = data[1];
    barHighChart(dates, hours);
  });

});
