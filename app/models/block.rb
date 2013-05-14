class Block < ActiveRecord::Base
  attr_accessible :block_name, :district_id

  has_many:health_dept_locations
  belongs_to:district
  belongs_to:location
  has_many:locations 
  has_many:hospitals
  has_many:sanctioned_posts

  validates_associated :district
  has_many:employees

end
