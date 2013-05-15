class Performaone < ActiveRecord::Base
  attr_accessible :court_presence, :emer_calls, :emer_duty, :employee_id, :equip, :equipdefic, :equipdetail, :image_tests, :lab_tests, :leave_taken, :mlc_perf, :op_caesarion, :op_major, :op_minor, :patients_admit, :patients_opd, :patients_ref, :postmor_perf, :hospital_id, :designation_id,:emp_treasury_id, :month_id, :year
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
  belongs_to:employee
  belongs_to:designation
  belongs_to:month

	validates_numericality_of :court_presence, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :emer_calls, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :emer_duty, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :image_tests, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :lab_tests, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :leave_taken, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :mlc_perf, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_caesarion, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_major, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :op_minor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_admit, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_opd, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :patients_ref, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :postmor_perf, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |performaone|
      csv << performaone.attributes.values_at(*column_names)
    end
  end
end

def self.to_pdf(raw_array)

	data_array=[]
	data_array << ["Name of Doctor","Employee Treasury ID","Hospital","Month","Year","Post / Specialist","Leaves Taken in the Month","No. of Patients Checked In OPD in the Month","No. of Patients Admitted","No. of Patients Referred to Other Hospitals","No. of Emergency Calls Attended","No. of Emergency Duties Performed","No. of MLC Performed","No. of Postmortem Done","No. of Days Present in Court for Medico Legal Cases","No. of Major Operations","No. of Minor Operations","No. of Cesarean Operations","Tests Conducted : Lab Tests","Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray","Utilisation of Equipment By Self/Instruction","Information on Available Equipment [Name And Number]","Equipment - Deficiency / Necessary Action"]
	# size=[3000]*column_names.size
	raw_array.each do |performaone|
		normal_array=[]
		 normal_array << performaone.employee.emp_full_name
		 normal_array << performaone.employee.emp_treasury_id
		 normal_array << performaone.try(:hospital).try(:hospital_name) || "Not Entered"
		 normal_array << performaone.try(:month).try(:month_name) || "Not Entered"
		 normal_array << performaone.try(:year)|| "Not Entered"
		 normal_array << performaone.try(:designation).try(:Designation_English) || "Not Entered"
		 normal_array << performaone.leave_taken
		 normal_array << performaone.patients_opd
		 normal_array << performaone.patients_admit
		 normal_array << performaone.patients_ref
		 normal_array << performaone.emer_calls
		 normal_array << performaone.emer_duty
		 normal_array << performaone.mlc_perf
		 normal_array << performaone.postmor_perf
		 normal_array << performaone.court_presence
		 normal_array << performaone.op_major
		 normal_array << performaone.op_minor
		 normal_array << performaone.op_caesarion
		 normal_array << performaone.lab_tests
		 normal_array << performaone.image_tests
		 normal_array << performaone.equip
		 normal_array << performaone.equipdetail
		 normal_array << performaone.equipdefic

	  data_array << normal_array
	end

	# data_array=data_array*40

	pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :landscape)

	pdf.font_size=6
	pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
	pdf.move_down 10

	pdf.text "Employee Performance Data"

	pdf.move_down 10

	pdf.table(data_array,:header=>true)
	pdf

	# Prawn::Document.generate("explicit.pdf") do
	# 	image "#{Rails.root}/app/assets/images/mp_logo.png"
	# 	move_down 20
	# 	# t=make_table(data_array)
	# 	# t.draw
	# end
end



end
