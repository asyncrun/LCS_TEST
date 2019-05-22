local Require = require
local Account = Require "Account"
local VipAccount = Account:extends()

function VipAccount:deposit(s)
  print("Call VipAccount:deposit(s)")
  self:super('deposit',1)
end

return VipAccount