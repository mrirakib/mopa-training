$(function() {
   // Initialize form validation on the registration form.
   // It has the name attribute "registration"
   $("form[name='training-create']").validate({
      // Specify validation rules
      rules: {
         // The key name on the left side is the name attribute
         // of an input field. Validation rules are defined
         // on the right side
         title: "required",
         issue_no: "required",
         issue_date: {
            required: true
         },
         archive_date: {
            required: true
         }
      },
      // Specify validation error messages
      messages: {
         title: "Please enter training title",
         issue_no: "Please enter training issue no",
         issue_date: {
            required: "Please enter issue date"
         },
         archive_date: "Please enter archive date"
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) {
         form.submit();
      }
   });
   $("form[name='update-user']").validate({
      // Specify validation rules
      rules: {
         // The key name on the left side is the name attribute
         // of an input field. Validation rules are defined
         // on the right side
         name: "required",
         email: {
            required: true,
            email: true
         },
         user_type: {
            required: true,
            number: true
         },
         status: {
            required: true,
            number: true
         }
      },
      // Specify validation error messages
      messages: {
         name: "Name field should not be empty",
         email: {
            required: "Please enter valid email",
            email: "Please enter valid email"
         },
         user_type: {
            required: "Please input user type",
            number: "Please input valid user type"
         },
         status: {
            required: "Please input user status",
            number: "Please input valid user status"
         }
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) {
         form.submit();
      }
   });
   $("form[name='training-type-create']").validate({
      // Specify validation rules
      rules: {
         // The key name on the left side is the name attribute
         // of an input field. Validation rules are defined
         // on the right side
         training_type: "required"
      },
      // Specify validation error messages
      messages: {
         training_type: "Training Type field should not be empty"
      },
      // Make sure the form is submitted to the destination defined
      // in the "action" attribute of the form when valid
      submitHandler: function(form) {
         form.submit();
      }
   });
});