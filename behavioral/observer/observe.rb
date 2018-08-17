require './employee.rb'
require './payroll.rb'
require './tax_man.rb'

fred = Employee.new('Fred', 'Crane Operator', 30000.0)

payroll = Payroll.new
tax_man = TaxMan.new

fred.add_observer(payroll)
fred.add_observer(tax_man)

fred.salary = 90000.0
