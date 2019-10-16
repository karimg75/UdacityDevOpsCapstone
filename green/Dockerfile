FROM nginx

## Step 1:
RUN rm /usr/share/nginx/html/index.html

## Step 2:
# Copy source code to working directory
COPY index.html /usr/share/nginx/html
COPY favicon.ico /usr/share/nginx/html
COPY css /usr/share/nginx/html/css
