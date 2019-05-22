local Require = require
local Account = Require "Account"
local VipAccount = Require "VipAccount"

local myAccount = Account("one gameObject")
myAccount.balance = 500
myAccount.owner = "boss"
myAccount.maximum_balance = 900
myAccount:withdraw(200)
myAccount:deposit(1000)
myAccount:deposit(100)
myAccount:withdraw(5)


local yourAccount = Account("two gameObject")
yourAccount.balance = 400
yourAccount.owner = "father"
yourAccount.maximum_balance = 500
yourAccount:withdraw(300)
yourAccount:deposit(900)
yourAccount:deposit(200)
yourAccount:withdraw(7)


myVipAccount = VipAccount()
myVipAccount.balance = 500
myVipAccount.owner = "Vip"
myVipAccount.maximum_balance = 600
myVipAccount:withdraw(3000)
myVipAccount:deposit(800)
myVipAccount:deposit(300)
myVipAccount:withdraw(65)

print('myAccount', 
  'balance '..myAccount.balance, 
  'owner '..myAccount.owner,
  'gameObject '..myAccount.gameObject)

print('yourAccount', 
  'balance '..yourAccount.balance, 
  'owner '..yourAccount.owner,
  'gameObject '..yourAccount.gameObject)

print('vipAccount',
  'balance '..myVipAccount.balance,
  'owner '..myVipAccount.owner,
  'maximum balance '..myVipAccount.maximum_balance)

print('is VipAccount a subclass of class Account ?', VipAccount:getClass() == Account)
print('is Account a superclass of class VipAccount ?', (Account:getSubClasses())[VipAccount])

local l = Account:getSubClasses()
for k,v in pairs(l) do
  print(type(k),type(v))
end
