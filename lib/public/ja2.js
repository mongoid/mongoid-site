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



/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
var disqus_shortname = 'mongoidexamplesite'; // required: replace example with your forum shortname

// The following are highly recommended additional parameters. Remove the slashes in front to use.
//var disqus_identifier = 'unique_dynamic_id_1234';
// var disqus_url = 'http://example.com/permalink-to-page.html';

/* * * DON'T EDIT BELOW THIS LINE * * */
(function() {
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();