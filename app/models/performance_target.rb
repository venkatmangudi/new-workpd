class PerformanceTarget < ActiveRecord::Base
  attr_accessible :employee_cadre_id, :entity, :hospital_type_id, :minimum_daily_work, :minimum_monthly_work, :remarks, :unit,:task

  belongs_to :hospital_type
  belongs_to :employee_cadre
end
