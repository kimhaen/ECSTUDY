
### AWS STS (Security Token Service)

![STS](https://miro.medium.com/max/845/0*efjEBOwC9ESQH9pn.png)

### AWS SAML (Security Assertion Markup Language 2.0)

![SAML](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/saml-based-sso-to-console.diagram.png)

### AWS CloudTrail
> AWS 인프라에서 계정 활동과 관련된 작업을 기록하고 지속적으로 모니터링하며 보관

![cloudtrail](https://d1.awsstatic.com/product-marketing/CloudTrail/Product-Page-Diagram-AWSX-CloudTrail_How-it-Works.d2f51f6e3ec3ea3b33d0c48d472f0e0b59b46e59.png)


### AWS Key Management Service(KMS)

> [KMS](https://docs.aws.amazon.com/ko_kr/kms/latest/developerguide/concepts.html)

### Amazon Kinesis

+ Amazon Kinesis Data Streams

 대규모 데이터 레코드 스트림을 실시간으로 수집하고 처리
 > + 가속화된 로그 및 데이터 피드 인테이크 및 처리
 > + 실시간 측정치 및 보고
 > + 실시간 데이터 분석
 > + 복잡한 스트림 처리

+ Amazon Kinesis Video Streams
+ Amazon Kinesis Data Firehose
+ Amazon Kinesis Data Analytics
+ Amazon Kinesis Agent for Microsoft Windows

### Amazon Simple Queue Service(SQS)

 마이크로 서비스, 분산 시스템 및 서버리스 애플리케이션을 쉽게 분리하고 확장할 수 있게 해주는 완전관리형 메시지 대기열 서비스

 > + 보안 - Amazon SQS 대기열로 메시지 수신을 제어
>>서버 측 암호화(SSE) 는 AWS Key Management Service(AWS KMS)로 관리되는 키를 사용하여 대기열의 메시지 내용을 보호함으로써 중요한 데이터를 전송
 >
 > + 내구성 – 메시지의 안전을 보장하기 위해 Amazon SQS는 여러 서버에 메시지를 저장
 >>표준 대기열은 최소 1회의 메시지 전송을 지원하고 FIFO 대기열은 정확히 1회 메시지 처리를 지원합니다.
 > + 가용성 – Amazon SQS는 중복 인프라를 사용하여 메시지에 대한 고도의 동시 액세스와 메시지 생성 및 소비에 대한 고가용성을 제공
 >
 > + 확장성 – Amazon SQS는 버퍼링된 각 요청을 독립적으로 처리하여 프로비저닝 지침 없이도 로드 증가 또는 급증을 처리하기 위해 투명하게 확장 가능
 >
 > + 안정성 – Amazon SQS는 처리 중에 메시지를 잠그므로 여러 생산자와 소비자가 동시에 메시지를 전송 및 수신 가능
 >
 > + 사용자 지정 – 대기열을 지정 가능.
 >> 예를 들어 대기열에서 기본 지연 시간을 설정할 수 있습니다. Amazon S3 객체에 대한 포인터가 포함된 Amazon SQS의 경우에는 Amazon Simple Storage Service(Amazon S3) 또는 Amazon DynamoDB을 사용하여 256KB 이상의 메시지 내용을 저장하거나 대규모 메시지를 더 작은 메시지로 분할가능

 ### Amazon Relational Database Service(RDS)

 클라우드에서 관계형 데이터베이스를 더욱 쉽게 설치, 운영 및 확장할 수 있는 웹 서비스
 * 산업 표준 관계형 데이터베이스를 위한 경제적이고 크기 조절이 가능한 용량을 제공하고 공통 데이터베이스 관리 작업을 관리

 * AWS 클라우드에서 관계형 데이터베이스를 더 쉽게 설치, 운영 및 확장할 수 있는 웹 서비스
 * MySQL, MariaDB, PostgreSQL, Oracle 및 Microsoft SQL Server 같은 데이터베이스 제품을 사용
 >
 >  #### Amazon Aurora
 >  + MySQL 및 PostgreSQL과 호환되는 완전 관리형 관계형 데이터베이스 엔진
 >  + 데이터베이스 구성 및 관리의 가장 어려운 측면 중  하나인 데이터베이스 클러스터링 및 복제를 자동화하고 표준화
 >  + 관리형 데이터베이스 서비스 Amazon Relational Database Service(Amazon RDS)의 일부
 >

### AWS Shield

> AWS에서는 DDoS 공격으로부터 **AWS Shield Standard**와 **AWS Shield Advanced**라는 2가지 수준의 보호를 제공합니다.

**AWS Shield Standard**
AWS WAF 및 기타 AWS 서비스에 대해 이미 지불한 비용 외에 다른 추가 비용 없이 자동으로 포함됩니다.

**AWS Shield Advanced**
AWS에서는 DDoS 공격으로부터 추가적인 보호를 위해 제공합니다.
AWS Shield Advanced는 DDoS 공격으로부터 보호를 Amazon EC2 인스턴스, Elastic Load Balancing 로드 밸런서,
Amazon CloudFront 배포 및 Amazon Route 53 호스팅 영역까지 확장 적용합니다.

### AWS WAF
AWS WAF는 Amazon CloudFront 배포, Amazon API Gateway REST API, Application Load Balancer 또는
AWS AppSync GraphQL API에 전달되는 HTTP 및 HTTPS 요청을 모니터링할 수 있게 해주는 웹 애플리케이션 방화벽

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

### Amazon Inspector
AWS 리소스의 보안 및 규정 준수를 개선하는 데 도움이 되는 보안 취약성 평가 서비스
Amazon Inspector는 리소스의 취약성 또는 모범 사례와의 편차를 자동으로 평가한 후, 심각도 수준에 따라 우선순위가 지정된 상세한 보안 평가 결과 목록을 생성합니다. Amazon Inspector에는 AWS 보안 연구원이 정기적으로 업데이트하는 일반 보안 표준 및 취약성 정의와 매핑된 규칙 수백 개의 기술 자료가 포함

### Amazon GuardDuty
VPC 흐름 로그, AWS CloudTrail 관리 이벤트 로그, Cloudtrail S3 데이터 이벤트 로그 및 DNS 로그.
악성 IP 주소 및 도메인 목록 등 위협 인텔리전스 피드와 기계 학습을 사용하여 AWS 환경에서
예기치 않게 발생하는 잠재적 무단 활동과 악의적 활동을 찾아냅니다.

### Amazon DynamoDB
완전관리형 NoSQL 데이터베이스 서비스로서 원활한 확장성과 함께 빠르고 예측 가능한 성능을 제공
데이터 규모에 관계없이 데이터를 저장 및 검색하고, 어떤 수준의 요청 트래픽이라도 처리할 수 있는 데이터베이스 테이블을 생성
Amazon DynamoDB는 테이블의 데이터와 트래픽을 충분한 수의 서버로 자동 분산하여 고객이 지정한 요청 용량과 저장된 데이터 규모를 처리하면서도 일관되고 빠른 성능을 발휘

### AWS Direct Connect ・・ Networking & Content Delivery
표준 1기가비트 또는 10기가비트 이더넷 광섬유 케이블을 통해 내부 네트워크를 AWS Direct Connect 위치에 연결
케이블의 한쪽 끝은 사용자의 라우터에 연결되고 다른 쪽 끝은 AWS Direct Connect 라우터에 연결됩니다.
이 연결을 사용하면 AWS 클라우드 및 Amazon Virtual Private Cloud로 직접적인 가상 인터페이스를 만들어 사용자의 네트워크 경로에서 인터넷 서비스 공급자를 우회할 수 있습니다.

AWS Direct Connect는 IPv4 및 IPv6 통신 프로토콜을 모두 지원합니다.
퍼블릭 AWS 서비스에서 제공하는 IPv6 주소는 AWS Direct Connect 퍼블릭 가상 인터페이스를 통해 액세스할 수 있습니다.
