FROM node:alpine3.15

RUN apk update && \
    apk --no-cache add curl jq coreutils

COPY entrypoint.sh /entrypoint.sh
COPY workflow-application-token-action-2.1.0/dist/index.js /index.js

ENTRYPOINT ["sh", "/entrypoint.sh"]
