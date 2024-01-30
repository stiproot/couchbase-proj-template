#!/bin/sh

CLUSTER_USERNAME="root"
CLUSTER_PASSWORD="R007__.."
COUCHBASE_URL="http://127.0.0.1:8093/query/service"


curl -u "$CLUSTER_USERNAME:$CLUSTER_PASSWORD" -v -X POST "$COUCHBASE_URL" \
	-d 'statement=CREATE PRIMARY INDEX ON some_bucket.some_scope.some_collection'
