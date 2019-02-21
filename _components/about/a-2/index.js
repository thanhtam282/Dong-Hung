var slider = {
	home_slider_1: () => {
		let home_slider_2 = new Swiper('.dh-home-1 .swiper-container', {
			slidesPerView: 1,
			autoHeight: false,
			loop: true,
			// autoHeight: false,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
		})
	},
	home_slider_2: () => {
		let home_slider_2 = new Swiper('.dh-home-3 .swiper-container', {
			slidesPerView: 1,
			autoHeight: false,
			loop: true,
			// autoHeight: false,
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			navigation: {
				nextEl: '.dh-home-3 .swiper-button-next',
				prevEl: '.dh-home-3 .swiper-button-prev',
			},
		})
	},
	about_slider_1: () => {
		let home_slider_2 = new Swiper('.dh-about-2 .swiper-container', {
			slidesPerView: 7,
			spaceBetween: 3,
			autoHeight: false,
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
					autoplay: {
						delay: 5000,
						disableOnInteraction: false,
					},
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
			spaceBetween: 14,
			autoHeight: false,
			// autoplay: {
			// 	delay: 5000,
			// 	disableOnInteraction: false,
			// },
			loop: false,
			// autoHeight: false,
			pagination: {
				el: '.swiper-pagination',
				type: 'progressbar',
				// autoplay: false,
			},
			navigation: {
				nextEl: '.dh-about-3 .swiper-button-next',
				prevEl: '.dh-about-3 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 1,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				},
				1300: {
					slidesPerView: 4,
				}
			}
		})
	},
	about_slider_3: () => {
		let about_slider_2 = new Swiper('.dh-about-6 .swiper-container', {
			slidesPerView: 5,
			// spaceBetween: 14,
			// slidesPerView: 'auto',
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			loop: true,
			// autoHeight: false,
			pagination: {
				el: '.swiper-pagination',
				type: 'progressbar',
			},
			navigation: {
				nextEl: '.dh-about-6 .swiper-button-next',
				prevEl: '.dh-about-6 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				},
				1300: {
					slidesPerView: 4,
				}
			}
		})
	},
	checkMenuScroll: () => {
		var windowScrollTop = $(window).scrollTop(),
			headerOuterHeight = $('header').outerHeight(),
			windowHeight = $(window).height(),
			subbar = $('.dh-header .subbar').outerHeight(),
			menu = 0
			if ($('.dh-nav-2').length > 0) {

				var navOffset = $('.dh-nav-2').offset().top
			}
		if (((navOffset ) - windowScrollTop) <= 0) {
			if ($('header').hasClass("active") == true) {
				if ($(window).width() < 992) {
					$('.dh-nav-2').addClass('active').css({
						"top": subbar + "px"
					})
				} else if ($(window).width() >= 992) {
					$('.dh-nav-2').addClass('active').css({
						"top": "0px"
					})
				}
			} else {
				$('.dh-nav-2').removeClass('active').removeAttr('style')
			}
		}

		$('.dh-nav-2 nav li').each(function () {
			var attrLink = $(this).find('a').attr('data-link')
			var linkOffsetTop = $('#' + attrLink).offset().top
			if (((windowHeight + windowScrollTop) - 400) >= linkOffsetTop) {
				$('.dh-nav-2 nav li a').removeClass('active')
				$(this).find('a').addClass('active')
			}
		})
	},
	clickMenuScroll: () => {
		let nav = $('.dh-nav-2 nav')
		$('.dh-nav-2 nav li a').on('click', function () {
			$('.dh-nav-2 nav li a').removeClass('active')
			$(this).addClass('active')
			$('html, body').animate({
				scrollTop: $('#' + $(this).attr('data-link')).offset().top - $('.dh-nav-2').outerHeight() - 40
			}, 500);
			nav.removeClass('active');
			return false;
		})
	},
	media_slider_1: () => {
		let about_slider_2 = new Swiper('.dh-truyenthong-ct .swiper-container', {
			slidesPerView: 4,
			spaceBetween: 10,
			// slidesPerView: 'auto',
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},
			loop: true,
			// autoHeight: false,
			pagination: {
				el: '.swiper-pagination',
				type: 'progressbar',
			},
			navigation: {
				nextEl: '.dh-truyenthong-ct .swiper-button-next',
				prevEl: '.dh-truyenthong-ct .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 1,
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				},
				1300: {
					slidesPerView: 4,
				}
			}
		})
	},
	career_slider_1: () => {
		let home_slider_3 = new Swiper('.dh-tuyendung-2 .swiper-container', {
			slidesPerView: 3,
			spaceBetween: 3,
			autoHeight: false,
			loop: false,
			// autoHeight: false,
			navigation: {
				nextEl: '.dh-tuyendung-2 .swiper-button-next',
				prevEl: '.dh-tuyendung-2 .swiper-button-prev',
			},
			breakpoints: {
				// when window width is <= 320px
				450: {
					slidesPerView: 2,
					autoplay: {
						delay: 5000,
						disableOnInteraction: false,
					},
				},
				// when window width is <= 640px
				768: {
					slidesPerView: 2,
				},
				992: {
					slidesPerView: 3,
				},
				1300: {
					slidesPerView: 3,
				}
			}
		})
	},
	aboutInit: () => {
		slider.home_slider_1();
		slider.home_slider_2();
		slider.about_slider_1();
		slider.about_slider_2();
		slider.about_slider_3();
		slider.media_slider_1();
		slider.career_slider_1();
		slider.checkMenuScroll();
		slider.clickMenuScroll();
	}
}