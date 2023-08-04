FROM  node:18.16.1-alpine

# Declaring env
ARG http_proxy
ARG https_proxy
ENV http_proxy=http://10.125.241.80:808/
ENV https_proxy=http://10.125.241.80:808/
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /react-app

# Installing dependencies
COPY ./package.json /react-app
RUN npm install --verbose

# Copying all the files in our project
COPY . .

# Starting our application
CMD npm start
