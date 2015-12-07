# Elevator Demo
A simple demo of the Elevator gem https://github.com/gssbzn/elevator/

## Installation

1. Clone the repository and bundle.

  ```sh
  $ git clone https://github.com/gssbzn/elevator_demo.git
  $ cd elevator_demo
  $ bundle
  ```

2. Copy the `application.yml.example` to `config/application.yml` and set your credentials.

3. Create the database and run migrations.

  ```sh
  $ rake db:create
  ```

## Starting the app
You can start the app with foreman, this will launch puma web server:

```sh
$ foreman start -f Procfile.dev
```

## License

MIT License. Copyright 2015 Gustavo Bazan. http://gustavobazan.com
