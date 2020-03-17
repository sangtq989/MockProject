$(document).ready(function() {
	$.validator.addMethod("notNumb", function(value){
		var reg = /^\D*$/;
		return value.trim().match(reg);
	},""); 
	$("#employeeForm").validate({
		errorElement: 'div',
			errorPlacement: function(label, element) {
				label.addClass('alert alert-danger p-1 my-1');	
				label.insertAfter(element);
			},
		rules: {
			employeeName: {
				required: true,
				maxlength: 50,
				notNumb: true
			},
			employeePhone: {
				required: true,
				maxlength: 50,
				digits: true
			},
			employeeBirthdate: "required",
			employeeAddress: {
				required: true,
				maxlength: 50
			},
			employeeEmail: {
				required: true,
				maxlength: 50,
				email : true
			},
			employeePassword: {
				required: true,
				maxlength: 100,
			},
			email: {
				required: true,
				email: true
			},
			employeeAccount: {
				required: true,
				maxlength: 50
			},
		}, 	
		messages: {
			employeeName: {
				required: "Please enter Name",
				maxlength: "Your full name is max 50 characters",
				notNumb: "Must be character"
			},
			employeePhone: {
				required: "Please enter Phone",
				maxlength: "Your Phone  is max 50 characters",
				digits: "your phone is number"
			},
			employeeBirthdate: {
				required: "please enter date",
			},
			employeeAddress: {
				required: "Please enter Address",
				maxlength: "Your Address is max 50 charcters"
			},
			employeeEmail: {
				required: "Please enter Email",
				maxlength: "Your Email  is max 50 characters",
				email : "Fail format email"
			},
			employeeAccount: {
				required: "Please Enter Account",
				maxlength: "Your Account is max 50 characters"
			},
			employeePassword: {
				required: "Please enter password",
				maxlength: "Your password is max 100 characters",
			},
		},

	});
});