{{/*
Expand the name of the chart.
*/}}
{{- define "justflow.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "justflow.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "justflow.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "justflow.labels" -}}
helm.sh/chart: {{ include "justflow.chart" . }}
{{ include "justflow.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "justflow.selectorLabels" -}}
app.kubernetes.io/name: {{ include "justflow.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
justflow Selector labels
*/}}
{{- define "justflow.justflow.selectorLabels" -}}
app.kubernetes.io/name: {{ include "justflow.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Postgres Selector labels
*/}}
{{- define "justflow.postgres.selectorLabels" -}}
app.kubernetes.io/name: {{ include "justflow.name" . }}-postgres
app.kubernetes.io/instance: {{ .Release.Name }}-postgres
{{- end }}

{{/*
Project Runner Selector labels
*/}}
{{- define "justflow.projectRunner.selectorLabels" -}}
app.kubernetes.io/name: {{ include "justflow.name" . }}-runner
app.kubernetes.io/instance: {{ .Release.Name }}-runner
{{- end }}

{{/*
justflow Runner Selector labels
*/}}
{{- define "justflow.sharedRunner.selectorLabels" -}}
app.kubernetes.io/name: {{ include "justflow.name" . }}-shared-runner
app.kubernetes.io/instance: {{ .Release.Name }}-shared-runner
{{- end }}
