FROM ghcr.io/mlflow/mlflow:v2.3.0
RUN pip install psycopg2-binary google-cloud-storage boto3