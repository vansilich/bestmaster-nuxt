FROM node:14.18.2-alpine3.12

# create destination directory
RUN mkdir -p /var/www/nuxt
WORKDIR /var/www/nuxt

# update and install dependency
RUN apk update && apk upgrade
RUN apk --update --no-cache add \
    libc6-compat \
    automake \
    autoconf \
    build-base \
    zlib \
    zlib-dev libtool nasm

# copy the app, note .dockerignore
COPY ./ /var/www/nuxt

RUN npm i postcss
RUN npm i

# expose 3000 on container
EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000
ENV NODE_ENV production

RUN npm run build
CMD ["npm", "run", "start"]