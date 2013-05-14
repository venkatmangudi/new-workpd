class RecruitmentMode < ActiveRecord::Base
  attr_accessible :recruitment_mode_id
 has_many:employee_work_details
end
