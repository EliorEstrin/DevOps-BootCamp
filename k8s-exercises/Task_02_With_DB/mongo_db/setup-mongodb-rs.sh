#!/bin/bash
# https://www.mongodb.com/docs/manual/reference/replica-configuration/
# https://www.mongodb.com/docs/manual/reference/method/rs.initiate/#example
kubectl exec -it mongo-0 -- mongosh <<< 'rs.initiate(
  {
    _id: "rs0",
    version: 1,
    members: [
      { _id: 0, host: "mongo-0.mongo-service:27017" },
      { _id: 1, host: "mongo-1.mongo-service:27017" },
      { _id: 2, host: "mongo-2.mongo-service:27017" }
    ]
  }
)'
# you can check mongo replica set status with: `kubectl exec -it mongo-0 -- mongosh <<< 'rs.status()'`
