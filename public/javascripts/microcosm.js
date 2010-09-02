/*		microcosm.js
		this is the main javascript for the microcosm project  
	Michael McGuire; 
	last edited on September 2, 2010
*/
			
add_load_event(function()  {
	get_topic();	
})	



/*	When a topic link is clicked-on, the get_topic function uses the link's ID as 
	the topic.id to populate one of the divs that show topics
*/
function get_topic()  {	
	var topics = getElementByClass ('topicDiv');	/* uses the topicDiv class to count the number of topics */
	for (var i=0; i<topics.length; i++)  {
		topics[i].onclick = function()  {
			var displayTopic = this.getAttribute('id');	
			alert("topic #"+displayTopic); 
			
		}
	}	
}



function get_display_status()  {	
	var left_topic = document.getElementById('left_topic'); 
	var right_topic = document.getElementById('right_topic'); 
	
	
	var thisTopic = left_topic.getAttribute('id');
	
}




/*			cycles through the screen navigation buttons and when one is clicked, using the 
			button's NAME attribute as the id-name for the target div, to dynamically resize the 'content' window. 
*/		
function prepare_front_screen() {
	resize_screen('front_page'); 
}

function get_screen_buttons ()  {
	var screenButton = getElementByClass ('screen_button');
	for (var i=0; i<screenButton.length; i++)  {
		screenButton[i].onclick = function () {
			var targetDiv = this.firstChild.getAttribute('name');
			resize_screen(targetDiv); 
		}			
	}
}

function resize_screen (targetDiv)  {   
	if (document.getElementById (targetDiv))  {
		var content = document.getElementById ("content");
		var screenHeight=document.getElementById (targetDiv).offsetHeight; 
		content.style.height = screenHeight+'px';
		
	} 
}

function highlightPage() {
/*			highlights the li elements of the navigation bar that the page is currently on. */
	var browserName=navigator.appName; 
	if (browserName!="Microsoft Internet Explorer")  {  // just skipping it if IE
		if (document.getElementById && document.getElementById("navbar")) { 
			var nav = document.getElementById("navbar");
			var links = nav.getElementsByTagName("a");
			for (var i=0; i<links.length; i++) {
				var linkurl = links[i].getAttribute("href");
				var currenturl = window.location.href;
				if (currenturl.indexOf(linkurl) != -1) {
					links[i].className = "here";
					var linktext = links[i].lastChild.nodeValue.toLowerCase();
					document.body.setAttribute("id",linktext);
				}
			}
		} else {return false;}	
	}	
}
