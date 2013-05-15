class EmployeeAgeByBandsController < InheritedResources::Base
	def index

		super do |format|
				      format.html
				      format.pdf {
							pdf = EmployeeAgeByBand.to_pdf(@employee_age_by_bands)
							send_data pdf.render, filename:
							"explicit.pdf",
							type: "application/pdf"
						  }
				 end

	end
end
