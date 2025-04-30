# Use official NodeJS base image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Clone repo and install dependencies
RUN git clone https://github.com/Exequtech/hydro-coding.git .
RUN npm install

# Build the React app
RUN npx vite build --base=/t4

# Use nginx to serve the build folder
FROM nginx:alpine
COPY --from=0 /usr/src/app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
