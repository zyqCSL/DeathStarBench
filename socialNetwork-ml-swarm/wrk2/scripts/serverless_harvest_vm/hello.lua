require "socket"
math.randomseed(socket.gettime()*1000)
math.random(); math.random(); math.random()

-- curl -k -u 23bc46b1-71f6-4ed5-8c54-816aa4f8c502:123zO3xZCLrMN6v2BKK1dXYFpXlPkccOFqm12CdAsMgRU4VrNZ9lyGVCGuMDGIwP -X POST https://172.17.0.1/api/v1/namespaces/_/actions/compute_py?blocking=true

local function hello_py()
  local args = "&blocking=true"
  local method = "POST"

  local headers = {}
  headers["Content-Type"] = "application/json"
  headers["Authorization"] = "Basic MjNiYzQ2YjEtNzFmNi00ZWQ1LThjNTQtODE2YWE0ZjhjNTAyOjEyM3pPM3haQ0xyTU42djJCS0sxZFhZRnBYbFBrY2NPRnFtMTJDZEFzTWdSVTRWck5aOWx5R1ZDR3VNREdJd1A="

  local path = "https://172.17.0.1/api/v1/namespaces/_/actions/hello_py?" .. args
  return wrk.format(method, path, headers, nil)
end

-- read:write = 85:15
request = function()
  return hello_py()
end