FROM node:argon

# Create app directory
ENV APP_HOME /opt/myapp
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Install app dependencies
COPY ./app/package.json $APP_HOME
RUN npm install

# Bundle app source
COPY ./app $APP_HOME

EXPOSE 8080
CMD [ "npm", "start" ]
