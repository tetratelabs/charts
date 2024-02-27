# istio-monitoring-demo

![Version: 0.3.0](https://img.shields.io/badge/Version-0.3.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.1.0](https://img.shields.io/badge/AppVersion-v0.1.0-informational?style=flat-square)

Helm chart for deploying Istio Monitoring demo

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| [https://grafana.github.io/helm-charts](https://grafana.github.io/helm-charts) | grafana | 6.58.4 |
| [https://prometheus-community.github.io/helm-charts](https://prometheus-community.github.io/helm-charts) | kube-state-metrics | 5.14.0 |
| [https://prometheus-community.github.io/helm-charts](https://prometheus-community.github.io/helm-charts) | prometheus | 19.6.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| grafana.admin.existingSecret | string | `""` |  |
| grafana.enabled | bool | `true` |  |
| grafana.env.GF_AUTH_ANONYMOUS_ENABLED | string | `"true"` |  |
| grafana.env.GF_AUTH_ANONYMOUS_ORG_ROLE | string | `"Admin"` |  |
| grafana.env.GF_AUTH_BASIC_ENABLED | string | `"false"` |  |
| grafana.env.GF_SECURITY_ADMIN_PASSWORD | string | `"admin"` |  |
| grafana.env.GF_SECURITY_ADMIN_USER | string | `"admin"` |  |
| grafana.fullnameOverride | string | `"grafana"` |  |
| grafana.ldap.existingSecret | bool | `true` |  |
| grafana.podLabels."sidecar.istio.io/inject" | string | `"false"` |  |
| grafana.podLabels.app | string | `"grafana"` |  |
| grafana.rbac.create | bool | `false` |  |
| grafana.rbac.pspEnabled | bool | `false` |  |
| grafana.service.port | int | `3000` |  |
| grafana.testFramework.enabled | bool | `false` |  |
| kube-state-metrics.customLabels."sidecar.istio.io/inject" | string | `"false"` |  |
| kube-state-metrics.enabled | bool | `true` |  |
| prometheus.alertmanager.enabled | bool | `false` |  |
| prometheus.enabled | bool | `true` |  |
| prometheus.kube-state-metrics.enabled | bool | `false` |  |
| prometheus.prometheus-node-exporter.enabled | bool | `false` |  |
| prometheus.prometheus-pushgateway.enabled | bool | `false` |  |
| prometheus.server.fullnameOverride | string | `"prometheus"` |  |
| prometheus.server.global.scrape_interval | string | `"15s"` |  |
| prometheus.server.image.repository | string | `"prom/prometheus"` |  |
| prometheus.server.persistentVolume.enabled | bool | `false` |  |
| prometheus.server.podLabels."sidecar.istio.io/inject" | string | `"false"` |  |
| prometheus.server.readinessProbeInitialDelay | int | `0` |  |
| prometheus.server.service.servicePort | int | `9090` |  |

