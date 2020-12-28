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

SOAP API VS REST API
---

[Ref](http://blog.wishket.com/soap-api-vs-rest-api-%EB%91%90-%EB%B0%A9%EC%8B%9D%EC%9D%98-%EA%B0%80%EC%9E%A5-%ED%81%B0-%EC%B0%A8%EC%9D%B4%EC%A0%90%EC%9D%80/)

> # API ?
> + 어떤 서버의 특정한 부분에 접속해서 그 안에 있는 데이터와 서비스를 이용할 수 있게 해주는 소프트웨어 도구
> + API를 이용하면 두 개의 소프트웨어가 서로 통신을 주고받을 수 있으며, 이는 우리가 모바일을 이용해서 하는 모든 행동들의 기반을 이루고 있다
>
> ## REST API ?
> REST(Representational State Transfer)는 네트워크를 통해서 컴퓨터들끼리 통신할 수 있게 해주는 아키텍처 스타일
> + REST API는 단일한 인터페이스를 사용합니다. 이러한 점 때문에 해당 API를 사용하는 애플리케이션들이 동일한 경로를 통해서 접속해야 하고, 그 방식이 단순하게 됨
> + REST는 웹에 최적화되어 있고, 데이터 포맷이 JSON이기 때문에 브라우저들 간에 호환성이 좋고 성능과 확장성이 뛰어남
>
> ## SOAP API ?
> SOAP(Simple Object Access Protocol)는 그 자체로 프로토콜이며, 보안이나 메시지 전송 등에 있어서 REST보다 더 많은 표준들이 정해져있기 때문에 조금 더 복잡하다
> + 은행용 모바일 앱처럼 보안 수준이 높아야 하거나, 신뢰할 수 있는 메시징 앱, 또는 ACID를 준수해야 하는 경우라면 SOAP 방식을 더욱 선호
> +  ACID를 준수하기 때문에 데이터의 변형을 줄여주고, 데이터베이스와의 상호작용에 대해서 사전에 정확하게 정하기 때문에 데이터의 무결성을 지켜준다
>
> ![API](http://blog.wishket.com/wp-content/uploads/2020/02/%EC%BA%A1%EC%B2%98.png)
