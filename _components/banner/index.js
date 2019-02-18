var Banner = {

	// HomeBanner: function () {
	// 	$("#revSlider1").revolution({
	// 		sliderType: "hero",
	// 		sliderLayout: "auto",
	// 		delay: 9000,
	// 		gridHeight: "auto"
	// 	});
	// },
	HomeBanner: () => {
		// $('.data-slick').slick({
		// 	slidesToShow: 1,
		// 	slidesToScroll: 1,
		// 	arrows: true,
		// 	dots: false,
		// 	speed: 500,
		// 	adaptiveHeight: true,
		// 	autoplay: false,
		// 	autoplaySpeed: 1000,
		// 	fade: true,
		// 	infinite: true,
		// 	cssEase: 'ease-in-out',
		// 	pauseOnFocus: false,
		// 	centerMode: false,
		// 	focusOnSelect: true,
		// 	pauseOnHover: false,
		// });
		$('.js-carouselheader').slick({
			arrows: !0,
			dots: !0,
			fade: !0,
			// speed: 0,
			autoplay: !1,
			dots: false,
			autoplaySpeed: 8e3,
			pauseOnHover: !1
		});
	},
	init: () => {
		Banner.HomeBanner();
	},
}