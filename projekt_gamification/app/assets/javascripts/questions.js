$(document).ready(function() {
	
	$(document).on("click", ".answers", function() {
		// $(this).css("background-color", "green");
		console.log('provjeri jeli tocno');
		$('.answers').attr('disabled', 'disabled');
		var id = $(this).data('id');
		var $_this = $(this);
		// var id = $(this).attr('data-id')

		
		$.ajax({
			url: '/questions/check-correct',
			data: {
				id: id
			},
			type: 'get',
			success: function (data) {
				console.log('server je vratia jeli tocno: ', data.correct);

				if (data.correct) {
					$_this.css("background-color", "green");
				} else {
					$_this.css("background-color", "red");
				}

				//pricekaj i dohvati sljedece pitanje
				if (data.success) {
					setTimeout(getNewQuestion, 1000);	
				} else {
					setTimeout(function() {
						$('.question').empty().append('zavrsia si level s: ' + data.status + '/4');
					},1000)
				}
				

			}
		});

		
	});


});

function getNewQuestion() {
	var level_id = $('.question').data('level-id')
	$.ajax({
		url: '/questions/get-new-question',
		data: {
			level_id: level_id
		},
		type: 'get',
		success: function (data) {
			console.log('server je vratia novo pitanje', data);
			$('.question').empty().append(data.html_content);

		}
	});


}















