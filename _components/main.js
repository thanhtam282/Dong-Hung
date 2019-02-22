// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	btnRipple('btn-ripple');
	btnRipple('frm-btn-submit');
	btnRipple('frm-btn');
	nav.navInit();
	objectFitImages();
	slider.aboutInit();
	// Lĩnh vực
	linhvuc_detail.linhvucDetailInit();
	slider.about_slider_1();
	slider.about_slider_2();
	linhvuc_detail.linhvucDetailInit();
	AOS.init();


	// Load Ajax
	$('body').on('click', '.load-more a', function (e) {
		e.preventDefault()
		let pageurl = $('.load-more a').attr('href');
		$.ajax({
			url: pageurl,
			data: {
				isajax: true
			},
			type: 'post',
			success: function (data) {
				$('.ajaxwrapper').append($(data).find('.ajaxwrapper').html());
				$('.ajaxPagerLinkWrapper').html($(data).find('.ajaxPagerLinkWrapper').html());
			},
		})
	})
});

$(window).scroll(function () {
	if ($('.dh-nav-2').length) {
		slider.checkMenuScroll();
	}

});