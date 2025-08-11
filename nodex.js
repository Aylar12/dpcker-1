const http = require("http");
const figlet = require("figlet");

const PORT = 3000;

http.createServer((req, res) => {
    figlet("hello :) ", function(err, data) {
        if (err) {
            res.writeHead(500, { "Content-Type": "text/plain" });
            res.end("Error generating figlet");
            return;
        }
        res.writeHead(200, { "Content-Type": "text/plain" });
        res.end(data);
    });
}).listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});