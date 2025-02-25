{{/*
Labels that should be applied to ALL resources.
*/}}
{{- define "onboarding.labels" -}}
{{- if .Release.Service -}}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end }}
{{- if .Release.Name }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- if and .Chart.Name .Chart.Version }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}
{{- end -}}
