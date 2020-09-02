GitHub Branch
=========
[Ref][u]

[u]:https://backlog.com/git-tutorial/kr/stepup/stepup1_1.html
~~~~
* master branch
* HEAD : 사용 중인 branch의 선두부분
* stash : 파일의 변경내용을 일시적으로 기록하는 영역
* merge : 여러개의 branch를 하나로 모음, 이력이 모두 남음
* rebase : 이력이 남지 않음
~~~~~~

**1. basic cmd**
~~~~cmd
$ mkdir directory名
$ git init
$ git add myfile.txt
$ git commit -m "first commit"
~~~~

**2. git branch 'branchname' cmd**
branchname : issue1
~~~~
$ git banch issue1
~~~~

**3. git checkout 'branch'**
choose branch
~~~~
$ git checkout issue1
~~~~
⇒ branch checkout 상태에서 commit을 하면 branch에 이력기록
~~~~
$ git add myfile.txt
$ git commit -m "add message"
~~~~

**4. git merge 'commit'**
~~~~
$ git merge issue1
~~~~

**5. git branch -d 'branchname'**
~~~~
$ git branch -d issue1
~~~~
