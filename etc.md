SSH Key
-----
**UseFul Blog**

[鍵認証でGitHubに接続する方法][a]

[a]:https://qiita.com/nishina555/items/127f691a9e11e0fc5999
[SSH Key 설정하기][b]

[b]:https://developtip.tistory.com/34

**key generate**
~~~~
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa
~~~~
**key check**
~~~~
$ cat ~/.ssh/id_rsa.pub
~~~~
**enter check**
~~~~
$ ssh -T git@github.com
~~~~
