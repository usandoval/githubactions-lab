
# Build Angular application

FROM node:12-slim as builder

COPY ./package.json ./package-lock.json ./

RUN npm ci && mkdir /app && mv ./node_modules ./app

WORKDIR /app

COPY ./ .

RUN npm run build

# Setup NGINX server for the app

FROM nginx:alpine

# Copy nginx app config file
COPY ./nginx/app.conf /etc/nginx/conf.d/

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# From ‘builder’ stage copy over the application artifacts
COPY --from=builder /app/dist /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]