jQuery.noConflict();
var j$ = jQuery;
j$(window).load(function(){
	// 메인 > 우측 플로팅 배너
	var rightFloatingBanner = function() {
	  var j$bannersWrap = j$('.bannersWrap');
	  var j$bannersOffset = j$bannersWrap.offset().top;
	  var j$bannersInner = j$('.bannersInner');

	  j$(window).scroll(function() {
		var j$winScrollTop = j$(window).scrollTop();

		if (j$winScrollTop > j$bannersOffset) {
		  j$bannersInner.addClass('fixed');
		} else {
		  j$bannersInner.removeClass('fixed');
		}
	  }).scroll();

	  var j$smallBanner = j$bannersInner.find('.smallBanner');
	  var j$bigBanner = j$bannersInner.find('.bigBanner');
	  var j$bigBannerImg = j$bigBanner.find('a img');
	  var j$bigBannerClose = j$bigBanner.find('.closeButton');

	  j$smallBanner.on('mouseover', function(e) {
		e.preventDefault();
		j$smallBanner.css('display', 'none');
		j$bigBannerImg.css({
		  width: '750px',
		  height: '320px',
		  opacity: '1'
		});
		j$bigBanner.css('display', 'block');
		j$bigBannerClose.show();
	  });

	  j$bigBannerClose.on('click', function() {
		j$bigBannerClose.hide();
		j$bigBannerImg.animate({
		  width: '100px',
		  height: '50px',
		  opacity: '0'
		}, 700);

		setTimeout(function() {
		  j$bigBanner.css('display', 'none');
		  j$smallBanner.css('display', 'block');
		}, 750);
	  });
	};
	rightFloatingBanner();
});