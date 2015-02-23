#!/bin/sh
curl --user admin:admin -H "Content-Type: application/json" -XPOST http://localhost:8080/cms/rest/api/v1/_query/ -d '
{
  "statement":"/jcr:root/content/documents//element(*,hippo:document)",
  "language":"xpath",
  "limit":5
}'