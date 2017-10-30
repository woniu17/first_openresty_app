local json = require("cjson")
local parser = require("redis.parser")

-- 1.
local res = ngx.location.capture("/redis_get",{
	args = { key = ngx.var.arg_key }
})
if res.status == 200 then
	ngx.say('redis')
	local replies = parser.parse_replies(res.body, 2)
	ngx.say(replies)
        for i, reply in ipairs(replies) do
	    ngx.say(reply[1])
        end
else
	return ngx.exit(404)
end

-- 2.
local res = ngx.location.capture("/redis_get",{
	args = { key = ngx.var.arg_key }
})
if res.status == 200 then
	ngx.say('redis')
	local replies = parser.parse_replies(res.body, 2)
	ngx.say(replies)
        for i, reply in ipairs(replies) do
	    ngx.say(reply)
        end
else
	return ngx.exit(404)
end

-- 3.
local res = ngx.location.capture("/dns_get",{
	args = {}
})
if res.status == 200 then
	local reply = res.body
	ngx.say('http')
	ngx.say(reply)
else
	return ngx.exit(404)
end

-- 4.
local res = ngx.location.capture("/dns_get",{
	args = {}
})
if res.status == 200 then
	local reply = res.body
	ngx.say('http')
	ngx.say(reply)
else
	return ngx.exit(404)
end

return ngx.exit(200)
