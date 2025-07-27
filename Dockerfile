FROM n8nio/n8n:latest

USER root

# Install the Tavily custom node globally
RUN npm install --unsafe-perm -g @tavily/n8n-nodes-tavily

USER node

