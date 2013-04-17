
if (currentFileName === undefined) {
    var currentFileName = "md";
}

getMimeType = function(extension) {
  if (extension === "js") {
    return "javascript";
  } else if (extension === "txt") {
    return "text";
  } else if (extension === "htm") {
    return "html";
  } else if (extension === "md") {
    return "markdown";
  } else if (extension === "rb") {
    return "ruby";
  } else if (extension === "py") {
    return "python";
  } else if (extension === "c" || extension === "cpp") {
    return "c_cpp";
  } else {
    return extension;
  }
};

var saveButton = document.getElementById("save_btn");

var editor = ace.edit("editor");
editor.setTheme("ace/theme/monokai");

// init editor content
var editorSession = editor.getSession();
editorSession.setMode("ace/mode/" + getMimeType(currentFileName));
editorSession.setValue(document.getElementById("source").value);

// preview
var src = editorSession.getValue();

if (currentFileName == "md" ||
    currentFileName == "markdown" ||
    currentFileName == "rst" ||
    currentFileName == "html") {
} else {
    src = "    " + src.replace(/\n/g, "\n    ");
}

document.getElementById("preview").innerHTML = markdown.toHTML(src);

editorSession.on('change', function() {
    // preview
    var src = editorSession.getValue();
    if (currentFileName == "md" ||
        currentFileName == "markdown" ||
        currentFileName == "rst" ||
        currentFileName == "html") {
    } else {
        src = "    " + src.replace(/\n/g, "\n    ");
    }

    document.getElementById("preview").innerHTML = markdown.toHTML(src);
});

var saveNote = function() {
    marboo.save(editorSession.getValue());
}

saveButton.onclick = saveNote;
