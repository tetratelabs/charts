# central

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.0](https://img.shields.io/badge/AppVersion-1.1.0-informational?style=flat-square)

Helm Chart for tis central plane

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.name | string | `"central"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.pullSecrets | list | `[]` |  |
| image.registry | string | `"addon-containers.istio.tetratelabs.com"` |  |
| image.tag | string | `"1.1.0"` |  |
| persistent.enable | bool | `true` |  |
| persistent.flushInterval | string | `"10s"` |  |
| persistent.keyPrefix | string | `"central-storage-"` |  |
| persistent.valueSize | int | `512` |  |
| service.cluster_status_detector.cron | string | `"@every 1m"` |  |
| service.cluster_status_detector.lost_connection_duration | string | `"2m"` |  |
| service.config_validation.cron | string | `"@midnight"` |  |
| service.config_validation.keepDays | int | `30` |  |
| service.cve.cron | string | `"@midnight"` |  |
| service.cve.keepDays | int | `30` |  |
| service.cve.token | string | `""` |  |
| service.grpc.port | int | `9080` |  |
| service.http.deploymentPath | string | `""` |  |
| service.http.port | int | `8080` |  |
| service.tls.enable | bool | `false` |  |
| service.tls.generated.cert | string | `""` |  |
| service.tls.generated.extraDnsNames | list | `[]` |  |
| service.tls.generated.key | string | `""` |  |
| service.tls.secretName | string | `""` |  |
| service.tls.useGeneratedCerts | bool | `true` |  |
| user.admin.password | string | `"admin"` |  |
| user.admin.username | string | `"admin"` |  |
| user.jwt.expiration | string | `"3600s"` |  |
| user.ldap.enable | bool | `false` |  |

