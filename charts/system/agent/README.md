# agent

![Version: 1.0.0-rc6](https://img.shields.io/badge/Version-1.0.0--rc6-informational?style=flat-square) ![AppVersion: 1.0.0-rc6](https://img.shields.io/badge/AppVersion-1.0.0--rc6-informational?style=flat-square)

Helm chart for deploying TIS Agent

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.name | string | `"agent"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"addon-containers.istio.tetratelabs.com"` |  |
| image.tag | string | `"1.0.0-rc6"` |  |
| secrets.clusterServiceAccount.clusterFQN | string | `""` |  |
| secrets.clusterServiceAccount.encodedJWK | string | `""` |  |
| secrets.cveScannerServiceAccount.token | string | `""` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| spec.centralPlane.caCert | string | `""` |  |
| spec.centralPlane.host | string | `"central"` |  |
| spec.centralPlane.plaintext | bool | `true` |  |
| spec.centralPlane.port | int | `9080` |  |
| spec.components.configValidator.enabled | bool | `true` |  |
| spec.components.configValidator.istioNamespace | string | `"istio-system"` |  |
| spec.components.configValidator.schedule | string | `"@midnight"` |  |
| spec.components.cveScanner.enabled | bool | `true` |  |
| spec.components.cveScanner.schedule | string | `"@midnight"` |  |
| spec.components.cveScanner.service.address | string | `"tis.tetrate.io:443/api"` |  |
| spec.components.cveScanner.service.addressScheme | string | `"https"` |  |
| spec.components.serviceDiscoverer.enabled | bool | `true` |  |
| spec.components.serviceDiscoverer.schedule | string | `"@every 10s"` |  |

