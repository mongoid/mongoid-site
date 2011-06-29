window.onscroll = function()
{
	// Thanks to Johan SundstrÃ¶m (http://ecmanaut.blogspot.com/) and David Lantner (http://lantner.net/david) 
	// for their help getting Safari working as documented at http://www.derekallard.com/blog/post/conditionally-sticky-sidebar
	if( window.XMLHttpRequest ) { // IE 6 doesn't implement position fixed nicely...
		var top = 870
		if (document.documentElement.scrollTop > top || self.pageYOffset > top) {
			$('#fixedDiv').css('position', 'fixed');
			$('#fixedDiv').css('top', '40px');
			$('#fixedDiv').css('text-decoration', 'underline');
		} else if (document.documentElement.scrollTop < top || self.pageYOffset < top) {
			$('#fixedDiv').css('position', 'absolute');
			$('#fixedDiv').css('top', '870px');
			$('#fixedDiv').css('text-decoration', 'none');						
		}
	}
}