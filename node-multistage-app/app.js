const http = require("http");

const host = "0.0.0.0";
const port = 3000;

const server = http.createServer((req, res) => {
  res.end("Hello Multi-stage Docker 🚀");
});

server.listen(port, host, () => {
  console.log(`Server running at http://${host}:${port}`);
});