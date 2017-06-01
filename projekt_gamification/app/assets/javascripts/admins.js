
$(document).on("click", ".create", function() {

	var classList = $(this).attr('class').split(/\s+/);
	var form_id = $(this).data('id');
	var append_help = '#'+form_id;		

	if ($.inArray('listed', classList) == -1) {
		$(this).addClass('listed');

		$.ajax({
			url: '/admins/get-form-for-creation',
			data: {
				id: form_id
			},
			type: 'get',
			success: function (data) {
				console.log(data.html_content);
				$(append_help).empty().append(data.html_content);
			}
		});
	}
	else {
		$(this).removeClass('listed');
		$(append_help).empty();
	}
});
