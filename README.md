# MLflow Helm Chart

## Release new helm chart version

The simplest way is to tag the repo with the appropriate version tag and let gitlab's CI do the rest.
Don't forget to also increase the chart version in `mlflow/Chart.yaml`

### Manual release

Prerequisites:

```bash
# the access token requires api scope
helm repo add --username $GITLAB_USER --password $GITLAB_ACCESS_TOKEN mondata-mlflow https://gitlab.mondata.de/api/v4/projects/113/packages/helm/stable
helm plugin install https://github.com/chartmuseum/helm-push.git
```

Performing the release:

```bash
helm package mlflow
helm cm-push mlflow-$CHART_VERSION.tgz mondata-mlflow
```


