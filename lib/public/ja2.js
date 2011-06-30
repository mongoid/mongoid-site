window.onscroll = function()
{
    // Thanks to Johan SundstrÃ¶m (http://ecmanaut.blogspot.com/) and David Lantner (http://lantner.net/david) 
    // for their help getting Safari working as documented at http://www.derekallard.com/blog/post/conditionally-sticky-sidebar
    if( window.XMLHttpRequest ) { // IE 6 doesn't implement position fixed nicely...
        var top = 149                                                                
        if (document.documentElement.scrollTop > top || self.pageYOffset > top) {
            $('#index').css('position', 'fixed');
            $('#index').css('top', '0px');
        } else if (document.documentElement.scrollTop < top || self.pageYOffset < top) {
            $('#index').css('position', 'absolute');
            $('#index').css('top', '149px');                        
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


$(function() {
	
	$('.hide').hide();
	$('.collapse-list').collapser({
		target: 'siblings',
		effect: 'slide',          
		changeText: 0,
		expandHtml: 'Expand List',
		collapseHtml: 'Collapse List',
		expandClass: 'expArrow',
		collapseClass: 'collArrow'
	}, function(){ $('.hide').slideUp() });
	   	
	$('#index a').pjax('#doc') 
		
	$('#doc')
	  .bind('start.pjax', function() { $('.loader').show(); $('.yield').hide() })
	  .bind('end.pjax',   function() { $('.loader').hide(); location.href="#menu" })                    
	
	$('#menu a.menu').pjax('#contents')
});