FROM node:latest

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR ./

# Installing dependencies
COPY package*.json ./
RUN npm install

# Expose Port
EXPOSE 3000

# Copying source files
COPY . .

# Building app
RUN npm run build

# Running the app
CMD [ "npm", "start" ]
