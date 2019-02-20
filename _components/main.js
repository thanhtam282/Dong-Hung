// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	btnRipple('btn-ripple');
	nav.navInit();
	objectFitImages();
	slider.aboutInit();
});

$(window).scroll(function () { 
	if ($('.dh-nav-2').length) {
		slider.checkMenuScroll();
	}
	
});

