window.ReportsKits = {};

$(document).ready(function() {
  $('.reports_kit_report').each(function(index, el) {
    var el = $(el)
    var reportClass = el.data('report-class');
    new ReportsKits[reportClass]().render({ 'el': el });
  });
});
