window.onscroll = function()
{
    // Thanks to Johan SundstrÃ¶m (http://ecmanaut.blogspot.com/) and David Lantner (http://lantner.net/david) 
    // for their help getting Safari working as documented at http://www.derekallard.com/blog/post/conditionally-sticky-sidebar
    if( window.XMLHttpRequest ) { // IE 6 doesn't implement position fixed nicely...
        var top = 130                                                                
        if (document.documentElement.scrollTop > top || self.pageYOffset > top) {
            $('#index').css('position', 'fixed');
            $('#index').css('top', '40px');
        } else if (document.documentElement.scrollTop < top || self.pageYOffset < top) {
            $('#index').css('position', 'absolute');
            $('#index').css('top', '170px');                        
        }
    }
}

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
	}, function(){ $('.hide').slideUp(); $('.collapse-list').removeClass("collArrow").addClass("expArrow") });
	   	
	$('#index a, #menu a.menu').pjax('#doc'); 	
	
	$('#doc, a.menu')
	  .bind('start.pjax', function() { $('.loader').show(); $('.yield').hide() })
	  .bind('end.pjax',   function() { 
		$('.loader').hide(); 
		location.href="#menu"; 	     
	  });   
});