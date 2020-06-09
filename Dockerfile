FROM node:latest

# Environment Variables
ENV APP_PORT=3000

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR ./

# Installing dependencies
COPY package*.json ./
RUN npm install

# Expose Port
EXPOSE ${APP_PORT}

# Copying source files
COPY . .

# Building app
RUN npm run build

# Running the app
CMD [ "npm", "start" ]
