socket = require "socket"

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
function enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end

media_dir = "/home/zhangyanqi/cornell/Software/socialNetwork-ml-swarm/DeathStarBench/socialNetwork-ml-swarm/wrk2/scripts/social-network/images/"


media_jpg = {}
media_jpg_num = 17
media_png  = {}
media_png_num = 15

for i = 1, media_jpg_num do
  f = io.open(media_dir .. tostring(i) .. ".jpg", "rb")
  if f then 
    -- local temp = f:read("*all")
    -- ocr_img_jpg[i] = mime.b64(temp)
    media_jpg[i] = enc(f:read("*all"))
    print(media_jpg[i])
    print()
    f:close()
    print(media_dir .. tostring(i) .. ".jpg cached")
  else
    print(media_dir .. tostring(i) .. ".jpg doesn't exist")
  end
end 

for i = 1, media_png_num do 
  f = io.open(media_dir .. tostring(i) .. ".png", "rb")
  if f then 
    -- local temp = f:read("*all")
    -- ocr_img_png[i] = mime.b64(temp)
    media_png[i] = enc(f:read("*all"))
    print(media_png[i])
    print()
    f:close()
    print(media_dir .. tostring(i) .. ".png cached")
  else
    print(media_dir .. tostring(i) .. ".png doesn't exist")
  end
end

-- compose a medium array

medium = '['
media_types = '['

for i = 0, 3, 1 do
	media_id = math.random(1, media_jpg_num)
	medium = medium .. "\"" .. media_jpg[media_id] .. "\","
	media_types = media_types .. "\"jpg\","
end

medium = medium:sub(1, #medium - 1) .. "]"
media_types = media_types:sub(1, #media_types - 1) .. "]"
print(medium)
print(media_types)
