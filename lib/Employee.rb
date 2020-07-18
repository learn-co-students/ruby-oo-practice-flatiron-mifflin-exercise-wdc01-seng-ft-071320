class Employee

    attr_accessor :manager
    attr_reader :name, :salary
    @@all = []

    def initialize(name, manager, salary)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_department(department)
        self.all.find {|e| e.manager.department == department}
    end
    
    def tax_bracket
        Employee.all.find_all {|e| e.salary <= self.salary + 1000 && e.salary >= self.salary - 1000}
    end
    
    def self.department_av_salary(department) #returns a department's average salary
        all_dep_employees = self.all.find_all {|e| e.manager.department == department}
        dep_salary = all_dep_employees.map {|e| e.salary}
        dep_salary.sum.to_f / dep_salary.count
    end

    def self.average_salary #returns average salary of all emplooyes
        all_salaries = self.all.map {|e| e.salary}
        all_salaries.sum.to_f / all_salaries.count
    end

    def change_department(new_manager)
        empl = Employee.all.find {|e| e == self}
        empl.manager = new_manager
        binding.pry
    end

end
