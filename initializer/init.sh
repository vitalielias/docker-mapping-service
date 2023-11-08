#!/bin/sh

# Echo statements for debugging
echo "Initializer has started."
echo "Mapping service should be up and running."

# POST the mapping schemas
echo "POSTing the mapping schemas"
curl -X POST http://mapping-service:8095/api/v1/mappingAdministration \
     -H "Content-Type: multipart/form-data" \
     -F "record=@/mapping-service/mappingSchemas/semAcqMapping.txt" \
     -F "document=@/mapping-service/mappingSchemas/SEMFIBtoJSON_SEMTomoAcqToJSON_1.0.0.mapping"