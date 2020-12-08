
### AWS STS (Security Token Service)

![STS](https://miro.medium.com/max/845/0*efjEBOwC9ESQH9pn.png)

### AWS SAML (Security Assertion Markup Language 2.0)

![SAML](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/saml-based-sso-to-console.diagram.png)

### AWS CloudTrail
> AWS 인프라에서 계정 활동과 관련된 작업을 기록하고 지속적으로 모니터링하며 보관

![cloudtrail](https://d1.awsstatic.com/product-marketing/CloudTrail/Product-Page-Diagram-AWSX-CloudTrail_How-it-Works.d2f51f6e3ec3ea3b33d0c48d472f0e0b59b46e59.png)


+ AWS Key Management Service(KMS)

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

 >
 >  #### Amazon Aurora
 >  + MySQL 및 PostgreSQL과 호환되는 완전 관리형 관계형 데이터베이스 엔진
 >  + 데이터베이스 구성 및 관리의 가장 어려운 측면 중  하나인 데이터베이스 클러스터링 및 복제를 자동화하고 표준화
 >  + 관리형 데이터베이스 서비스 Amazon Relational Database Service(Amazon RDS)의 일부
 >
