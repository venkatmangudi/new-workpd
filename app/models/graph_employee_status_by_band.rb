class GraphEmployeeStatusByBand < ActiveRecord::Base
  self.table_name = 'graph_employee_status_by_band'

  belongs_to:graph_employee_status
  def self.to_pdf(raw_array)

    data_array=[]
    data_array << column_names
    # size=[3000]*column_names.size
    raw_array.each do |hospital|
      data_array << hospital.attributes.values_at(*column_names).map { |e| e.to_s  }
    end

    # data_array=data_array*40

    pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :portrait)

    pdf.font_size=10
    pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
    pdf.move_down 10

    pdf.text "Employee Status By Band"

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
