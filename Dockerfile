FROM nginx

# set working directory
WORKDIR /app

# add app
COPY . /usr/share/nginx/html

