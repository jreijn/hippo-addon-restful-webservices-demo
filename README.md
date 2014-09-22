# Hippo RESTful Web services demo project

[![Build Status](https://travis-ci.org/jreijn/hippo-addon-webservices-demo.svg?branch=master)](https://travis-ci.org/jreijn/hippo-addon-webservices-demo)

This project is a demo project for the [Hippo RESTful Web services addon](https://github.com/jreijn/hippo-webservices-addon).
To run this project  you will first need to install the web services add-on into your local maven repository.

## Running locally

This project uses the Maven Cargo plugin to run the CMS and site locally in Tomcat.
From the project root folder, execute:

```
  $ mvn clean install
  $ mvn -P cargo.run
```

Access the CMS at http://localhost:8080/cms, and the site at http://localhost:8080/site
Logs are located in target/tomcat7x/logs

## Testing the API

The web services addon APIs are documented with [Swagger](https://helloreverb.com/developers/swagger).

Visiting [http://localhost:8080/cms/swagger/](http://localhost:8080/cms/swagger/) after startup shows you the Swagger UI, where you see and test the available service end-points and their documentation.
Before you can do so you will need to login with the default username and password .e.g (admin/admin).

## Examples of working with the API

```
$ curl --user admin:admin http://localhost:8080/cms/rest/api/
```
Which returns:

``` json
{
  "clusterid":"",
  "vendor":{
    "name":"Hippo Repository","version":"2.26.00"
    }
}
```

Performing a search for document within the cms

```
curl --user admin:admin -H "Content-Type: application/json" -XPOST http://localhost:8080/cms/rest/api/_query/ -d '
{
  "statement":"/jcr:root/content/documents//element(*,hippo:document)",
  "language":"xpath",
  "limit":5
}'
```
