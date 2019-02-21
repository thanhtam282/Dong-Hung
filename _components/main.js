// viết script, gọi function ở đây
$(document).ready(() => {
	header.headerInit();
	btnRipple('btn-ripple');
	btnRipple('frm-btn-submit(');
	nav.navInit();
	objectFitImages();
	slider.aboutInit();
});

$(window).scroll(function () { 
	if ($('.dh-nav-2').length) {
		slider.checkMenuScroll();
	}
	

	// Lĩnh vực
	linhvuc_detail.linhvucDetailInit();
});

