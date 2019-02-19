const header = {
	headerToggle: function(){
		$('.dh-header .header-hamburger').on('click', function(){
			$('.dh-header').toggleClass('sidenav-open')
		})
	},
	headerInit: function(){
		header.headerToggle();
	}
}