# docker-compose-tutorial
Docker Compose Tutorial

# Copy the repo

    git clone git@github.com:rcclemente/docker-compose-tutorial.git

# Build the images

    docker-compose build
    docker-compose up

# Initialize the db

    docker-compose run blog-app rake db:create

    http://192.168.42.45:8080/

# Stop the app and cleanup

    docker-compose down
    docker-compose rm


# Troubleshooting

- Mysql error

    ```bash
    docker-compose run blog-app bundle install

    # if running from local directory not inside docker

    gem install mysql2 -v '0.4.10' -- --with-cflags=\"-I/usr/local/opt/openssl/include\" --with-ldflags=\"-L/usr/local/opt/openssl/lib\"
    ```

- Webpacker error upon bootup

    ```bash
    docker-compose run blog-app rails webpacker:install
    ```

