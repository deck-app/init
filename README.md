# Iris stack

> Iris project with Alpine linux Iris is a fast, simple yet fully featured and very efficient web framework for Go. Super easy to get started and running in a few mins

## Install

### Using DECK

Install iris-stack from the DECK marketplace and follow the instructions on the GUI

### From terminal with Docker

```
git clone https://github.com/deck-app/iris-stack/
cd iris-stack
```

```
docker-compose up -d
```
### Modifying project settings
From the DECK app, go to stack list and click on project's `More > configure > Advanced configuration`
Follow the instructions below and restart your stack from the GUI

#### Rebuilding from terminal

You have to rebuild the docker image after you make any changes to the project configuration, use the snippet below to rebuild and restart the stack

```
docker-compose stop && docker-compose up --build -d
```
