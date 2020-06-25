FROM node:lts-alpine

ENV TINI_VERSION v0.18.0

RUN mkdir -p /usr/src/app/node_modules && chown -R node:node /usr/src/app

WORKDIR /usr/src/app

COPY --chown=node:node package.json yarn.* /usr/src/app/

USER node

RUN yarn install --frozen-lockfile

COPY --chown=node:node . /usr/src/app

RUN yarn build


EXPOSE 3333

# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

# RUN chmod +x /tini

# ENTRYPOINT [ "/tini", "--" ]
RUN ls
CMD node dist/shared/infra/http/server.js
