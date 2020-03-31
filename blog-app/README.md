# Copy the repo

    git clone git@github.com:rcclemente/docker-compose-tutorial.git

# Build the images

    docker-compose build
    docker-compose up
    docker-compose run blog-app rails webpacker:install
    docker-compose run blog-app rake db:create
