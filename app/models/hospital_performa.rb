class HospitalPerforma < ActiveRecord::Base
  attr_accessible :blood_unit_transfused, :caesarion_delivery, :ctmri, :ecg, :ecotmt, :hemo, :image_scans, :indoor, :major_surgery, :minor_surgery, :mlc, :normal_delivery, :outdoor, :pathology, :post_mortem, :remarks, :ultra_sound, :hospital_id, :month_id, :year
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
  belongs_to:month

	validates_numericality_of :blood_unit_transfused, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :caesarion_delivery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ctmri, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ecg, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ecotmt, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :hemo, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :image_scans, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :indoor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :major_surgery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :minor_surgery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :mlc, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :normal_delivery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :outdoor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :pathology, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :post_mortem, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ultra_sound, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |hospital_performa|
      csv << hospital_performa.attributes.values_at(*column_names)
    end
  end
end

def self.to_pdf(raw_array)

	data_array=[]
	data_array << ["Hospital Name","Outdoor","Indoor","Minor Surgeries","Major Surgeries","Normal Delivery","Cesarean Delivery","Pathology","X-Ray / Digital X-Ray / Dental X-Ray","Ultra Sound","CT Scan / MRI","ECG","ECO / EMT","Blood Units Transfused","Hemo-Dialysis","MLC","Postmortem","Remarks"]
	# size=[3000]*column_names.size
	raw_array.each do |hospital_performa|
		normal_array=[]
		normal_array << hospital_performa.hospital.hospital_name
		normal_array << hospital_performa.outdoor
		normal_array << hospital_performa.indoor
		normal_array << hospital_performa.minor_surgery
		normal_array << hospital_performa.major_surgery
		normal_array << hospital_performa.normal_delivery
		normal_array << hospital_performa.caesarion_delivery
		normal_array << hospital_performa.pathology
		normal_array << hospital_performa.image_scans
		normal_array << hospital_performa.ultra_sound
		normal_array << hospital_performa.ctmri
		normal_array << hospital_performa.ecg
		normal_array << hospital_performa.ecotmt
		normal_array << hospital_performa.blood_unit_transfused
		normal_array << hospital_performa.hemo
		normal_array << hospital_performa.mlc
		normal_array << hospital_performa.post_mortem
		normal_array << hospital_performa.remarks
	  data_array << normal_array
	end

	# data_array=data_array*40

	pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :landscape)

	pdf.font_size=6
	pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
	pdf.move_down 10
	pdf.font_size=10
	pdf.text "Hospital Performance Data"

	pdf.font_size=8
	pdf.text "Report Date: "+Date.today.strftime("%d-%m-%Y")

	pdf.move_down 10

	pdf.font_size=5

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
