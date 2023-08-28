const request = require('supertest');
const app = require('./index'); 

describe('JavaScript Hello App', () => {
  it('should respond with "Hello Node!"', async () => {
    const response = await request(app).get('/');
    expect(response.status).toBe(200);
    expect(response.text).toBe('Hello Node!\n');
  });
});
