$(document).ready(function() {

  $('form').on('click', 'input:checkbox', function() {
  var checked = $(this).is(':checked');

    $.ajax({
        type: "POST",
        url: $(this).parent().attr('action'),
        data: { checked : checked },
        success: function(data) {

        console.log("Checked value is: " + checked);
        }
      });   // ajax
    }); // click function
}); // document ready
