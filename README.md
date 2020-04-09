# docker-compose-tutorial
Docker Compose Tutorial

# Copy the repo

    git clone git@github.com:rcclemente/docker-compose-tutorial.git

# Build the images

    docker-compose build
    docker-compose up

# Initialize the db

    docker-compose run blog-app rake db:create db:migrate

    http://192.168.42.45:8080/

# Connect to mysql

    mysql -h 192.168.42.45 -P 8181 -u root -p

    docker-compose exec db_server /bin/bash
    mysql -u root -p

# Stop the app and cleanup

    docker-compose down
    docker-compose rm


## Troubleshooting

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

## Extras

- Generate a model and controller

    ```bash
    docker-compose run blog-app rails g scaffold Post author:string article:text
    ```

