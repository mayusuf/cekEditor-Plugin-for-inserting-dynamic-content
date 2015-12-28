CKEDITOR.plugins.add('fetchit',
{
	requires: ["dialog"],
	init:function(a) {
		var b="fetchit";
		var c=a.addCommand(b,new CKEDITOR.dialogCommand(b));
		c.modes={wysiwyg:1,source:1};
		c.canUndo=true;
		a.ui.addButton("fetchit",
		{
			label:"FetchD",
			icon:this.path+"icon.png",
			command:b
		});
		CKEDITOR.dialog.add(b,this.path+"dialog.js");		
	}
});