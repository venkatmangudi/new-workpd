# encoding: utf-8
class SanctionedByDesignation < ActiveRecord::Base
	self.table_name = 'sanctioned_by_designation'
	def self.to_pdf(raw_array)

	  data_array=[]
	  data_array << ["Designation (English)","Designation (Hindi)","Total Sanctioned"]
	  # size=[3000]*column_names.size
	  raw_array.each do |hospital|
	    data_array << hospital.attributes.values_at(*column_names).map { |e| (e.is_a? String) ? e.force_encoding("UTF-8") : e  }
	  end

	  # puts data_array

	  # data_array=data_array*40

	  pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :portrait)

	  pdf.font_size=10
	  pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
	  pdf.move_down 4

	  pdf.font_size=20

	  pdf.text "Sanctioned by Designation"
	  pdf.move_down 4

	  pdf.font_size=15

	  pdf.text "Report Date: "+Date.today.strftime("%d-%m-%Y")

	  pdf.move_down 8

	  pdf.font_size=10

	  # pdf.font_families.update("IndUni-H-Regular.otf" => {:normal => "#{Rails.root}/app/assets/fonts/IndUni-H-Regular.otf"})
	  pdf.font "Times-Roman"

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
