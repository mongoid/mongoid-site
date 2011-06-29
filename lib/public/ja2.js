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
	});
	
	//PJAX		
	$('#index a').pjax('#doc')
});