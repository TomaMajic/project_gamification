$(document).ready(function() {
	
	var q_num = 1;
	var u_l_id = 1;
	var user_achievements = []
	var stars = 0;

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
				console.log('Tvoji achievementi: ', user_achievements);
				if (data.achievement != null)
					user_achievements.push(data.achievement)

				if (data.correct) {
					$_this.css("background-color", "green");
					stars += 1;
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
								correct_answers = data.correctAnswers;
								wrong_answers = data.wrongAnswers;

								// Create correct answers string
								correct_answers_string = "";
								for(i = 0; i < correct_answers.length; i++) {
									correct_answers_string += ('<li>' + correct_answers[i] + '</li>');
								}

								// Create wrong answers string
								wrong_answers_string = "";
								for(i = 0; i < wrong_answers.length; i++) {
									wrong_answers_string += ('<li>' + wrong_answers[i] + '</li>');
								}

								// Create star string
								stars_string = "";
								for(i = 1; i < stars; i++) {
									stars_string += "X";
								}

								// Create achievements string
								achievements_string = "";
								for(i = 0; i < wrong_answers.length - 1; i++) {
									achievements_string += ('<li>' + user_achievements[i] + '</li>');
								}

								var html =  '<div class="review-questions-modal">' +
												'<h2 id="stars">' + stars_string + '</h2>' +
												'<h3>Tocno odgovorena pitanja: </h3>' +
												'<div class="correct-answers">' +
													'<ul class="correct-list">' +
														correct_answers_string +
													'</ul>' +
												'</div>' + 
												'<h3>Pogresno odgovorena pitanja: </h3>' +
												'<div class="wrong-answers">' +
													'<ul class="wrong-list">' +
														wrong_answers_string +
													'</ul>' +
												'</div>' + 
												'<h3>Achievementi</h3>' + 
												'<div class="achievements">' +
													'<ul class="achievement-list">' +
														achievements_string +
													'</ul>' +
												'</div>' +
											'</div>';

								__Modals.openModal();
								$('.modal').fadeIn(200).append(html);								
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
















