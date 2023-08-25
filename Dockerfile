# Use the official Node.js base image
FROM node:14

# Set the working directory
WORKDIR /index

# Copy the application code to the container
COPY index.js /index

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
