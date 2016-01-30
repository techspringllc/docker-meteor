# Meteor Development Docker Image

This is a simple Docker image to set up a Meteor development environment.

The image starts with an Ubuntu base image and adds git, curl, python, and the latest version of node. The latest version of meteor is installed also. The image creates an /app directory for your application and sets this to the working directory.  By default, you will be taken to an interactive shell when you run the image.

## Example usage

```
docker run -it --name <your-image-name> -v "$(pwd)":/app techspring/meteor-dev
```