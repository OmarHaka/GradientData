const http = require('http');

const port = process.env.PORT || 3000;
const url = `http://localhost:${port}`;

const server = require('./index'); // This will automatically start your server

// Simple test to check if the server responds with "Hello Node!"
http.get(url, (res) => {
  let data = '';

  res.on('data', (chunk) => {
    data += chunk;
  });

  res.on('end', () => {
    if (data === 'Hello Node!\n') {
      console.log('Test passed: Server responded with the expected message.');
    } else {
      console.error('Test failed: Server response did not match expected message.');
    }
    server.close(); // Close the server after the test
  });
}).on('error', (err) => {
  console.error('Test failed: Error making request to server:', err);
});
