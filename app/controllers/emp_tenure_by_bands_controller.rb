class EmpTenureByBandsController < InheritedResources::Base
	def index
		super do |format|
		      format.html
		      format.pdf {
				pdf = EmpTenureByBand.to_pdf(@emp_tenure_by_bands)
				        send_data pdf.render, filename:
				        "Employee Tenure by Band.pdf",
				        type: "application/pdf"
		      	}
		 end
	end
end
