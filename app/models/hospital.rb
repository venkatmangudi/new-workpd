class Hospital < ActiveRecord::Base
  attr_accessible  :beds, :fax_no, :hospital_name, :phone_no, :district_id, :institution_type_id, :location_id, :division_id, :block_id, :hospital_type_id, :IsAdministrativeLocation, :IsTribal, :latitude, :longitude

  belongs_to :district
  belongs_to :division
  belongs_to :institution_type  
  belongs_to :hospital_type
  belongs_to :block

  has_many :hospital_reports
  has_many:health_dept_locations
  has_many:sanctioned_posts
  has_many:postings
  has_many:vw_sanctioned_working_by_hospitals
  has_many:employee_sanction_workings  
  has_many:employees
  has_many:hospital_performas
  has_many:performaones

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |hospital|
      csv << hospital.attributes.values_at(*column_names)
    end
  end
end
end
