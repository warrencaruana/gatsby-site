FROM gatsbyjs/gatsby:onbuild as build

FROM gatsbyjs/gatsby
RUN npm run build
COPY public /pub


# FROM node:13.3.0 AS compile-image

# RUN npm install -g yarn

# WORKDIR /opt/ng
# COPY .npmrc package.json yarn.lock ./
# RUN yarn install

# ENV PATH="./node_modules/.bin:$PATH" 

# COPY . ./
# RUN npm run build

# FROM nginx
# COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf
# COPY --from=compile-image public /usr/share/nginx/html

# docker build -t hello-world-3 .
# docker run --name hello-world-3-container -d -p 80:80 hello-world-3
# docker push warren1230/hello-world-3
# docker pull warren1230/hello-world-3
# docker tag 980ca0083fb1 docker.pkg.github.com/warrencaruana/gatsby-site/hello-world-3:latest