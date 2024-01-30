#!/bin/sh

/entrypoint.sh couchbase-server &

sleep 10

/opt/couchbase/init-init-cluster.sh
/opt/couchbase/init-create-bucket.sh some_bucket
/opt/couchbase/init-create-scope.sh some_bucket some_scope
/opt/couchbase/init-create-collection.sh some_bucket some_scope some_collection
/opt/couchbase/indx.sh

tail -f /dev/null
