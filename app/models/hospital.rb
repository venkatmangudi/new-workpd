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

  pdf.table(data_array,:header=>true)
  pdf

  # Prawn::Document.generate("explicit.pdf") do
  #   image "#{Rails.root}/app/assets/images/mp_logo.png"
  #   move_down 20
  #   # t=make_table(data_array)
  #   # t.draw
  # end
end

end
