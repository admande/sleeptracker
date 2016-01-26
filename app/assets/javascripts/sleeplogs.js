$(document).ready(function() {
  $("#sleeplogs-links").on("click", "a", function(event) {
    event.preventDefault();
    $("#sleeplogs-content").fadeToggle();
  })
})


$(function () {
  $.ajax({
    method: "GET",
    url: "/sleeplogs",
    dataType: "json"
  })

  .done(function(data){
    var dates = data[0];
    debugger;
    var dateFormatter = function(dates) {

    }
    var hours = data[1];
    // debugger;
    $('#container-1').highcharts({
      chart: {
        type: 'column'
      },
      legend: {
        enabled: false
      },
      xAxis: {
        categories: dates
        // ["0001-01-01", "0111-01-01", "0142-03-24", "1970-03-04", "1989-08-02", "2015-01-02", "2015-02-24", "2015-03-13", "2015-10-24", "2015-12-24", "2016-01-01", "2016-01-02", "2016-01-03", "2016-01-07", "2016-01-08", "2016-01-09", "2016-01-10", "2016-01-11", "2016-01-12", "2016-01-13", "2016-01-14", "2016-01-15", "2016-01-16", "2016-01-17", "2016-01-18", "2016-01-19", "2016-01-20", "2016-01-22", "2016-01-23", "2016-01-24"]
        // labels: {
        //   format: '{value:%m-%d}',
        //   rotation: 45,
        //   align: 'left'
        // }
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

  });

});
