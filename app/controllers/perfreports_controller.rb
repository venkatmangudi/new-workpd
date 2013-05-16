class PerfreportsController < ApplicationController
	def work_perf
		@states=State.all
		@district=District.all
		@division=Division.all
		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
	end

	def generate_report
		@states=State.all
		@district=District.all
		@division=Division.all
		@fields=[["Outdoor", "outdoor"], ["Indoor", "indoor"], ["Minor Surgeries", "minor_surgery"], ["Major Surgeries", "major_surgery"], ["Normal Delivery", "normal_delivery"], ["Cesarean Delivery", "caesarion_delivery"], ["Pathology", "pathology"], ["X-Ray / Digital X-Ray / Dental X-Ray", "image_scans"], ["Ultra Sound", "ultra_sound"], ["CT Scan / MRI", "ctmri"], ["ECG", "ecg"], ["ECO / EMT", "ecotmt"], ["Blood Units Transfused", "blood_unit_transfused"], ["Hemo-Dialysis", "hemo"], ["MLC", "mlc"], ["Postmortem", "post_mortem"], ["Remarks", "remarks"]]
		@entity=params[:entity]
		state=params[:state]
		district=params[:district]
		division=params[:division]
		field=params[:field]

		location=state || district || division

		if(@entity == "1")
			if !state.nil?
				@final_data=HospitalPerforma.joins(:hospital).order(field+" DESC")
			elsif !district.nil?
				@final_data=HospitalPerforma.joins(:hospital).where(:hospitals=>{ :district_id => district}).order(field+" DESC")

			elsif !division.nil?
				@final_data=HospitalPerforma.joins(:hospital).where(:hospitals=>{ :division_id => division}).order(field+" DESC")
			end
		else
			if !state.nil?
				@final_data=Performaone.joins(:employee).joins(:hospital).order(field+" DESC")

			elsif !district.nil?
				@final_data=Performaone.joins(:employee).joins(:hospital).where(:hospitals=>{ :district_id => district}).order(field+" DESC")

			elsif !division.nil?
				@final_data=Performaone.joins(:employee).joins(:hospital)..where(:hospitals=>{ :division_id => division}).order(field+" DESC")
			end

		end






	end




end
