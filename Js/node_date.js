var http=require("http");

function proc_req(req,res) {
  res.writeHead(200, {"Content-Type": "application/json"});
  var out = {error: null, data: new Date()};
  res.end(JSON.stringify(out) + "\n");
}

http.createServer(proc_req).listen(8080);
