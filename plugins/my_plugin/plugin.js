CKEDITOR.plugins.add('my_plugin', {
  init: function(editor) {
    editor.addCommand('my_command', {
      exec: function(editor) {
        //here is where we tell CKEditor what to do.
        editor.insertHtml('This text is inserted when clicking on the new button from the CKEditor toolbar');
      }
    });

    editor.ui.addButton('my_plugin_button', {
      label: 'Click to insert', //this is the tooltip text for the button
      command: 'my_command',
      icon: this.path + 'icon.png'
    });
  }
});