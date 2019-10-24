FROM nginx

## Step 1:
#RUN rm /usr/share/nginx/html/index.html
RUN sudo rm -r green/ws

## Step 2:
# Copy source code to working directory
# COPY index.html /usr/share/nginx/html
# COPY ws /usr/share/nginx/html/ws
