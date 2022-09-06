# GitHubActionsDemo

A very simple workflows demonstration using initial Angular code page


This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 11.2.10.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## GitHub Actions Workflows
build-test.yml - Triggered by push in feature branches. Code checkout, dependencies resolution and Angular compilation. Includes Angular basic test and SAST using SonarCloud scan

deployment.yml - Creates a Docker image for the Angular application. Uses SAST using SonarCloud scan and Container security scan using Azure/container-scan action. Finally deploys application image into Azure Container Instances
