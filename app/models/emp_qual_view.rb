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

    pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :portrait)


    pdf.repeat :all do


            pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
            pdf.move_down 4

            pdf.font_size=20

            pdf.text "Doctors by Qualification"

            pdf.move_down 4

            pdf.font_size=15

            pdf.text "Report Date: "+Date.today.strftime("%d-%m-%Y")

            pdf.move_down 8

            pdf.font_size=10
    end


    pdf.bounding_box([pdf.bounds.left, pdf.bounds.top - 200], :width  => pdf.bounds.width, :height => pdf.bounds.height - 220) do
        pdf.font_size=10
        pdf.table(data_array,:header=>true) do |y|
           y.row(0).font_style = :bold
           y.row(0).style :background_color => 'a2a2a2'
         end
      end

      string = "page <page> of <total>"
        # Green page numbers 1 to 7
        options = { :at => [pdf.bounds.right - 150, 0],
        :width => 150,
        :align => :right,
        :start_count_at => 1,
        :color => "000000" }
        pdf.number_pages string, options

    pdf

    # Prawn::Document.generate("explicit.pdf") do
    #   image "#{Rails.root}/app/assets/images/mp_logo.png"
    #   move_down 20
    #   # t=make_table(data_array)
    #   # t.draw
    # end
  end

end
