var slider = {
	about_slider_1: () => {
		let home_slider_2 = new Swiper('.dh-about-2 .swiper-container', {
			slidesPerView: 7,
			spaceBetween: 3,
			autoHeight: false,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			loop: false,
			// autoHeight: false,
			navigation: {
				nextEl: '.dh-about-2 .swiper-button-next',
				prevEl: '.dh-about-2 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 3,
				},
				992: {
					slidesPerView: 4,
				},
				1300: {
					slidesPerView: 6,
				}
			}
		})
	},
	about_slider_2: () => {
		let about_slider_2 = new Swiper('.dh-about-3 .swiper-container', {
			slidesPerView: 4,
			spaceBetween: 3,
			autoHeight: false,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			loop: false,
			// autoHeight: false,
			navigation: {
				nextEl: '.dh-about-3 .swiper-button-next',
				prevEl: '.dh-about-3 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 3,
				},
				992: {
					slidesPerView: 4,
				},
				1300: {
					slidesPerView: 6,
				}
			}
		})
	},
}