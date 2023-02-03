#!/bin/bash

echo "export JWT_TOKEN='$(jwt-creator create \
    --private-key-file "${PARAM_PRIVATE_KEY_FILE}" \
    --issued-at-now --expires-in-seconds "${PARAM_EXPIRES_IN_SECONDS}" \
    --issuer "${PARAM_ISSUER}")'" >> "$BASH_ENV"
