--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


local Thrift = require 'Thrift'
local TType = Thrift.TType
local TMessageType = Thrift.TMessageType
local __TObject = Thrift.__TObject
local TApplicationException = Thrift.TApplicationException
local __TClient = Thrift.__TClient
local __TProcessor = Thrift.__TProcessor
local ttype = Thrift.ttype
local ttable_size = Thrift.ttable_size
local social_network_ttypes = require 'social_network_ttypes'
local ServiceException = social_network_ttypes.ServiceException

-- HELPER FUNCTIONS AND STRUCTURES

local RegisterUser_args = __TObject:new{
  req_id,
  first_name,
  last_name,
  username,
  password,
  carrier
}

function RegisterUser_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
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
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype43, _vtype44, _size42 = iprot:readMapBegin() 
        for _i=1,_size42 do
          local _key46 = iprot:readString()
          local _val47 = iprot:readString()
          self.carrier[_key46] = _val47
        end
        iprot:readMapEnd()
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

function RegisterUser_args:write(oprot)
  oprot:writeStructBegin('RegisterUser_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
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
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 5)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 6)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter48,viter49 in pairs(self.carrier) do
      oprot:writeString(kiter48)
      oprot:writeString(viter49)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local RegisterUser_result = __TObject:new{
  se
}

function RegisterUser_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function RegisterUser_result:write(oprot)
  oprot:writeStructBegin('RegisterUser_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local RegisterUserWithId_args = __TObject:new{
  req_id,
  first_name,
  last_name,
  username,
  password,
  user_id,
  carrier
}

function RegisterUserWithId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
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
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 7 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype51, _vtype52, _size50 = iprot:readMapBegin() 
        for _i=1,_size50 do
          local _key54 = iprot:readString()
          local _val55 = iprot:readString()
          self.carrier[_key54] = _val55
        end
        iprot:readMapEnd()
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

function RegisterUserWithId_args:write(oprot)
  oprot:writeStructBegin('RegisterUserWithId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
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
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 5)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 6)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 7)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter56,viter57 in pairs(self.carrier) do
      oprot:writeString(kiter56)
      oprot:writeString(viter57)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local RegisterUserWithId_result = __TObject:new{
  se
}

function RegisterUserWithId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function RegisterUserWithId_result:write(oprot)
  oprot:writeStructBegin('RegisterUserWithId_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local Login_args = __TObject:new{
  req_id,
  username,
  password,
  carrier
}

function Login_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype59, _vtype60, _size58 = iprot:readMapBegin() 
        for _i=1,_size58 do
          local _key62 = iprot:readString()
          local _val63 = iprot:readString()
          self.carrier[_key62] = _val63
        end
        iprot:readMapEnd()
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

function Login_args:write(oprot)
  oprot:writeStructBegin('Login_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 3)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 4)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter64,viter65 in pairs(self.carrier) do
      oprot:writeString(kiter64)
      oprot:writeString(viter65)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local Login_result = __TObject:new{
  success,
  se
}

function Login_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRING then
        self.success = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function Login_result:write(oprot)
  oprot:writeStructBegin('Login_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRING, 0)
    oprot:writeString(self.success)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local UploadCreatorWithUserId_args = __TObject:new{
  req_id,
  user_id,
  username,
  carrier
}

function UploadCreatorWithUserId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype67, _vtype68, _size66 = iprot:readMapBegin() 
        for _i=1,_size66 do
          local _key70 = iprot:readString()
          local _val71 = iprot:readString()
          self.carrier[_key70] = _val71
        end
        iprot:readMapEnd()
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

function UploadCreatorWithUserId_args:write(oprot)
  oprot:writeStructBegin('UploadCreatorWithUserId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 2)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 3)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 4)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter72,viter73 in pairs(self.carrier) do
      oprot:writeString(kiter72)
      oprot:writeString(viter73)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local UploadCreatorWithUserId_result = __TObject:new{
  se
}

function UploadCreatorWithUserId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function UploadCreatorWithUserId_result:write(oprot)
  oprot:writeStructBegin('UploadCreatorWithUserId_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local UploadCreatorWithUsername_args = __TObject:new{
  req_id,
  username,
  carrier
}

function UploadCreatorWithUsername_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype75, _vtype76, _size74 = iprot:readMapBegin() 
        for _i=1,_size74 do
          local _key78 = iprot:readString()
          local _val79 = iprot:readString()
          self.carrier[_key78] = _val79
        end
        iprot:readMapEnd()
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

function UploadCreatorWithUsername_args:write(oprot)
  oprot:writeStructBegin('UploadCreatorWithUsername_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter80,viter81 in pairs(self.carrier) do
      oprot:writeString(kiter80)
      oprot:writeString(viter81)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local UploadCreatorWithUsername_result = __TObject:new{
  se
}

function UploadCreatorWithUsername_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function UploadCreatorWithUsername_result:write(oprot)
  oprot:writeStructBegin('UploadCreatorWithUsername_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local GetUserId_args = __TObject:new{
  req_id,
  username,
  carrier
}

function GetUserId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype83, _vtype84, _size82 = iprot:readMapBegin() 
        for _i=1,_size82 do
          local _key86 = iprot:readString()
          local _val87 = iprot:readString()
          self.carrier[_key86] = _val87
        end
        iprot:readMapEnd()
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

local UserServiceClient = __TObject.new(__TClient, {
  __type = 'UserServiceClient'
})

function UserServiceClient:RegisterUser(req_id, first_name, last_name, username, password, carrier)
  self:send_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  self:recv_RegisterUser(req_id, first_name, last_name, username, password, carrier)
end

function UserServiceClient:send_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  self.oprot:writeMessageBegin('RegisterUser', TMessageType.CALL, self._seqid)
  local args = RegisterUser_args:new{}
  args.req_id = req_id
  args.first_name = first_name
  args.last_name = last_name
  args.username = username
  args.password = password
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = RegisterUser_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
end

function UserServiceClient:RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  self:send_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  self:recv_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
end

function UserServiceClient:send_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  self.oprot:writeMessageBegin('RegisterUserWithId', TMessageType.CALL, self._seqid)
  local args = RegisterUserWithId_args:new{}
  args.req_id = req_id
  args.first_name = first_name
  args.last_name = last_name
  args.username = username
  args.password = password
  args.user_id = user_id
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = RegisterUserWithId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
end

function UserServiceClient:Login(req_id, username, password, carrier)
  self:send_Login(req_id, username, password, carrier)
  return self:recv_Login(req_id, username, password, carrier)
end

function UserServiceClient:send_Login(req_id, username, password, carrier)
  self.oprot:writeMessageBegin('Login', TMessageType.CALL, self._seqid)
  local args = Login_args:new{}
  args.req_id = req_id
  args.username = username
  args.password = password
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_Login(req_id, username, password, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = Login_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function UserServiceClient:UploadCreatorWithUserId(req_id, user_id, username, carrier)
  self:send_UploadCreatorWithUserId(req_id, user_id, username, carrier)
  self:recv_UploadCreatorWithUserId(req_id, user_id, username, carrier)
end

function UserServiceClient:send_UploadCreatorWithUserId(req_id, user_id, username, carrier)
  self.oprot:writeMessageBegin('UploadCreatorWithUserId', TMessageType.CALL, self._seqid)
  local args = UploadCreatorWithUserId_args:new{}
  args.req_id = req_id
  args.user_id = user_id
  args.username = username
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_UploadCreatorWithUserId(req_id, user_id, username, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UploadCreatorWithUserId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
end

function UserServiceClient:UploadCreatorWithUsername(req_id, username, carrier)
  self:send_UploadCreatorWithUsername(req_id, username, carrier)
  self:recv_UploadCreatorWithUsername(req_id, username, carrier)
end

function UserServiceClient:send_UploadCreatorWithUsername(req_id, username, carrier)
  self.oprot:writeMessageBegin('UploadCreatorWithUsername', TMessageType.CALL, self._seqid)
  local args = UploadCreatorWithUsername_args:new{}
  args.req_id = req_id
  args.username = username
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_UploadCreatorWithUsername(req_id, username, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UploadCreatorWithUsername_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
end

function UserServiceClient:GetUserId(req_id, username, carrier)
  self:send_GetUserId(req_id, username, carrier)
  return self:recv_GetUserId(req_id, username, carrier)
end

function UserServiceClient:send_GetUserId(req_id, username, carrier)
  self.oprot:writeMessageBegin('GetUserId', TMessageType.CALL, self._seqid)
  local args = GetUserId_args:new{}
  args.req_id = req_id
  args.username = username
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_GetUserId(req_id, username, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = GetUserId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end
local UserServiceIface = __TObject:new{
  __type = 'UserServiceIface'
}


local UserServiceProcessor = __TObject.new(__TProcessor
, {
 __type = 'UserServiceProcessor'
})

function UserServiceProcessor:process(iprot, oprot, server_ctx)
  local name, mtype, seqid = iprot:readMessageBegin()
  local func_name = 'process_' .. name
  if not self[func_name] or ttype(self[func_name]) ~= 'function' then
    iprot:skip(TType.STRUCT)
    iprot:readMessageEnd()
    x = TApplicationException:new{
      errorCode = TApplicationException.UNKNOWN_METHOD
    }
    oprot:writeMessageBegin(name, TMessageType.EXCEPTION, seqid)
    x:write(oprot)
    oprot:writeMessageEnd()
    oprot.trans:flush()
  else
    self[func_name](self, seqid, iprot, oprot, server_ctx)
  end
end

function UserServiceProcessor:process_RegisterUser(seqid, iprot, oprot, server_ctx)
  local args = RegisterUser_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = RegisterUser_result:new{}
  local status, res = pcall(self.handler.RegisterUser, self.handler, args.req_id, args.first_name, args.last_name, args.username, args.password, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('RegisterUser', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_RegisterUserWithId(seqid, iprot, oprot, server_ctx)
  local args = RegisterUserWithId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = RegisterUserWithId_result:new{}
  local status, res = pcall(self.handler.RegisterUserWithId, self.handler, args.req_id, args.first_name, args.last_name, args.username, args.password, args.user_id, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('RegisterUserWithId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_Login(seqid, iprot, oprot, server_ctx)
  local args = Login_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = Login_result:new{}
  local status, res = pcall(self.handler.Login, self.handler, args.req_id, args.username, args.password, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('Login', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_UploadCreatorWithUserId(seqid, iprot, oprot, server_ctx)
  local args = UploadCreatorWithUserId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UploadCreatorWithUserId_result:new{}
  local status, res = pcall(self.handler.UploadCreatorWithUserId, self.handler, args.req_id, args.user_id, args.username, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('UploadCreatorWithUserId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_UploadCreatorWithUsername(seqid, iprot, oprot, server_ctx)
  local args = UploadCreatorWithUsername_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UploadCreatorWithUsername_result:new{}
  local status, res = pcall(self.handler.UploadCreatorWithUsername, self.handler, args.req_id, args.username, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('UploadCreatorWithUsername', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_GetUserId(seqid, iprot, oprot, server_ctx)
  local args = GetUserId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = GetUserId_result:new{}
  local status, res = pcall(self.handler.GetUserId, self.handler, args.req_id, args.username, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('GetUserId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function GetUserId_args:write(oprot)
  oprot:writeStructBegin('GetUserId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter88,viter89 in pairs(self.carrier) do
      oprot:writeString(kiter88)
      oprot:writeString(viter89)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local GetUserId_result = __TObject:new{
  success,
  se
}

function GetUserId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.I64 then
        self.success = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
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

function GetUserId_result:write(oprot)
  oprot:writeStructBegin('GetUserId_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.I64, 0)
    oprot:writeI64(self.success)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

return UserServiceClient