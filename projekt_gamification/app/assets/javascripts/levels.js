
$(document).ready(function() {

	$(document).on("click", ".lvl", function() {

		var id = $(this).data('id');
		var $_this = $(this);

		$.ajax({
			url: '/levels/check-playable',
			data: {
				id: id
			},
			type: 'get',
			success: function (data) {
				console.log("Provjeria je moze li se level igrat: " + data.playable);
			}
		});
		

	});
});