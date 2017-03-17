FROM nginx:alpine

COPY ./config/elasticsearch.template /elasticsearch.template

RUN envsubst < /elasticsearch.template > /etc/nginx/conf.d/default.conf '${ELASTICSEARCH_ENDPOINT}'