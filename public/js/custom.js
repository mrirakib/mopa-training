$(document).ready(function () {
	$('#dtBasicExample').DataTable({
    // "ordering": false,
  });
	$('.dataTables_length').addClass('bs-select');

  var dashboard_div_height1 = 0;
  dashboard_div_height1 = $("#dashboard-div1").height();

  $("#dashboard-div3").height(500);
  $("#dashboard-div2").height(dashboard_div_height1);
  $("#dashboard-div3").height(dashboard_div_height1);

  //Numeric value input only
  //called when key is pressed in textbox
    $("#contact_no_1").keypress(function (e) {
       //if the letter is not digit then display error and don't type anything
       if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
          //display error message
          $("#errmsg").html("Digits Only").show().fadeOut("slow");
                 return false;
      }
     });
  //Numeric value input only

});
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});

function IsEmail(email) {
    var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if(!regex.test(email)) {
        return false;
    }else{
        return true;
    }
}
function IsPhoneNumber(contact_no) {
        var regex = /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
        if(!regex.test(contact_no) || contact_no.length < 7 || contact_no.length > 13) {
           return false;
        }else{
           return true;
        }
      }


$('#confirm-delete').on('show.bs.modal', function(e) {
            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
            
            $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
        });

