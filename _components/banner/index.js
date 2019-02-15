var Banner = {

	HomeBanner: function () {
		$("#revSlider1").revolution({
			sliderType: "hero",
			sliderLayout: "auto",
			delay: 9000,
			gridHeight: "auto"
		});
	},
	init: () => {
		Banner.HomeBanner();
	},
}