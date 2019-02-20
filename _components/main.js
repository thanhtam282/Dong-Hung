// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	btnRipple('btn-ripple');
	nav.navInit();
	objectFitImages();
<<<<<<< HEAD
	slider.aboutInit();
});

$(window).scroll(function () { 
	if ($('.dh-nav-2').length) {
		slider.checkMenuScroll();
	}
	
=======

	// Lĩnh vực
	linhvuc_detail.linhvucDetailInit();
	slider.about_slider_1();
	slider.about_slider_2();
>>>>>>> 299b6f459004bfcae441902e6d2d18a9348bf2a2
});

