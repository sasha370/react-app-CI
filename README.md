![decorous-lake.surge.sh](https://github.com/sasha370/react-app-CI/actions/workflows/workflow-staging.yml/badge.svg)
![amused-kittens.surge.sh](https://github.com/sasha370/react-app-CI/actions/workflows/workflow-master.yml/badge.svg)

[staging](decorous-lake.surge.sh) | [production](amused-kittens.surge.sh)
##About
This is a test project to learn how GitHub CI works.
Here I'm used:

- GHA
- Slack notification
- Coverage report on CodeCov
- Commitizen for checking commit's text
- Surge for simple deploy
- Semantic-release for auto tag

##What was done:
1) Workflow for all PR in Develop branch
2) Workflow for Staging 
3) Workflow for Production
4) Send Slack msg when new Release created
5) Custom Actions for GH:
    - launch some JS file
    - run Docker container with some script
    - make Issue on GitHub
    - send Slack msg from Docker container with PR's data
    
![](../../../Изображения/Выделение_019.png)

### Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

### `npm start`
Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.
