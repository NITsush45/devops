FROM node:18-alpine as build

WORKDIR /app

# Copy package files
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Build the Angular application
RUN npm run build --prod

# Production stage
FROM nginx:alpine

# Copy built application with CORRECT path
COPY --from=build /app/dist/angular-15-crud /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
