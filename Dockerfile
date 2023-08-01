FROM  node:18.16.1-alpine

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /react-app

# Installing dependencies
COPY ./package.json /react-app
RUN npm install -g npm@9.7.2

# Copying all the files in our project
COPY . .

# Starting our application
CMD npm start