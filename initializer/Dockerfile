FROM alpine:3.7

RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*

COPY timeseries_obs_fmi_big.sql.gz /
CMD (psql -d measurements -c "SELECT 1" || createdb measurements -T template_postgis) && zcat timeseries_obs_fmi_big.sql.gz | psql -d measurements
#CMD /bin/sh


