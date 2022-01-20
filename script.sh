curl 'https://hennepintech.edu/directory/index.json' | jq -c --arg _type employee '[.[]] | .[0] | .[] + {_type: $_type}' > dist/employees.ndjson

curl 'https://hennepintech.edu/directory/index.json' | jq -c --arg _type department '[.[]] | .[1] | .[] + {_type: $_type}' > dist/departments.ndjson