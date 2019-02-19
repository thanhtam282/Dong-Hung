const linhvuc_detail = {
	linhvucDetailSlider: function () {
		let linhvucDetailSliders = new Swiper('.linhvuc-detail-1 .swiper-container', {
			slidesPerView: 2,
			spaceBetween: 20,
			breakpointsInverse: true,
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