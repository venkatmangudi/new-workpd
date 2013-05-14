class Posting < ActiveRecord::Base
  attr_accessible :designation_id, :employee_id, :hospital_id, :payscale, :posting_from, :posting_to, :district_id, :posting_order_number, :current_location, :posting_order_date, :posting_order_authority, :posting_type_id
  
  belongs_to:district  
  belongs_to:employee
  belongs_to:hospital
  belongs_to:designation
  belongs_to:posting_type
end
