FROM nginx

## Step 1:
#RUN rm -r /usr/share/nginx/html/ws

## Step 2:
# Copy source code to working directory
# COPY index.html /usr/share/nginx/html
COPY ws /usr/share/nginx/html/ws

