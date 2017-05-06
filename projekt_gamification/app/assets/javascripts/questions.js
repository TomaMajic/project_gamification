$(document).ready(function() {
	
	var q_num = 1;
	var u_l_id = 1;

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
				id: id,
				q_num: q_num,
				u_l_id: u_l_id
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
					q_num += 1;
					u_l_id = data.new_id;
					console.log(u_l_id);
					setTimeout(function() {
						getNewQuestion(q_num, u_l_id);
					}, 1000);	
				} else {
					setTimeout(function() {
						var html =  '<div class="score">' +
										'zavrsia si level s: ' + data.status + '/4' +
									'</div>' +
									'<div class="review">' +	
										'<button class="review-btn btn moj-btn">Review</button>' +
									'</div>';

						$('.question').empty().append(html).css("font-size", "30px");
					},1000);

					$(document).on("click", ".review-btn", function() {

						$.ajax({
							url: '/questions/get-last-questions-for-review',
							data: {
							},
							type: 'get',
							success: function (data) {
								console.log('server je izlista pitanja od ovog levela', data);
								__Modals.openModal()
								$('.modal').fadeIn(200).append("ALALALALALALALALLALALALALLAALLA");								
							}
						});
					});
				}
			}
		});
	});

});

function getNewQuestion(q_num, u_l_id) {
	console.log('ovo je broj smece:' + q_num);
	var level_id = $('.question').data('level-id');
	$.ajax({
		url: '/questions/get-new-question',
		data: {
			level_id: level_id,
			q_num: q_num,
			u_l_id: u_l_id
		},
		type: 'get',
		success: function (data) {
			console.log('server je vratia novo pitanje', data);
			$('.question').empty().append(data.html_content);
		}
	});


}
















