class Manager

    attr_reader :name, :age
    attr_accessor :department
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, self, salary)
    end

    def self.all_departments
        self.all.map {|mgr| mgr.department}
    end

    def self.average_age
        all_mgr_ages = self.all.map {|mgr| mgr.age}
        all_mgr_ages.sum.to_f / all_mgr_ages.count
    end

end
