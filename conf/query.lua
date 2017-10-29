local json = require("cjson")
local parser = require("redis.parser")
local res = ngx.location.capture("/redis_get",{
	args = { key = ngx.var.arg_key }
})
if res.status == 200 then
	reply = parser.parse_reply(res.body)
	-- value = json.encode(reply)
	value = reply
	ngx.say('redis')
	ngx.say(value)
else
	return ngx.exit(404)
end

local res = ngx.location.capture("/dns_get",{
	args = {}
})
if res.status == 200 then
	reply = res.body
	ngx.say('http')
	ngx.say(reply)
else
	return ngx.exit(404)
end

local res = ngx.location.capture("/dns_get",{
	args = {}
})
if res.status == 200 then
	reply = res.body
	ngx.say('http')
	ngx.say(reply)
else
	return ngx.exit(404)
end

return ngx.exit(200)
