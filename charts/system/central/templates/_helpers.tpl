{{- define "generate-tls-certs" }}
  {{- if not .ca }}
    {{- $_ := set . "ca" dict -}}
    {{- $secretName := "central-plane-cert-ca" -}}
    {{- $useGeneratedCerts := .Values.service.tls.useGeneratedCerts -}}
    {{- $crt := .Values.service.tls.generated.cert -}}
    {{- $key := .Values.service.tls.generated.key -}}
    {{- $definedSecretName := .Values.service.tls.secretName -}}
    {{- $selfSign := true -}}

    {{- if and $useGeneratedCerts .Values.service.tls.enable }}
      {{- if and (ne $crt "") (ne $key "") }}
        {{- $crt := b64enc $crt -}}
        {{- $key := b64enc $key -}}
        {{- $_ := set .ca "DefinedCert" $crt -}}
        {{- $_ := set .ca "DefinedKey" $key -}}
        {{- $selfSign := false -}}
      {{- end }}

      {{- $altNames := concat (list "127.0.0.1" "localhost" (printf "tis-central-plane.%s.svc" .Release.Namespace) (printf "tis-central-plane.%s.svc.cluster.local" .Release.Namespace)) ( .Values.service.tls.generated.extraDnsNames ) }}

      {{- $_ := set .ca "SelfSign" $selfSign -}}
      {{- $_ := set .ca "SecretName" $secretName -}}
      {{- $_ := set .ca "CertificateName" "central-plane-cert-issuer-ca" -}}
      {{- $_ := set .ca "DNSNames" $altNames -}}
    {{- else }}
      {{- $_ := set .ca "SecretName" $definedSecretName -}}
      {{- $_ := set .ca "CertificateName" "" -}}
      {{- $useGeneratedCerts := false -}}
    {{- end }}

    {{- $_ := set .ca "UseGenerateCert" $useGeneratedCerts -}}
  {{- end }}
{{- end }}