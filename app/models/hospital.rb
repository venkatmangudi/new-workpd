class Hospital < ActiveRecord::Base
  attr_accessible  :beds, :fax_no, :hospital_name, :phone_no, :district_id, :institution_type_id, :location_id, :division_id, :block_id, :hospital_type_id, :IsAdministrativeLocation, :IsTribal, :latitude, :longitude

  belongs_to :district
  belongs_to :division
  belongs_to :institution_type
  belongs_to :hospital_type
  belongs_to :block

  has_many :hospital_reports
  has_many :health_dept_locations
  has_many :sanctioned_posts
  has_many :postings
  has_many :vw_sanctioned_working_by_hospitals
  has_many :employee_sanction_workings
  has_many :employees
  has_many :hospital_performas
  has_many :performaones

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
  data_array << column_names
  # size=[3000]*column_names.size
  raw_array.each do |hospital|
    data_array << hospital.attributes.values_at(*column_names).map { |e| e.to_s  }
  end

  # data_array=data_array*40

  pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :landscape)

  pdf.font_size=6
  pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
  pdf.move_down 10

  pdf.text "Hospitals"

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
