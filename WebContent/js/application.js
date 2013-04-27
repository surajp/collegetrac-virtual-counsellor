$(function() {

	//Sliding in/out the feedback form
	$('#feedback-form img.feedback').click(function() {
	
		//Close rewards form if open
		if ($('#rewards-form').hasClass('active')) {	
			$('#rewards-form').animate({
				right: -275
				}, 'fast');
			$('#rewards-form').removeClass('active');
		}
		
		var $feedback = $(this).parent();
		if($feedback.hasClass('active')) {
			$feedback.stop().animate({
				right: -280
			}, 'fast').removeClass('active');
		} else {				
			$feedback.stop().animate({
				right: 0
			}, 'fast').addClass('active');
		}
	});
		
	//Sliding in/out the rewards form
	$('#rewards-form img.rewards').click(function() {
		var $feedback = $(this).parent();
		if($feedback.hasClass('active')) {
			$feedback.stop().animate({
				right: -275
			}, 'fast').removeClass('active');
		} else {				
			$feedback.stop().animate({
				right: 0
			}, 'fast').addClass('active');
		}
	});

    $('#form-feedback').bind('submit', function(e){
        e.preventDefault();

        var data = {
            'type': $("#id_type").val(),
            'email': $("#id_email").val(),
            'comments': $("#id_comments").val()
        };

        $.post('/feedback/', data, function(response){
            if(response.success) {
                $('#feedback-form img.feedback').click();
            } else {
                $("#feedback-error").show();
                // TODO: Do something to indicate the errors
            }
        });
    });

	// Login Modal stuff
	$('#show-registration').click(function(){
		$('#login').hide();
		$('#register').slideDown();
		$('.registration-prompt').hide();
		$('.login-prompt').show();
	});

	$('#show-login').click(function(){
		$('#register').hide();
		$('#login').slideDown();
		$('.login-prompt').hide();
		$('.registration-prompt').show();
	});
	
	// Landing Page stuff
	// Login Modal stuff
	$('#show-signup-landing').click(function(){
		$('#login-landing').hide();
		$('#signup-landing').slideDown();
		$('.signup-prompt-landing').hide();
		$('.login-prompt-landing').show();
	});

	$('#show-login-landing').click(function(){
		$('#signup-landing').hide();
		$('#login-landing').slideDown();
		$('.login-prompt-landing').hide();
		$('.signup-prompt-landing').show();
	});
	
    $(".genders button").click(function(e) {
        var val = $(this).text().toLowerCase();
        $("#gender").val(val);
    })
	
	//Excerpt show/hide
	$('.seeExcerpt').live('click', function() {
	
		//Assign variables
		var excerpt = $(this).closest("div").next(".excerpt");
		var excerptArrow = $(this).find("div.excerptArrow");
		
		//Show/hide the excerpt
		excerpt.slideToggle(250);
		
		//Is the arrow already pointing up?
		if(excerptArrow.hasClass('up')) {
		
			//If yes, remove it
			excerptArrow.removeClass("up");
		} else {
		
			//Otherwise, add it
			excerptArrow.addClass("up");
		}
	});

});