const nav = {

	mainNav: () => {
		let nav_toggle = $(' .dh-nav-1 .nav-toggle')
		let nav = $('.dh-nav-1 nav')
		let li = $(' .dh-nav-1 nav li')
		nav_toggle.on('click', function () {
			nav_toggle.toggleClass('active')
			nav.toggleClass('active');
		})
		// li.on('click', function () {
		// 	nav.removeClass('active');
		// })
	},

	navInit: () => {
		nav.mainNav();
	}
}