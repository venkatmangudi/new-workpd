class EmploymentType < ActiveRecord::Base
  attr_accessible :employment_type
  has_many:employees
end
