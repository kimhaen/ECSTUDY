Typescript VS JavaScript
---
[handbook](https://www.typescriptlang.org/docs/handbook/typescript-in-5-minutes.html)
[blog](https://blog.naver.com/izure/221878735841)

Typescript = Supersets of JavaScript & JavaScript + types

![TS](https://serokell.io/files/0u/0ufu1q21.js-ts.jpg)


Types in Typescript
---

~~~~~Typescript
let studentID: number = 12345;
let studentNmae: string = 'Hi Kim';
let age: number = 21;
let gender:string = 'female';
let subject:string = 'javascript';
let courseCompleted: boolean = false;

function getStudentDatails(studentID: number):{
  studentID: number;
  studentNmae: string;
  age: number;
  gender: string;
  subject: string;
  createDate: Date;
}{
  return null;
}
~~~~~
