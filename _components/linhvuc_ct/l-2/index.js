const linhvuc_detail = {
	linhvucDetailSlider: function () {
		let linhvucDetailSliders = new Swiper('.linhvuc-detail-1 .swiper-container', {
			slidesPerView: 2,
			spaceBetween: 20,
			breakpointsInverse: true,
			speed: 2000,
			loop: true,
			navigation: {
				nextEl: '.linhvuc-detail-1 .linhvuc-icon-next',
				prevEl: '.linhvuc-detail-1 .linhvuc-icon-prev',
			},
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
			breakpoints: {
				992: {
					slidesPerView: 5,
				},
				768: {
					slidesPerView: 3,
				}
			}
		})
	},
	linhvucDetailInit: function () {
		linhvuc_detail.linhvucDetailSlider();
	}
}