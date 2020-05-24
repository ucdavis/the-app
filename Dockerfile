ARG JDK_VERSION=openjdk:8
FROM $JDK_VERSION

ARG user=appuser
ARG group=appuser
ARG uid=1000
ARG gid=1000

# use debug to troubleshoot
ENV LOG_LEVEL=error
# Required env settings determined by GitHub App
ENV APP_ID=1234
ENV WEBHOOK_SECRET=development
ENV WEBHOOK_PROXY_URL=https://localhost:3000/
ENV PRIVATE_KEY="someprivatestring"

# Lets install our app into /home/node
RUN groupadd -g ${gid} ${group} && useradd -u ${uid} -g ${group} -s /bin/sh ${user}
COPY . /home/appuser/microservices-finaltest
RUN mkdir -p /home/appuser/.gradle
RUN chown -R appuser:appuser /home/appuser


# setup our app
USER appuser

WORKDIR /home/appuser/microservices-finaltest
