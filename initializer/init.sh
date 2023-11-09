#!/bin/sh

# Echo statements for debugging
echo "Initializer has started."
echo "Mapping service should be up and running."

# Debug
echo "Files to be POSTed:"
ls -l /mappingSchemas/

# POST the mapping schemas
echo "POSTing the mapping schemas"
curl -v -X POST http://mapping-service:8095/api/v1/mappingAdministration \
     -H "Content-Type: multipart/form-data" \
     -F "record=@/mappingSchemas/semAcqMapping.txt" \
     -F "document=@/mappingSchemas/SEMFIBtoJSON_SEMTomoAcqToJSON_1.0.0.mapping"