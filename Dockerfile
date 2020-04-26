FROM node:14-alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL org.opencontainers.image.title="bdwyertech/serverless" \
      org.opencontainers.image.description="Serverless Framework" \
      org.opencontainers.image.authors="Brian Dwyer <bfscloud@broadridge.com>" \
      org.opencontainers.image.url="https://hub.docker.com/r/bdwyertech/serverless" \
      org.opencontainers.image.source="https://github.com/bdwyertech/docker-serverless.git" \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.created=$BUILD_DATE \
      org.label-schema.name="bdwyertech/serverless" \
      org.label-schema.description="Serverless Framework" \
      org.label-schema.url="https://hub.docker.com/r/bdwyertech/serverless" \
      org.label-schema.vcs-url="https://github.com/bdwyertech/docker-serverless.git"\
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE

RUN yarn global add serverless

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["serverless"]
