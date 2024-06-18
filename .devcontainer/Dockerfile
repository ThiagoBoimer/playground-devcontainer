# Use Ubuntu as the base image
FROM ubuntu:latest

# Copy setup script and make it executable
COPY setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

# User config
RUN useradd -ms /bin/zsh myself
WORKDIR /home/myself

# Run the setup script
RUN /usr/local/bin/setup.sh

USER myself

# Copy .zshrc config file
COPY .zshrc /home/myself/.zshrc

# Expose ports
EXPOSE 8000

# Default command (optional)
CMD ["zsh"]
