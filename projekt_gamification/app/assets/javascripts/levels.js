$(document).ready(function() {

	$(document).on("click", ".lvl", function(e) {

		var id = $(this).data('id');
		var $_this = $(this);
		event.preventDefault();
		var playable_level = $(this).attr('href');

		$.ajax({
			url: '/levels/check-playable',
			data: {
				id: id
			},
			type: 'get',
			success: function (data) {

				if(data.playable) {
					window.location = playable_level;
				}
				else {
					alert("Još niste otključali ovu razinu!");
				}
			}
		});

	});
});