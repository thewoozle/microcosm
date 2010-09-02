/*	basic window.onload function 
				- syntax: 'addLoadEvent(function name);'	*/	
function add_load_event(func) {
   	var oldonload = window.onload; 
   	if (typeof window.onload != 'function') {
      	window.onload = func;
   	} else {
     	window.onload = function() {
     		oldonload();
         		func();
     	}
   	}
}


//	get element by class function (by Dustin Diaz ) - syntax: getClass (class, node, tag), the last two conditions are optional
function getElementByClass(searchClass,node,tag) { 
	var classElements = new Array();
	if ( node == null )
		node = document;
	if ( tag == null )
		tag = '*';
	var els = node.getElementsByTagName(tag);
	var elsLen = els.length;
	var pattern = new RegExp('(^|\\\\s)'+searchClass+'(\\\\s|$)');
	for (i = 0, j = 0; i < elsLen; i++) {
		if ( pattern.test(els[i].className) ) {
			classElements[j] = els[i];
			j++;
		}
	}
	return classElements;
}
