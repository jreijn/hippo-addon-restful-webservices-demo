#!/bin/sh
curl -XGET --user admin:admin -H "Content-Type: application/json" http://localhost:8080/cms/rest/api/nodes/content/gallery/myhippoproject/news/2011/?depth=5 > news-2011.json
sed -i.bak s/2011/2012/g news-2011.json
curl -XPUT --user admin:admin -H "Content-Type: application/json" -d@news-2011.json http://localhost:8080/cms/rest/api/nodes/content/gallery/myhippoproject/news/2011