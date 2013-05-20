class EmpQualView < ActiveRecord::Base
  self.table_name = 'emp_qual_view'

  def self.to_pdf(raw_array)

    data_array=[]
    data_array << ["Qualification Name" ,"Number of Employees"]
    # size=[3000]*column_names.size
    raw_array.each do |hospital|
      data_array << (hospital.attributes.values_at(*column_names).map { |e| e.to_s  }).reverse
    end

    # data_array=data_array*40

    pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :landscape)

    pdf.font_size=10
    pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
    pdf.move_down 4

    pdf.font_size=20

    pdf.text "Doctors by Qualification"

	pdf.move_down 4

    pdf.font_size=15

    pdf.text "Report Date: "+Date.today.strftime("%d-%m-%Y")

    pdf.move_down 8

    pdf.font_size=10

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
