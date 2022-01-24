require 'rack'
def server(path_requested)
    app = Proc.new do |env|
    req = Rack::Request.new(env)
    res = Rack::Response.new
    res['Content-Type'] = path_requested
    res.write(path_requested.match(/\/.*/)
    res.finish
    end
end



Rack::Server.start(
  app: server(path_requested),
  Port: 3000
)