local Require = require
local LCS = Require "LCS"
local Account = LCS.class()

Account.gameObject = nil
Account.balance = 0
Account.owner = "default"
Account.maximum_balance = 500

function Account:init(gameObject)
  self.gameObject = gameObject
end

function Account:withdraw(s)
  if self.balance >= s then
    self.balance = self.balance - s
  else
    print('[WARNING] : It remains only '..self.balance..', you moron! You cannot withdraw '..s)
  end
end

function Account:deposit(s)
  print("Call Account:deposit(s)")
  
  if self.balance + s <= self.maximum_balance then
    self.balance = self.balance + s
  else
    print('[WARNING] : Your account balance is currently '..self.balance..' and is limited to '..self.maximum_balance)
  end
end

return Account;