GitHub Branch
=========
[Ref][u]

[u]:https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html

1. basic cmd
~~~~cmd
$ mkdir directory名
$ git init
$ git add myfile.txt
$ git commit -m "first commit"
~~~~

2. git branch 'branchname' cmd
branchname : issue1
~~~~
$ git banch issue1
~~~~

3. git checkout 'branch'
choose branch
~~~~
$ git checkout issue1
~~~~
⇒ branch checkout 상태에서 commit을 하면 branch에 이력기록
~~~~
$ git add myfile.txt
$ git commit -m "add message"
~~~~

4. git merge 'commit'
~~~~
$ git merge issue1
~~~~

5. git branch -d 'branchname'
~~~~
$ git branch -d issue1
~~~~
