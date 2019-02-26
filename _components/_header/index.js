const header = {
	headerToggle: function(){
		$('.dh-header .header-hamburger').on('click', function(){
			$('.dh-header').toggleClass('sidenav-open')
		})
		$('.dh-header .header-overlay').on('click', function(){
			$('.dh-header').removeClass('sidenav-open')
		})
	},
	headerInit: function(){
		header.headerToggle();
	}
}