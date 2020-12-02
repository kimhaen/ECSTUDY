Rules
---
##### Variable : let, const, var
##### DataType : String, Boolean, Number, Float


function
---
★ Using argument
~~~~javascript
function sayHello(potato){
  console.log('Hello!',potato);
}

sayHello("Hi");

---results
Hello! Hi

~~~~~

~~~~javascript
function sayHello(name,age){
  console.log('Hello!', name , "you have" , age ,"years of age");
}

sayHello("Hi", 20);

---results
Hello! Hi you have 20 years of age

~~~~~

DOM(Document Object Model)
---
~~~~javascript
document.getElementByID('id').onClick = function() {

                    do something

}
~~~~~
### event
- page (load, upload, abort)
- mouse (click, mouseover)
- keyboard (keydown)
- focus (focus, blur)
- form (submit, reset, change)
