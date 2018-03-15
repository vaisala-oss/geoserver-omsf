# O&M SF MeasureObservation Demo

Demonstrate serving O&M SF MeasureObservations using GeoServer.

# Usage

Start GeoServer using docker-compose.

```
docker-compose up
```

After GeoServer is up, O&M SF MeasureObservations should be available at port 8080 on the Docker host. Use e.g. curl to verify.

```
curl 'http://10.13.37.100:8123/geoserver/omsf/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=omsf:MeasureObservation&count=1'
```


# Issues

* xlink namespace is not declared, and is missing from the omsf:observedProperty link
* OMSF schema location points to the namespace identifier URI, not to its actual location
