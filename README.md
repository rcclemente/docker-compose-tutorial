# docker-compose-tutorial
Docker Compose Tutorial

# Copy the repo

    git clone git@github.com:rcclemente/docker-compose-tutorial.git

# Build the images

    docker-compose build

    docker-compose up
    docker-compose run blog-app rake db:create

    http://192.168.42.45:8080/

# Troubleshooting

- Webpacker error upon bootup

    docker-compose run blog-app rails webpacker:install

