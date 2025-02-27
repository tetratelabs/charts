# onboarding-operator

![Version: 0.1.0-rc.2](https://img.shields.io/badge/Version-0.1.0--rc.2-informational?style=flat-square)
![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)
![AppVersion: 0.1.0-onboarding-rc.2](https://img.shields.io/badge/AppVersion-0.1.0--onboarding--rc.2-informational?style=flat-square)

Helm chart for the Workload Onboarding Operator. It is used to onboard EC2 VMs and ECS tasks to an Istio service mesh installed on an EKS cluster.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.repository | string | `"addon-containers.istio.tetratelabs.com"` | Image repository from where download the onboarding images |
| image.tag | string | `"0.1.0-onboarding-rc.2"` | Onboarding image tag to be used |
| image.pullSecrets | list | `[]` | Image pull secrets to be used to pull the onboarding images |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| repository.onboardingPackageIstioSidecar.tag | string | `"1.24.3-tetrate3"` | Istio sidecar tag to be used for the onboarding workloads |
| onboarding.endpoint.host | string | `"onboarding-endpoint.example"` | Hostname for the onboarding endpoint |
| onboarding.endpoint.tlsSecretName | string | `"onboarding-endpoint-tls-cert"` | Secret name for the onboarding endpoint TLS certificate |

To view all support configuration options and documentation, run:

```
helm show values tetratelabs/onboarding-operator --devel
```
