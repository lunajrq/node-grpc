FROM node:12


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 50051
CMD [ "node", "./dynamic_codegen/route_guide/route_guide_server.js", "--db_path=./dynamic_codegen/route_guide/route_guide_db.json" ]