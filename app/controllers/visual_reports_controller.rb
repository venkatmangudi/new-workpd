class VisualReportsController < ApplicationController
	def index
		@employees=Employee.order('emp_full_name ASC')
		@hospitals=Hospital.all

		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
		@fields_doc=[["Leaves Taken in the Month", "leave_taken"], ["No. of Patients Checked In OPD in the Month", "patients_opd"], ["No. of Patients Admitted", "patients_admit"], ["No. of Patients Referred to Other Hospitals", "patients_ref"], ["No. of Emergency Calls Attended", "emer_calls"], ["No. of Emergency Duties Performed", "emer_duty"], ["No. of MLC Performed", "mlc_perf"], ["No. of Postmortem Done", "postmor_perf"], ["No. of Days Present in Court for Medico Legal Cases", "court_presence"], ["No. of Major Operations", "op_major"], ["No. of Minor Operations", "op_minor"], ["No. of Cesarean Operations", "op_caesarion"], ["Tests Conducted : Lab Tests", "lab_tests"], ["Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray", "image_tests"]]
	end


	def generate_report
		@employees=Employee.order('emp_full_name ASC')
		@hospitals=Hospital.all

		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
		@fields_doc=[["Leaves Taken in the Month", "leave_taken"], ["No. of Patients Checked In OPD in the Month", "patients_opd"], ["No. of Patients Admitted", "patients_admit"], ["No. of Patients Referred to Other Hospitals", "patients_ref"], ["No. of Emergency Calls Attended", "emer_calls"], ["No. of Emergency Duties Performed", "emer_duty"], ["No. of MLC Performed", "mlc_perf"], ["No. of Postmortem Done", "postmor_perf"], ["No. of Days Present in Court for Medico Legal Cases", "court_presence"], ["No. of Major Operations", "op_major"], ["No. of Minor Operations", "op_minor"], ["No. of Cesarean Operations", "op_caesarion"], ["Tests Conducted : Lab Tests", "lab_tests"], ["Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray", "image_tests"]]

		@month_range=((Date.today.beginning_of_month - 6.months)..(Date.today.beginning_of_month)).map{|d| d.strftime("%m").to_i}.uniq
		@year_range=((Date.today.beginning_of_month - 6.months)..(Date.today.beginning_of_month)).map{|d| d.strftime("%Y").to_i}.uniq

		@employee = params[:employee]

		@hospital = params[:hospital]

		@entity=params[:entity]

		@field=params[:field]

		@display_months= ((Date.today.beginning_of_month - 6.months)..(Date.today.beginning_of_month)).map{|d| d.strftime("%Y%m")}.uniq.map{ |m| Date::ABBR_MONTHNAMES[ Date.strptime(m, '%Y%m').mon ] }

		if(@entity == "1")
			index=["outdoor", "indoor", "minor_surgery", "major_surgery", "normal_delivery", "caesarion_delivery", "pathology", "image_scans", "ultra_sound", "ctmri", "ecg", "ecotmt", "blood_unit_transfused", "hemo", "mlc", "post_mortem", "remarks"].index(@field)
			@metric=["Outdoor","Indoor","Minor Surgeries","Major Surgeries","Normal Delivery","Cesarean Delivery","Pathology","X-Ray / Digital X-Ray / Dental X-Ray","Ultra Sound","CT Scan / MRI","ECG","ECO / EMT","Blood Units Transfused","Hemo-Dialysis","MLC","Postmortem","Remarks"][index]
			@final_data=HospitalPerforma.where(:month_id=>@month_range).where(:year=>@year_range).where(:hospital_id=>@hospital)
		elsif(@entity == "2")
			index_doc=["leave_taken", "patients_opd", "patients_admit", "patients_ref", "emer_calls", "emer_duty", "mlc_perf", "postmor_perf", "court_presence", "op_major", "op_minor", "op_caesarion", "lab_tests", "image_tests"].index(@field)
			@metric_doc=["Leaves Taken in the Month","No. of Patients Checked In OPD in the Month","No. of Patients Admitted","No. of Patients Referred to Other Hospitals","No. of Emergency Calls Attended","No. of Emergency Duties Performed","No. of MLC Performed","No. of Postmortem Done","No. of Days Present in Court for Medico Legal Cases","No. of Major Operations","No. of Minor Operations","No. of Cesarean Operations","Tests Conducted : Lab Tests","Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray"][index_doc]
			@final_data=Performaone.where(:month_id=>@month_range).where(:year=>@year_range).where(:employee_id=>@employee)
		end

			            respond_to do |format|
		                    format.html
		                    format.xls
							format.pdf {
								pdf = ReportPdfModule.visual_report(@entity,@metric,@final_data,@metric_doc,@field)
								        send_data pdf.render, filename:
								        "explicit.pdf",
								        type: "application/pdf"
		                    								  }
		                end





	end
end

