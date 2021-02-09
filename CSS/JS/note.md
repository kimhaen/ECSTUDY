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
