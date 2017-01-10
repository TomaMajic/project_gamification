$(document).ready(function() {

	$(document).on("click", ".concept-btn", function(e) {

		var id = $(this).data('id');
		event.preventDefault()
		var unlocked_concept = $(this).attr('href');

		$.ajax({
			url: '/concepts/check_unlocked',
			data: {
				id: id
			},
			type: 'get',
			success: function (data) {
				console.log("Provjeria je moze li se otvorit concept: " + data.unlocked);

				if(data.unlocked) {
					window.location = unlocked_concept;
				}
				else {
					alert("You're not skilled enough for this category!");
				}
			}
		});
		

	});
});