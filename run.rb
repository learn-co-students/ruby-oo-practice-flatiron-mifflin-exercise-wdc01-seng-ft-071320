require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

mg1 = Manager.new("John", "Logistics", 50)
mg2 = Manager.new("Tom", "IT", 34)

emp1 = Employee.new("Ami", mg1, 1200)
emp2 = Employee.new("Fili", mg1, 2500)
emp3 = Employee.new("Cumon", mg2, 3000)
emp4 = Employee.new("Ester", mg2, 7500)
emp5 = Employee.new("Solomon", mg2, 6000)

puts mg1.name
puts mg1.employees
print mg2.hire_employee("Noah", 4000)
print Manager.all_departments
print Manager.average_age
p Employee.find_by_department("Logistics")
p Employee.department_av_salary("Logistics")
p Employee.department_av_salary("IT")
puts Employee.average_salary
print emp5.tax_bracket
puts emp3.change_department(mg1).name

binding.pry
puts "done"
