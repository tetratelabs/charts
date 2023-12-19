# agent

![Version: 0.0.3](https://img.shields.io/badge/Version-0.0.3-informational?style=flat-square) ![AppVersion: 0.0.3](https://img.shields.io/badge/AppVersion-0.0.3-informational?style=flat-square)

Helm chart for deploying TIS Agent

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.name | string | `"gcr.io/tetratelabs/tis/agent:v0.0.3@sha256:7118f8b0634c6313e7dfb20804d3c03ff0651eed28085a4f8c3393969808d66d"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| istioRegistrySync.cloudMap.region | string | `""` |  |
| istioRegistrySync.consul.endpoint | string | `""` |  |
| istioRegistrySync.consul.namespace | string | `""` |  |
| istioRegistrySync.consul.token | string | `""` |  |
| istioRegistrySync.debug | bool | `false` |  |
| istioRegistrySync.enable | bool | `true` |  |
| istioRegistrySync.publishNamespace | string | `""` |  |
| istioRegistrySync.resyncPeriod | int | `5` |  |
| license | string | `""` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |

