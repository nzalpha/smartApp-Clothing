#!/bin/bash
ENVIRONMENT="${1:-dev}"

case "$ENVIRONMENT" in 
    dev)
        echo "Starting the application in dev mode"
        npm run start:dev
        ;;
    stage)
        echo "Starting the application in stage mode"
        npm run start:stage
        ;;
    prod)
        echo "Starting the application in prod mode"
        npm run start:prod
        ;;
    *)
        echo "Invalid environment specified, Valid options are 'dev', 'stg', 'prod'"
        exit 1
        ;;
esac