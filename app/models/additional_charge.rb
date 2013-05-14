class AdditionalCharge < ActiveRecord::Base
  attr_accessible :designation_id, :employee_id, :from_date, :location_id, :to_date, :remarks

  belongs_to:location
  belongs_to:designation
  belongs_to:employee

end
