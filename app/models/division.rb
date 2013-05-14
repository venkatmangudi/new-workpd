class Division < ActiveRecord::Base
  attr_accessible :division_name, :state_id

  has_many:health_dept_locations
  belongs_to:state
  has_many:districts
  has_many:hospitals
  has_many:hospital_performas
  has_many:sanctioned_posts
  has_many:performaones

  validates_associated :districts
  has_many:employees

end
