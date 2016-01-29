

$(document).ready(function() {
  $("#log_link").on("click", "a", function(event) {
    event.preventDefault();
    $("#container-1").hide();
    $("#sleeplogs-content").show();
  });
})

$(document).ready(function() {
  $("#graph_link").on("click", "a", function(event) {
    event.preventDefault();
    $("#sleeplogs-content").hide();
    $("#container-1").show();
  });
})

Highcharts.theme = {
  colors: ["#319dc5"],
  font: "Helvetica Neue",
}

var highchartsOptions = Highcharts.setOptions(Highcharts.theme);

var barHighChart = function(dates, hours) {
  $('#container-1').highcharts({
    title: {
      text: ''
    },
    chart: {
      type: 'column',

    },
    legend: {
      enabled: false
    },
    xAxis: {
      categories: dates,
      title: {
        text: 'Dates'}
    },
    yAxis: {
      title: {
        text: 'Hours'
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
