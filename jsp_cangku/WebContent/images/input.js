function suckerfish(type, tag, parentId)
{
	if (window.attachEvent)
	{
		window.attachEvent("onload", function()
		{
			var sfEls = (parentId==null)?document.getElementsByTagName(tag):document.getElementById(parentId).getElementsByTagName(tag);
			type(sfEls);
		});
	}
}
sfFocus = function(sfEls)
{
	for (var i=0; i<sfEls.length; i++)
	{
		sfEls[i].onfocus=function()
		{
			this.className+=" sffocus";
		}
		sfEls[i].onblur=function()
		{
			this.className=this.className.replace(new RegExp(" sffocus\\b"), "");
		}
	}
}
suckerfish(sfFocus, "INPUT");
suckerfish(sfFocus, "TEXTAREA"); 
suckerfish(sfFocus, "SELECT"); 
