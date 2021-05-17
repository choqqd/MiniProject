(function($) {
         // DOM Ready
        $(function() {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('#my-button').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                // Prevents the default action to be triggered. 
                e.preventDefault();
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();
            });
        });
    })(jQuery);

(function($) {
         // DOM Ready
        $(function() {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('#my-button2').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                // Prevents the default action to be triggered. 
                e.preventDefault();
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();
            });
        });
    })(jQuery);


(function($) {
         // DOM Ready
        $(function() {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('#my-button3').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                // Prevents the default action to be triggered. 
                e.preventDefault();
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();
            });
        });
    })(jQuery);


(function($) {
         // DOM Ready
        $(function() {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('#my-button4').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                // Prevents the default action to be triggered. 
                e.preventDefault();
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();
            });
        });
    })(jQuery);







$(function(){
  

	$('.close').on('click', function(){ //레이어 닫을때
		$(this).parents('#element_to_pop_up').hide();
		$('.dim').hide();
		$('.player').empty();
	})
  
  $('.dim').on('click', function(){
    $(this).hide();
    $('#element_to_pop_up').hide();
    $('.player').empty();
  })
  
});














function doNotReload(){
    if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) || (event.keyCode == 116) ) {
        event.keyCode = 0;
        event.cancelBubble = true;
        event.returnValue = false;
    } 
}
document.onkeydown = doNotReload;