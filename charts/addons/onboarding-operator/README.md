# onboarding-operator

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square)
![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)
![AppVersion: 0.1.0-onboarding](https://img.shields.io/badge/AppVersion-0.1.0-onboarding--informational?style=flat-square)

Helm chart for the Workload Onboarding Operator. It is used to onboard EC2 VMs and ECS tasks to an Istio service mesh installed on an EKS cluster.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.repository | string | `"addon-containers.istio.tetratelabs.com"` | Image repository from where download the onboarding images |
| image.tag | string | `"0.1.0-onboarding"` | Onboarding image tag to be used |
| image.pullSecrets | list | `[]` | Image pull secrets to be used to pull the onboarding images |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| repository.onboardingPackageIstioSidecar.tag | string | `"1.24.3-tetrate3"` | Istio sidecar tag to be used for the onboarding workloads |
| onboarding.endpoint.host | string | `"onboarding-endpoint.example"` | Hostname for the onboarding endpoint |
| onboarding.endpoint.tlsSecretName | string | `"onboarding-endpoint-tls-cert"` | Secret name for the onboarding endpoint TLS certificate |

To view all support configuration options and documentation, run:

```
helm show values tetratelabs/onboarding-operator
```
## Supported TID Versions
The supported TID versions are: 1.24.3-tetrate0, 1.24.3-tetrate1, 1.24.3-tetrate2, 1.24.3-tetrate3.

## Installing the Chart

Set the required variables for TIS credentials:

```shell
export TIS_USER="<tis-username>"
export TIS_PASS="<tis-password>"
```

Then create a secret for the TIS add-ons repository. This will be used later to pull the Onboarding Operator image from the TIS add-ons repository.

```shell
kubectl create secret docker-registry tetrate-addons-creds \
    --docker-server="addon-containers.istio.tetratelabs.com" \
    --docker-username=${TIS_USER} \
    --docker-password=${TIS_PASS} \
    --docker-email="${USER}@" \
    -n istio-system
```

Create a values file for the Onboarding Operator with the required values.
Please note that the `repository.onboardingPackageIstioSidecar.tag` value should be aligned with the Istio version
installed in the EKS cluster.

```shell
cat <<EOF > onboarding-operator-values.yaml
image:
  pullSecrets:
    - name: tetrate-addons-creds
repository:
  onboardingPackageIstioSidecar:
    tag: 1.24.3-tetrate3 # TID version installed in the EKS cluster
EOF
```

Install the Onboarding Operator:

```shell
helm install onboarding-operator tis-addons/onboarding-operator \
    --namespace istio-system \
    --values onboarding-operator-values.yaml \
    --version 0.1.0
```

## Uninstalling the Chart

First, delete the `onboarding-operator` deployment, the onboarding operator is watching the deletion of this deployment, and it will remove the resources created by the operator.

```bash
kubectl -n istio-system delete deploy onboarding-operator
```

Then, you can uninstall the chart with:

```bash
helm -n istio-system uninstall onboarding-operator
```
