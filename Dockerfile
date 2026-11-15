# Serves the static files as-is, the same way GitHub Pages does. No build step.
FROM nginxinc/nginx-unprivileged:alpine
USER root
# Drop nginx's sample pages so only this repo's files are served.
RUN rm /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
USER 101
EXPOSE 8080
