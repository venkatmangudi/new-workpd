class EmployeeAgeByBand < ActiveRecord::Base
  self.table_name = 'employee_age_by_band'
  def self.to_pdf(raw_array)

    new_band=raw_array.group_by{|e| e.ageband[0].to_i}.sort
    new_data_array=[]

    new_band.to_enum.with_index(1).each do |elem,i|
         new_data_array << elem[1][0]
    end
     new_data_array << new_band[0][1][1]
     new_data_array << new_band[0][1][2]




    data_array=[]
    data_array << ["Age Band (Years)", "Number of Employees"]
    # size=[3000]*column_names.size
    new_data_array.each do |hospital|
      data_array << (hospital.attributes.values_at(*column_names).map { |e| e.to_s  }).reverse
    end

    # data_array=data_array*40

    pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :landscape)


    pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
    pdf.move_down 4

    pdf.font_size=20

    pdf.text "Employee Age by Band"

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
