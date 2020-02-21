--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


require 'Thrift'
require 'social_network_constants'

ErrorCode = {
  SE_CONNPOOL_TIMEOUT = 0,
  SE_THRIFT_CONN_ERROR = 1,
  SE_UNAUTHORIZED = 2,
  SE_MEMCACHED_ERROR = 3,
  SE_MONGODB_ERROR = 4,
  SE_REDIS_ERROR = 5,
  SE_THRIFT_HANDLER_ERROR = 6,
  SE_RABBITMQ_CONN_ERROR = 7
}

PostType = {
  POST = 0,
  REPOST = 1,
  REPLY = 2,
  DM = 3
}

User = __TObject:new{
  user_id,
  first_name,
  last_name,
  username,
  password_hashed,
  salt
}

function User:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.first_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.last_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.STRING then
        self.password_hashed = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.STRING then
        self.salt = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function User:write(oprot)
  oprot:writeStructBegin('User')
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 1)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.first_name ~= nil then
    oprot:writeFieldBegin('first_name', TType.STRING, 2)
    oprot:writeString(self.first_name)
    oprot:writeFieldEnd()
  end
  if self.last_name ~= nil then
    oprot:writeFieldBegin('last_name', TType.STRING, 3)
    oprot:writeString(self.last_name)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 4)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.password_hashed ~= nil then
    oprot:writeFieldBegin('password_hashed', TType.STRING, 5)
    oprot:writeString(self.password_hashed)
    oprot:writeFieldEnd()
  end
  if self.salt ~= nil then
    oprot:writeFieldBegin('salt', TType.STRING, 6)
    oprot:writeString(self.salt)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

ServiceException = TException:new{
  __type = 'ServiceException',
  errorCode,
  message
}

function ServiceException:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.errorCode = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.message = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function ServiceException:write(oprot)
  oprot:writeStructBegin('ServiceException')
  if self.errorCode ~= nil then
    oprot:writeFieldBegin('errorCode', TType.I32, 1)
    oprot:writeI32(self.errorCode)
    oprot:writeFieldEnd()
  end
  if self.message ~= nil then
    oprot:writeFieldBegin('message', TType.STRING, 2)
    oprot:writeString(self.message)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Media = __TObject:new{
  media,
  media_type
}

function Media:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.media = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.media_type = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Media:write(oprot)
  oprot:writeStructBegin('Media')
  if self.media ~= nil then
    oprot:writeFieldBegin('media', TType.STRING, 1)
    oprot:writeString(self.media)
    oprot:writeFieldEnd()
  end
  if self.media_type ~= nil then
    oprot:writeFieldBegin('media_type', TType.STRING, 2)
    oprot:writeString(self.media_type)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Url = __TObject:new{
  shortened_url,
  expanded_url
}

function Url:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRING then
        self.shortened_url = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.expanded_url = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Url:write(oprot)
  oprot:writeStructBegin('Url')
  if self.shortened_url ~= nil then
    oprot:writeFieldBegin('shortened_url', TType.STRING, 1)
    oprot:writeString(self.shortened_url)
    oprot:writeFieldEnd()
  end
  if self.expanded_url ~= nil then
    oprot:writeFieldBegin('expanded_url', TType.STRING, 2)
    oprot:writeString(self.expanded_url)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UserMention = __TObject:new{
  user_id,
  username
}

function UserMention:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UserMention:write(oprot)
  oprot:writeStructBegin('UserMention')
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 1)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Creator = __TObject:new{
  user_id,
  username
}

function Creator:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Creator:write(oprot)
  oprot:writeStructBegin('Creator')
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 1)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Post = __TObject:new{
  post_id,
  creator,
  req_id,
  text,
  user_mentions,
  media,
  urls,
  timestamp,
  post_type
}

function Post:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.post_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRUCT then
        self.creator = Creator:new{}
        self.creator:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.STRING then
        self.text = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.LIST then
        self.user_mentions = {}
        local _etype3, _size0 = iprot:readListBegin()
        for _i=1,_size0 do
          local _elem4 = UserMention:new{}
          _elem4:read(iprot)
          table.insert(self.user_mentions, _elem4)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.LIST then
        self.media = {}
        local _etype8, _size5 = iprot:readListBegin()
        for _i=1,_size5 do
          local _elem9 = Media:new{}
          _elem9:read(iprot)
          table.insert(self.media, _elem9)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 7 then
      if ftype == TType.LIST then
        self.urls = {}
        local _etype13, _size10 = iprot:readListBegin()
        for _i=1,_size10 do
          local _elem14 = Url:new{}
          _elem14:read(iprot)
          table.insert(self.urls, _elem14)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 8 then
      if ftype == TType.I64 then
        self.timestamp = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 9 then
      if ftype == TType.I32 then
        self.post_type = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Post:write(oprot)
  oprot:writeStructBegin('Post')
  if self.post_id ~= nil then
    oprot:writeFieldBegin('post_id', TType.I64, 1)
    oprot:writeI64(self.post_id)
    oprot:writeFieldEnd()
  end
  if self.creator ~= nil then
    oprot:writeFieldBegin('creator', TType.STRUCT, 2)
    self.creator:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 3)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.text ~= nil then
    oprot:writeFieldBegin('text', TType.STRING, 4)
    oprot:writeString(self.text)
    oprot:writeFieldEnd()
  end
  if self.user_mentions ~= nil then
    oprot:writeFieldBegin('user_mentions', TType.LIST, 5)
    oprot:writeListBegin(TType.STRUCT, #self.user_mentions)
    for _,iter15 in ipairs(self.user_mentions) do
      iter15:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.media ~= nil then
    oprot:writeFieldBegin('media', TType.LIST, 6)
    oprot:writeListBegin(TType.STRUCT, #self.media)
    for _,iter16 in ipairs(self.media) do
      iter16:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.urls ~= nil then
    oprot:writeFieldBegin('urls', TType.LIST, 7)
    oprot:writeListBegin(TType.STRUCT, #self.urls)
    for _,iter17 in ipairs(self.urls) do
      iter17:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.timestamp ~= nil then
    oprot:writeFieldBegin('timestamp', TType.I64, 8)
    oprot:writeI64(self.timestamp)
    oprot:writeFieldEnd()
  end
  if self.post_type ~= nil then
    oprot:writeFieldBegin('post_type', TType.I32, 9)
    oprot:writeI32(self.post_type)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end