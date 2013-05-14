class District < ActiveRecord::Base
  attr_accessible :district_name, :division_id

  has_many:postings
  has_many:institution_masters
  has_many:health_dept_locations
  has_many:blocks  
  has_many:hospital_performas
  belongs_to:division
  has_many:sanctioned_post
  has_many:performaones

  validates_associated :blocks, :division

  has_many:employees
end
