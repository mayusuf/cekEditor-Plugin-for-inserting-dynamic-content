CKEDITOR.dialog.add("fetchit", function(a) {
	var dropdown = '<select id="dropdown"><option>One</option><option>Two</option><option>Three</option><option>Four</option><option>Five</option></select>';
	return {
		title: "Fetched data from database",
		minWidth: 390,
		minHeight: 230,
		contents: [{
			id: "fetchit",
			label: "",
			title: "",
			expand: !0,
			padding: 0,
			elements: [{
				type: "html",
				html: dropdown
			}]
		}],
		buttons: [CKEDITOR.dialog.okButton]
	}
});