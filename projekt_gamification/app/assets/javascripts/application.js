// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


__Modals = {
	openModal: function() {
		//open fulloverlay
		$('.full-overlay').fadeIn(200);
		$('body').addClass('modal-open');
	},
	modalShutdown: function(argument) {
		if (argument == undefined || argument == null) {
			$modal = $('.modal');
		}

		$modal.fadeOut(100, function () {
			$modal.empty();
			$('.full-overlay').delay(100).fadeOut(200);
			if (argument != undefined) {
				$('.non-disposable').delay(100).fadeOut(200);
			}

			$modal.removeClass(function(index, _class) { 
			  return _class.replace(/(^|\s)+modal\s+/, ''); 
			});

			$modal.addClass('modal');
		});

		$('body').removeClass('modal-open');
	}
}

$(document).on('click', '.full-overlay', function(e) {
	if (e.currentTarget == e.target && !$('.signup-modal-active').length){
		__Modals.modalShutdown();
	}
});
