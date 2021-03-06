class EmpQualViewsController < InheritedResources::Base
	def index
		super do |format|
				      format.html
				      format.pdf {
						pdf = EmpQualView.to_pdf(@emp_qual_views)
						        send_data pdf.render, filename:
						        "Doctors by Qualification.pdf",
						        type: "application/pdf"
							  }
		end

	end
end
