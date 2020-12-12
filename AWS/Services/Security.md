
### AWS STS (Security Token Service)

![STS](https://miro.medium.com/max/845/0*efjEBOwC9ESQH9pn.png)

### AWS SAML (Security Assertion Markup Language 2.0)

![SAML](https://docs.aws.amazon.com/IAM/latest/UserGuide/images/saml-based-sso-to-console.diagram.png)

### AWS CloudTrail
> AWS 인프라에서 계정 활동과 관련된 작업을 기록하고 지속적으로 모니터링하며 보관

![cloudtrail](https://d1.awsstatic.com/product-marketing/CloudTrail/Product-Page-Diagram-AWSX-CloudTrail_How-it-Works.d2f51f6e3ec3ea3b33d0c48d472f0e0b59b46e59.png)

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

### Amazon Inspector
AWS 리소스의 보안 및 규정 준수를 개선하는 데 도움이 되는 보안 취약성 평가 서비스
Amazon Inspector는 리소스의 취약성 또는 모범 사례와의 편차를 자동으로 평가한 후, 심각도 수준에 따라 우선순위가 지정된 상세한 보안 평가 결과 목록을 생성합니다. Amazon Inspector에는 AWS 보안 연구원이 정기적으로 업데이트하는 일반 보안 표준 및 취약성 정의와 매핑된 규칙 수백 개의 기술 자료가 포함

### Amazon GuardDuty
VPC 흐름 로그, AWS CloudTrail 관리 이벤트 로그, Cloudtrail S3 데이터 이벤트 로그 및 DNS 로그.
악성 IP 주소 및 도메인 목록 등 위협 인텔리전스 피드와 기계 학습을 사용하여 AWS 환경에서
예기치 않게 발생하는 잠재적 무단 활동과 악의적 활동을 찾아냅니다.

### AWS Secrets Manager
> 이렇게 하면 보안 암호가 코드에 더 이상 존재하지 않기 때문에 코드를 검사하는 누군가에 의해 보안 암호가 손상되지 않도록 방지할 수 있습니다.
또한 사용자가 지정된 일정에 따라 Secrets Manager가 자동으로 보안 암호를 교체하도록 구성할 수 있습니다. 따라서 단기 보안 암호로 장기 보안 암호를 교체할 수 있어 손상 위험이 크게 줄어듭니다.
>
>![SM](https://docs.aws.amazon.com/ko_kr/secretsmanager/latest/userguide/images/ASM-Basic-Scenario.png)
