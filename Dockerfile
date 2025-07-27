# Use the base image from n8n
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Create folder for custom nodes
RUN mkdir -p /home/node/.n8n/custom

# Install Tavily node inside custom folder
RUN npm install --prefix /home/node/.n8n/custom --unsafe-perm @tavily/n8n-nodes-tavily

# Fix permissions just in case
RUN chown -R node:node /home/node/.n8n

# Switch back to node user
USER node


