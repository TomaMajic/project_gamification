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
				console.log("Provjeria je moze li se level igrat i ostalo: " + data.completed);

				if(data.playable) {
					if(!data.completed) {
						window.location = playable_level;
					}
					else {
						alert("You have mastered this level!");					}
				}
				else {
					alert("This level still hasn't been unlocked!");
				}
			}
		});
		

	});
});