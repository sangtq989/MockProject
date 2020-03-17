$(document).ready(function() {
	$.validator.addMethod("notNumb", function(value){
		var reg = /^\D*$/;
		return value.trim().match(reg);
	}, ""
	);
	$("#parkingLotForm").validate({
		errorElement: 'div',
			errorPlacement: function(label, element) {
				label.addClass('alert alert-danger p-1 my-1');	
				label.insertAfter(element);
			},
		rules: {
			parkingName: {
				required: true,
				minlength: 2,
				maxlength: 50,
				notNumb: true
			},	
            place: {
				required: true,
				minlength: 5
			},
			area: {
				required: true,
				minlength: 2,
				maxlength: 50,
				notNumb: true
			},
			price: {
				required: true,
				minlength: 1,
				maxlength: 50,
				digits: true
			},
		},
		messages: {
			parkingName:{
				required: "Please enter parking name",
				minlength: "Booking office name must consist of at least 2 characters",
				maxlength: "Booking office name max 50 characters",
				notNumb: "Must be a characters"
			},

			place:{
				required: "Please choose place"
			},
            
            area:{
				required: "Please enter booking office name",
				minlength: "Booking office name must consist of at least 2 characters",
				maxlength: "Booking office name max 50 characters",
				notNumb: "Must be a characters"
			},


			price: {
				required: "Please enter price",
				minlength: "Price must be at least 1 characters",
				maxlength: "Price max 50 characters",
				digits: "Must be number"
			},
			

		}
	});
});