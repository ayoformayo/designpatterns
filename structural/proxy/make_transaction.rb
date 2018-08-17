require './account.rb'
require './account_protection_proxy.rb'
account = Account.new(100)
account.deposit(50)
account.withdraw(10)

proxy = AccountProtectionProxy.new(account, 'williamcarney')
proxy.deposit(50)
proxy.withdraw(10)

p account.balance
proxy = AccountProtectionProxy.new(account, 'some rando')
proxy.deposit(50)
proxy.withdraw(10)
