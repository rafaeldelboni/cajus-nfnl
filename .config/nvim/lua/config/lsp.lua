-- [nfnl] Compiled from fnl/config/lsp.fnl by https://github.com/Olical/nfnl, do not edit.
local progress_message = {status = "", percent = 0, msg = ""}
local function get_progress_message()
  return progress_message
end
local function progress_handler(_, msg, info)
  local client = vim.lsp.get_client_by_id(info.client_id)
  if client then
    progress_message.status = msg.value.kind
    if (msg.value.percentage ~= nil) then
      progress_message.percent = msg.value.percentage
    else
    end
    if ((msg.value.message ~= nil) and ((msg.token ~= nil) and (type(tonumber(msg.token)) ~= "number"))) then
      progress_message.msg = (msg.token .. " : " .. msg.value.message)
      return nil
    elseif (msg.value.message ~= nil) then
      progress_message.msg = msg.value.message
      return nil
    elseif (msg.token ~= nil) then
      progress_message.msg = msg.token
      return nil
    else
      return nil
    end
  else
    return nil
  end
end
local function setup_progress_handler()
  local original_handler = vim.lsp.handlers["$/progress"]
  local function _4_(...)
    local args = vim.F.pack_len(...)
    progress_handler(vim.F.unpack_len(args))
    return original_handler(...)
  end
  vim.lsp.handlers["$/progress"] = _4_
  return nil
end
setup_progress_handler()
return {["get-progress-message"] = get_progress_message}
