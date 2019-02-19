const header = {
	headerClickMat: function(){
		let hamburgerBtn = document.querySelector('.dh-header .header-hamburger');
		hamburgerBtn.addEventListener('click', function (e) {
			let ripple = document.createElement('div');
			let x, y;
			var rect = e.target.getBoundingClientRect()
			// Lấy tọa độ của button
			x = e.clientX - rect.left;
			y = e.clientY - rect.top;
			ripple.classList.add('ripple');
			ripple.style.top = y + 'px';
			ripple.style.left = x + 'px';
			// console.log(x);
			hamburgerBtn.appendChild(ripple);
			window.setTimeout(function () {
				hamburgerBtn.removeChild(ripple)
			}, 1000);
		})
	},
	headerInit: function(){
		header.headerClickMat();
	}
}