FROM quay.io/hermit/hermit-ser:latest

# Clone your forked repository
RUN git clone https://github.com/asimzada/hermit-bot /root/hermit-md
WORKDIR /root/hermit-md/

# Install dependencies
RUN yarn install --network-concurrency 1

# Start the application
CMD ["node", "index.js"]
