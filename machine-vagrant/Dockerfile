FROM node:argon

# Create app directory
ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Install app dependencies
COPY package.json $APP_HOME
RUN npm install

# Bundle app source
COPY . $APP_HOME

EXPOSE 8080
CMD [ "npm", "start" ]
