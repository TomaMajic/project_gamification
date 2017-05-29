$(document).on("click", ".rev-cat", function() {

	var classList = $(this).attr('class').split(/\s+/);
	var c_id = $(this).data('id');
	var append_help = '#'+c_id;		

	if ($.inArray('listed', classList) == -1) {
		$(this).addClass('listed');

		$.ajax({
			url: '/users/get-category-questions',
			data: {
				id: c_id
			},
			type: 'get',
			success: function (data) {
				console.log(data.html_content)
				$(append_help).empty().append(data.html_content).removeClass(".inline");
			}
		});
	}
	else {
		$(this).removeClass('listed');
		$(append_help).empty();
	}
});
