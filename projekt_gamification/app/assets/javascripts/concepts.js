$(document).ready(function() {

	var progress = [];
	var i = 0;
	var perc = 0;
	var ctrl = $('body').data('controller');
	var act = $('body').data('action');

	if(ctrl == 'concepts' && act == 'index') {
		$.ajax({
			url: '/concepts/check-progress',
			type: 'get',
			success: function (data) {
				progress = data.progress;
				console.log(progress);
				$(".p-bar > span").each(function() {
					perc = (progress[i]/30)*100;
					console.log(perc);
			  		$(this)
			    	.data("origWidth", $(this).width())
			    	.width(0)
			    	.animate({
			     		 width: perc + '%' // or + "%" if fluid
			    	}, 1200);
			    	i += 1;
				});
			}		
		});
	}


	$(document).on("click", ".concept-btn", function(e) {

		var id = $(this).data('id');
		event.preventDefault()
		var unlocked_concept = $(this).attr('href');

		$.ajax({
			url: '/concepts/check-unlocked',
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

	$(document).on("click", ".main-cat", function() {

		var classList = $(this).attr('class').split(/\s+/);
		var c_id = $(this).data('id');
		var append_help = '#'+c_id;		

		if ($.inArray('listed', classList) == -1) {
			$(this).addClass('listed');

			$.ajax({
				url: '/concepts/get-subcategories',
				data: {
					id: c_id
				},
				type: 'get',
				success: function (data) {
					$(append_help).empty().append(data.html_content).removeClass(".inline");
				}
			});
		}
		else {
			$(this).removeClass('listed');
			$(this).removeClass('inline');
			$(append_help).empty();
		}
	});
});