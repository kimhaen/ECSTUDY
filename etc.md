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
<details>
<summary>Command </summary>
<div markdown="1">    

haein.kim@0236-PC MINGW64 /c/projects
$ mkdir ~/.ssh
haein.kim@0236-PC MINGW64 /c/projects
$ cd ~/.ssh
haein.kim@0236-PC MINGW64 ~/.ssh
$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/haein.kim/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/haein.kim/.ssh/id_rsa
Your public key has been saved in /c/Users/haein.kim/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:tKQK90WR5IWaOOAP1McoMT9wXLS5caCJUtpO0ZWIgDc haein.kim@0236-PC
The key's randomart image is:
+---[RSA 3072]----+
|o.**.B=ooo.      |
|.+EB*o+=oo       |
|o+++=o+o*        |
| +o o.oO .       |
|  oo..o S        |
|   o.o .         |
|    . .          |
|                 |
|                 |
+----[SHA256]-----+
haein.kim@0236-PC MINGW64 ~/.ssh
$ chmod 600 id_rsa
haein.kim@0236-PC MINGW64 ~/.ssh
$ vi ~/.ssh/config
[1]+  Stopped                 vi ~/.ssh/config
haein.kim@0236-PC MINGW64 ~/.ssh
$ cat ~/.ssh/id_rsa.pub
ssh-rsa     

</div>
</details>

markdown
-----
[Markdownの書き方][m]

[m]:https://help.docbase.io/posts/13697

Image Slider
-----
[Slick](https://kenwheeler.github.io/slick/)
[Swiper](https://swiperjs.com/demos/)
