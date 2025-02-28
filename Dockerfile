FROM nginx:latest
LABEL maintainer="Ajeet Raina"

# Copy all files to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Health check to ensure nginx is running
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
