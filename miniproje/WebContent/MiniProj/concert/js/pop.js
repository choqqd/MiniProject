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
           
            $('#my-button2').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up2').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                e.preventDefault();
                   $('#element_to_pop_up2').bPopup();
            });
        });
    })(jQuery);


(function($) {
         // DOM Ready
        $(function() {
           $('#my-button3').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up3').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                e.preventDefault();
                $('#element_to_pop_up3').bPopup();
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
        $('element_to_pop_up4').bPopup({
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
                $('#element_to_pop_up4').bPopup();
            });
        });
    })(jQuery);




 
function open_in_frame(url) {
	$('#element_to_pop_up').attr('src', url);
}













function doNotReload(){
    if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) || (event.keyCode == 116) ) {
        event.keyCode = 0;
        event.cancelBubble = true;
        event.returnValue = false;
    } 
}
document.onkeydown = doNotReload;