module ReportPdfModule
	def self.perf_pdf(raw_array,entity,metric,metric_doc)

		data_array=[]

		if entity == "1"

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

			pdf = Prawn::Document.new(:page_size => "A1", :page_layout => :landscape)

			pdf.font_size=8
			pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
			pdf.move_down 10

			pdf.text "Hospital Performance Data"

			pdf.text "Metric : "+metric

			pdf.move_down 10

			pdf.table(data_array,:header=>true)
			pdf

		else

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

			pdf = Prawn::Document.new(:page_size => "A1", :page_layout => :landscape)

			pdf.font_size=8
			pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
			pdf.move_down 10

			pdf.text "Employee Performance Data"
			pdf.text "Metric : "+metric_doc

			pdf.move_down 10

			pdf.table(data_array,:header=>true)
			pdf

		end

		pdf




	end

	def self.visual_report(entity,metric,raw_array,metric_doc,field)

		data_array = []

		 if entity == "1"
		  # Metric : =metric
		  # final_metric=metric

		        data_array<<["Hospital Name","Month","Year",metric]




		       raw_array.each do |hospital_performa|

		       	normal_array =[]

		           normal_array<<hospital_performa.try(:hospital).try(:hospital_name) || "Not Entered"
		           normal_array<<hospital_performa.month.month_name
		           normal_array<<hospital_performa.year
		           normal_array<<hospital_performa.attributes[field]

		           data_array << normal_array

		       end

		       pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :portrait)

		       pdf.font_size=10
		       pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
		       pdf.move_down 10
		       pdf.text metric
		       pdf.move_down 10

		       pdf.table(data_array,:header=>true)
		       pdf

		else


		        data_array<<["Name of Doctor","Employee Treasury ID","Hospital","Month","Year","Post / Specialist",metric_doc]




		       raw_array.each do |performaone|

		       	normal_array=[]

		           normal_array<<performaone.employee.emp_full_name
		           normal_array<<performaone.employee.emp_treasury_id
		           normal_array<<performaone.try(:hospital).try(:hospital_name) || "Not Entered"
		           normal_array<<performaone.try(:month).try(:month_name) || "Not Entered"
		           normal_array<<performaone.try(:year)|| "Not Entered"
		           normal_array<<performaone.try(:designation).try(:Designation_English) || "Not Entered"
		           normal_array<<performaone.attributes[field]
		           data_array << normal_array
		       end

		       pdf = Prawn::Document.new(:page_size => "A4", :page_layout => :portrait)

		       pdf.font_size=10
		       pdf.image "#{Rails.root}/app/assets/images/mp_logo.png"
		       pdf.move_down 10
		       pdf.text metric_doc
		       pdf.move_down 10

		       pdf.table(data_array,:header=>true)
		       pdf
		end

		pdf


	end
end