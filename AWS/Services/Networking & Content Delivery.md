### AWS Direct Connect ・・ Networking & Content Delivery
표준 1기가비트 또는 10기가비트 이더넷 광섬유 케이블을 통해 내부 네트워크를 AWS Direct Connect 위치에 연결
케이블의 한쪽 끝은 사용자의 라우터에 연결되고 다른 쪽 끝은 AWS Direct Connect 라우터에 연결됩니다.
이 연결을 사용하면 AWS 클라우드 및 Amazon Virtual Private Cloud로 직접적인 가상 인터페이스를 만들어 사용자의 네트워크 경로에서 인터넷 서비스 공급자를 우회할 수 있습니다.

AWS Direct Connect는 IPv4 및 IPv6 통신 프로토콜을 모두 지원합니다.
퍼블릭 AWS 서비스에서 제공하는 IPv6 주소는 AWS Direct Connect 퍼블릭 가상 인터페이스를 통해 액세스할 수 있습니다.

### Elastic Load Balancing
#### Application Load Balancer, Network Load Balancer 및 Classic Load Balancer.
[Comparison](https://blueyikim.tistory.com/category/%ED%81%B4%EB%9D%BC%EC%9A%B0%EB%93%9C%20%EC%BB%B4%ED%93%A8%ED%8C%85/%EC%95%84%EB%A7%88%EC%A1%B4%28AWS%29)
+ 로드 밸런서 이점
로드 밸런서는 워크로드를 가상 서버와 같은 다수의 컴퓨팅 리소스로 분산합니다.
로드 밸런서를 사용하면 애플리케이션의 가용성과 내결함성이 높아집니다.
애플리케이션에 대한 요청의 전체적인 흐름을 방해하지 않고
필요에 따라 로드 밸런서에서 컴퓨팅 리소스를 추가 및 제거할 수 있습니다.


> + 관련 서비스
Elastic Load Balancing은 다음 서비스를 통해 애플리케이션의 가용성 및 확장성을 개선합니다.

> + Amazon EC2 — 클라우드에서 애플리케이션을 실행하는 가상 서버입니다. 로드 밸런서를 구성하여 EC2 인스턴스에 트래픽을 라우팅할 수 있습니다.
> + Amazon EC2 Auto Scaling — 인스턴스에 장애가 발생하더라도 원하는 수의 인스턴스를 실행하고 인스턴스의 수요가 변경되면 자동으로 인스턴스 수를 늘리거나 줄일 수 있게 해 줍니다. Elastic Load Balancing,과 함께 Auto Scaling을 활성화하는 경우, Auto Scaling이 시작한 인스턴스는 자동으로 로드 밸런서에 등록되고 Auto Scaling이 종료하는 인스턴스는 자동으로 로드 밸런서에서 등록 취소됩니다.
> + AWS Certificate Manager — HTTPS 리스너를 생성할 때 ACM에서 제공한 인증서를 지정할 수 있습니다. 로드 밸런서는 인증서를 사용하여 연결을 종료하고 클라이언트의 요청을 암호화 해제합니다. 자세한 내용은 SSL 인증서 단원을 참조하십시오.
> + Amazon CloudWatch — 로드 밸런서를 모니터링하고 필요에 따라 조치를 취할 수 있게 해 줍니다. 자세한 내용은 Application Load Balancer의 CloudWatch 지표 단원을 참조하십시오.
> + Amazon ECS — EC2 인스턴스 클러스터에서 Docker 컨테이너를 실행, 중단 및 관리 가능합니다. 로드 밸런서를 구성하여 컨테이너에 트래픽을 라우팅할 수 있습니다. 자세한 내용은 Amazon Elastic Container Service Developer Guide에서 서비스 로드 밸런싱을 참조하십시오.
> + AWS Global Accelerator — 애플리케이션의 가용성과 성능을 향상시킵니다. 액셀러레이터를 사용하여 하나 이상의 AWS 리전에 있는 여러 로드 밸런서에 트래픽을 분산합니다. 자세한 내용은 AWS Global Accelerator 개발자 안내서 단원을 참조하십시오.
> + Route 53 — 도메인 이름(예: www.example.com)을 컴퓨터를 사용하여 서로 연결해주는 숫자로 된 IP 주소(예: 192.0.2.1)로 변환하여 방문자를 안정적이며 비용 효율적으로 웹 사이트로 라우팅하도록 합니다. AWS는 로드 밸런서와 같은 사용자의 AWS 리소스에 URL을 배정합니다. 그러나 기억하기 쉬운 URL이 필요한 경우도 있습니다. 예를 들어 도메인 이름을 로드 밸런서로 매핑할 수 있습니다.
> + AWS WAF — Application Load Balancer와 함께 AWS WAF를 사용하여 웹 ACL(웹 액세스 제어 목록)의 규칙에 따라 요청을 허용하거나 차단할 수 있습니다. 자세한 내용은 Application Load Balancer 및 AWS WAF 단원을 참조하십시오.
