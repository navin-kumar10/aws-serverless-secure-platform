# 01. Secure AWS Serverless Application Platform

![architecture](docs/architecture.png)

**AWS - Terraform - GitHub Actions** | *Phase 3 - Serverless specialization (Flagship 1)* | `lab` - verify before production use.

> Task-management API + static frontend on API Gateway, Lambda, DynamoDB, S3, CloudFront, Route 53, WAF - Terraform + GitHub Actions.

## Architecture

```mermaid
flowchart LR
  User --> R53[Route 53]
  R53 --> CF[CloudFront + WAF]
  CF --> S3[S3 Frontend OAC]
  CF --> APIGW[API Gateway JWT]
  APIGW --> Lambda[Lambda]
  Lambda --> DDB[(DynamoDB)]
  Lambda --> CW[CloudWatch]
```

Full diagram: [docs/architecture.png](docs/architecture.png) - Design: [docs/architecture.md](docs/architecture.md)

## Structure

```
.
+-- app/
+-- terraform/ or infrastructure/
+-- monitoring/
+-- tests/
+-- runbooks/
+-- docs/architecture.md, architecture.png, cost-estimate.md
+-- .github/workflows/
```

## Quickstart (lab)

```bash
git clone https://github.com/navin-kumar10/aws-serverless-secure-platform.git
cd aws-serverless-secure-platform
make validate
make plan
make apply
make smoke
make destroy
```

See [runbooks/DEPLOYMENT.md](runbooks/DEPLOYMENT.md), [runbooks/ROLLBACK.md](runbooks/ROLLBACK.md), [docs/cost-estimate.md](docs/cost-estimate.md).

## Implementation order

10-project portfolio. Order: Phase 1 (04,07,09) -> Phase 2 (03,04,05) -> Phase 3 (01) -> Phase 4 (02) -> Phase 5 (08,09,10).

## License

MIT - see LICENSE.
