class EmployeeCadre < ActiveRecord::Base
  attr_accessible :employee_cadre_type
  
  has_many:employees
end
