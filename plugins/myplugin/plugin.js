CKEDITOR.plugins.add( 'myplugin', {
    init: function( editor ) {

        var dialog="mydialog";
        var comnd=editor.addCommand(dialog,new CKEDITOR.dialogCommand(dialog));
        comnd.modes={wysiwyg:1,source:1};
        comnd.canUndo=true;

        editor.ui.addButton("mydialog",
        {
            label: "Fetch Data",
            icon: this.path+"icon.png",
            command: dialog
        });
        
        CKEDITOR.dialog.add( 'mydialog', function( api ) {
            var dialogDefinition = {
                title: 'Fetched Data',
                minWidth: 360,
                minHeight: 90,
                contents: [
                    {
                        elements: [
                            {
                                type: 'html',
                                html: mydata
                            }
                        ]
                    }
                ],
                buttons: [ CKEDITOR.dialog.okButton, CKEDITOR.dialog.cancelButton ],
                onOk: function(e) {
                    var element = new CKEDITOR.dom.element(document.getElementById('dropdown'));
                    CKEDITOR.ajax.post('newquery.php', 'key='+element.getValue(), null, function(data){
                        if(data == ""){
                            alert("Nothing found for " + element.getValue());
                        }else{
                            editor.insertText(data);
                        }
                    });
                }
            };

            return dialogDefinition;
        } );
    }
} );