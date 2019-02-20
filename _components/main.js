// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	btnRipple('btn-ripple');
	nav.navInit();
	objectFitImages();
	slider.aboutInit();
	// Lĩnh vực
	linhvuc_detail.linhvucDetailInit();
	slider.about_slider_1();
	slider.about_slider_2();
	linhvuc_detail.linhvucDetailInit();

});

$(window).scroll(function () { 
	if ($('.dh-nav-2').length) {
		slider.checkMenuScroll();
	}

});