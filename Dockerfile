# Use Ubuntu base image
FROM ubuntu

# Tag maintainer
MAINTAINER Bill Broughton <bill@gotechspring.com>

# Fix MongoDB locale issue
RUN locale-gen en_US.UTF-8

# Update apt and install git, curl and python
RUN apt-get update && apt-get install -y git curl python

# Install latest Node from nodesource
RUN curl https://deb.nodesource.com/setup | sh
RUN apt-get install -y nodejs

# Install Meteor
RUN curl https://install.meteor.com/ |sh

# Expose Meteor default port
EXPOSE 3000

# Set up the application directory.
VOLUME ["/app"]
WORKDIR /app

# Default to interactive shell
CMD ["/bin/bash"]
