# AngularPlayground

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 12.0.2.

# Angular (Docker version)

Before you do anything, you must build your dockerized Angular application
Run `./build.sh build` to build angular-playground image and in order to interact with docker-compose

## Build arguments

Here is a list of arguments you can use for build.sh (`chmod u+x build.sh` if permission denied)

`./build.sh `

| Arguments       | Description                                  | Raw instruction to type                             |
| ------------ | -------------------------------------------- | ----------------------------------- |
| build        | build angular image                        | `docker image build -t angular-playground .` |
| clean        | clean angular image                        | `docker rmi angular-playground` |


Example: `./build.sh build`

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.
