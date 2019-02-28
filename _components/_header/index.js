const header = {
	headerToggle: function(){
		$('.dh-header .header-hamburger').on('click', function(){
			$('.dh-header').toggleClass('sidenav-open')
		})
		$('.dh-header .header-overlay').on('click', function(){
			$('.dh-header').removeClass('sidenav-open')
		})
	},
	headerMapping: function(){
		let mappingLanguage = new MappingListener({
			selector: ".dh-header .header-language",
			desktopWrapper: ".dh-header .header-bar",
			desktopMethod: "appendTo",
			mobileWrapper: ".dh-header .header-overlay",
			mobileMethod: "insertBefore",
			breakpoint: 1200
		}).watch();
	},
	headerInit: function(){
		header.headerToggle();
		header.headerMapping();
	}
}