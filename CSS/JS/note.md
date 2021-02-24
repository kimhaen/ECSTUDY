File Download (use Blob, MIME Type)
---
[Ref](https://developer.mozilla.org/ko/docs/Web/HTTP/Basics_of_HTTP/MIME_types)

[sample-1](https://javascript.keicode.com/newjs/download-files.php)
[sample-2](https://blog.liplex.de/download-file-through-typescript/)
~~~~~~~js
window.addEventListener('load', () => {
  const button1 = document.getElementById('button1');
  button1.addEventListener('click', button1_clicked);
});

function button1_clicked(evt) {
  evt.preventDefault();

  const blob = new Blob(["Hello, blob!"], {type: 'text/plain'});
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  document.body.appendChild(a);
  a.download = 'foo.txt';
  a.href = url;
  a.click();
  a.remove();
  URL.revokeObjectURL(url);
}

~~~~~~~
Pdf Download with Pure JS(No-Library)
----

[CodePen](http://jsfiddle.net/filixix/0816jdfq/)

~~~~~~~~~~~html
<div style="border: 1px solid black; padding:100px;">
    
    <a id='dwnldLnk' download='o ficheirinho de tostas.pdf' style="display:none;" /> 
    
    <a href="#" onclick="downloadPDF();" title='o ficheirinho de tostas.pdf'>clica aqui oh sashavore</a>

</div>
~~~~~~~~~~~

~~~~~~~~~~~javascript
window.downloadPDF = function downloadPDF() {

    var dlnk = document.getElementById('dwnldLnk');
    dlnk.href = pdf;

    dlnk.click();


    alert('toma');
}

var pdf = 'data:application/octet-stream;base64,' + "pdf contents";
~~~~~~~~~~~

Get Filename & Extension
-------
[Ref](https://dev-syhy.tistory.com/20)

~~~~~~~~~~~javascript
  
  // GetFilename
  function getfilename(file_nm : string){
                var lastDot = file_nm.lastIndexOf('.');
                var filename = file_nm.substring(0,lastDot);
                return filename;
            }

  // GetExtension
  function getExtension(file_nm : string){
      var fileLength = file_nm.length;
      var lastDot = file_nm.lastIndexOf('.');
      var fileExtension = file_nm.substring(lastDot+1,fileLength);
      return fileExtension;
  }
  
~~~~~~~~~~~~
