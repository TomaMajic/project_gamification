
$(document).on("click", ".open-subach", function(event) {

	event.preventDefault();
	var classList = $(this).attr('class').split(/\s+/);
	var form_id = $(this).data('id');
	var append_help = '#'+form_id;		
	console.log(append_help);

	if ($.inArray('listed', classList) == -1) {
		$(this).addClass('listed');

		$.ajax({
			url: '/achievements/get-categorized-achievements',
			data: {
				id: form_id
			},
			type: 'get',
			success: function (data) {
				$(append_help).empty().append(data.html_content);
			}
		});
	}
	else {
		$(this).removeClass('listed');
		$(append_help).empty();
	}
});