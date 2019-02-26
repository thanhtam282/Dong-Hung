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
	addClassByLocation();

	if (window.matchMedia("(max-width: 1199.99px)").matches) {
		let headerHeight = $('header').outerHeight();
		$('main').css({
			'padding-top': headerHeight + 'px'
		})
	}

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

function addClassByLocation() {
	let i = window.location.pathname
	if (i.search('linh-vuc-hoat-dong') > 0) {
		$('.dh-header .header-nav li:nth-child(3) a').addClass('active')
	} else if (i.search('truyen-thong') > 0) {
		$('.dh-header .header-nav li:nth-child(5) a').addClass('active')
	} else if (i.search('co-hoi-nghe-nghiep') > 0) {
		$('.dh-header .header-nav li:nth-child(6) a').addClass('active')
	}
}