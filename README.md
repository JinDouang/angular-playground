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
You can also run `npm run start:docker` for a dev server dockerized version

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.
You can also run `npm run build:docker` or `./build.sh build` to build the project in a container. 

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Error encountered during build

If you happen to encounter `ERROR in ngcc is already running at process with id xxxx`
Try removing `__ngcc_lock_file__` in `node_modules/@angular/compiler-cli/ngcc/__ngcc_lock_file__ `
Other solution is clear node module and rebuild angular image

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.
