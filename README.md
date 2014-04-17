# Hippo RESTful Web services demo project

This project is a demo project for the [Hippo RestFul Web services addon](https://github.com/jreijn/hippo-webservices-addon).
Run this project right now you will need to install the web services addon first into your local maven repository.

## Running locally

This project uses the Maven Cargo plugin to run the CMS and site locally in Tomcat.
From the project root folder, execute:

```
  $ mvn clean install
  $ mvn -P cargo.run
```

Access the CMS at http://localhost:8080/cms, and the site at http://localhost:8080/site
Logs are located in target/tomcat6x/logs

## Testing the API

The web services addon APIs are documented with [Swagger](https://helloreverb.com/developers/swagger).

Visiting [http://localhost:8080/cms/swagger/](http://localhost:8080/cms/swagger/) after startup shows you the Swagger UI, where you see and test the available service end-points and their documentation.
Before you can do so you will need to login with the default username and password .e.g (admin/admin).
