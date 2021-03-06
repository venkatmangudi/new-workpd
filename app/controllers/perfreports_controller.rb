class PerfreportsController < ApplicationController
	def work_perf
		@states=State.all
		@district=District.all
		@division=Division.all
		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
		@fields_doc=[["Leaves Taken in the Month", "leave_taken"], ["No. of Patients Checked In OPD in the Month", "patients_opd"], ["No. of Patients Admitted", "patients_admit"], ["No. of Patients Referred to Other Hospitals", "patients_ref"], ["No. of Emergency Calls Attended", "emer_calls"], ["No. of Emergency Duties Performed", "emer_duty"], ["No. of MLC Performed", "mlc_perf"], ["No. of Postmortem Done", "postmor_perf"], ["No. of Days Present in Court for Medico Legal Cases", "court_presence"], ["No. of Major Operations", "op_major"], ["No. of Minor Operations", "op_minor"], ["No. of Cesarean Operations", "op_caesarion"], ["Tests Conducted : Lab Tests", "lab_tests"], ["Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray", "image_tests"]]
	end

	def generate_report
		@states=State.all
		@district=District.all
		@division=Division.all
		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
		@fields_doc=[["Leaves Taken in the Month", "leave_taken"], ["No. of Patients Checked In OPD in the Month", "patients_opd"], ["No. of Patients Admitted", "patients_admit"], ["No. of Patients Referred to Other Hospitals", "patients_ref"], ["No. of Emergency Calls Attended", "emer_calls"], ["No. of Emergency Duties Performed", "emer_duty"], ["No. of MLC Performed", "mlc_perf"], ["No. of Postmortem Done", "postmor_perf"], ["No. of Days Present in Court for Medico Legal Cases", "court_presence"], ["No. of Major Operations", "op_major"], ["No. of Minor Operations", "op_minor"], ["No. of Cesarean Operations", "op_caesarion"], ["Tests Conducted : Lab Tests", "lab_tests"], ["Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray", "image_tests"]]
		@entity=params[:entity]
		state=params[:state]
		district=params[:district]
		division=params[:division]
		field=params[:field]
		month=params[:date][:month]
		year=params[:date][:year]






		if(@entity == "1")
			index=["outdoor", "indoor", "minor_surgery", "major_surgery", "normal_delivery", "caesarion_delivery", "pathology", "image_scans", "ultra_sound", "ctmri", "ecg", "ecotmt", "blood_unit_transfused", "hemo", "mlc", "post_mortem", "remarks"].index(field)
			@metric=["Outdoor","Indoor","Minor Surgeries","Major Surgeries","Normal Delivery","Cesarean Delivery","Pathology","X-Ray / Digital X-Ray / Dental X-Ray","Ultra Sound","CT Scan / MRI","ECG","ECO / EMT","Blood Units Transfused","Hemo-Dialysis","MLC","Postmortem","Remarks"][index]
			if !state.nil?
				@final_data=HospitalPerforma.joins(:hospital).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).order(field+" DESC")
			elsif !district.nil?
				@final_data=HospitalPerforma.joins(:hospital).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).where(:hospitals=>{ :district_id => district}).order(field+" DESC")

			elsif !division.nil?
				@final_data=HospitalPerforma.joins(:hospital).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).where(:hospitals=>{ :division_id => division}).order(field+" DESC")
			end
		else
			index_doc=["leave_taken", "patients_opd", "patients_admit", "patients_ref", "emer_calls", "emer_duty", "mlc_perf", "postmor_perf", "court_presence", "op_major", "op_minor", "op_caesarion", "lab_tests", "image_tests"].index(field)
			@metric_doc=["Leaves Taken in the Month","No. of Patients Checked In OPD in the Month","No. of Patients Admitted","No. of Patients Referred to Other Hospitals","No. of Emergency Calls Attended","No. of Emergency Duties Performed","No. of MLC Performed","No. of Postmortem Done","No. of Days Present in Court for Medico Legal Cases","No. of Major Operations","No. of Minor Operations","No. of Cesarean Operations","Tests Conducted : Lab Tests","Tests Conducted : Sonography/X-Ray/CT Scan/MRI/Dental X-Ray/X-Ray"][index_doc]
			if !state.nil?
				@final_data=Performaone.joins(:employee).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).joins(:hospital).order(field+" DESC")

			elsif !district.nil?
				@final_data=Performaone.joins(:employee).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).joins(:hospital).where(:hospitals=>{ :district_id => district}).order(field+" DESC")

			elsif !division.nil?
				@final_data=Performaone.joins(:employee).accessible_by(current_ability).where(:month_id=>month).where(:year=>year).joins(:hospital).where(:hospitals=>{ :division_id => division}).order(field+" DESC")
			end

		end

			            respond_to do |format|
		                    format.html
		                    format.xls
							format.pdf {
								pdf = ReportPdfModule.perf_pdf(@final_data,@entity,@metric,@metric_doc)
								        send_data pdf.render, filename:
								        "Performance Report "+(@metric||@metric_doc)+".pdf",
								        type: "application/pdf"
		                    								  }
		                end






	end




end
