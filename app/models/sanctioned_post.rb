class SanctionedPost < ActiveRecord::Base
  attr_accessible :hospital_id, :sanctioned_posts, :designation_id, :district_id, :division_id, :block_id
  belongs_to:designation
  belongs_to:hospital
  belongs_to:district
  belongs_to:division
  belongs_to:block
  
end

