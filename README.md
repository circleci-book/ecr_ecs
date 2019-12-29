## Cloudformation Template

ECS/FargateのCFテンプレート

<a href="https://ap-northeast-1.console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/create/review?templateURL=https://kim-test-circleci-book-cf-template.s3-ap-northeast-1.amazonaws.com/ecs_fargate_cf.yml"><img src="https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png">

### Prerequisite

- Docker image listening on 80
- VPC
- Security Group (allow inboud 80)
- 2 subnets (in two different AZ)
- Route table attached to VPC with 0.0.0.0/0 (necessary to pull containers from Fargate)
