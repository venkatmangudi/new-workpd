class EmpQualViewsController < InheritedResources::Base
	def index
		super do |format|
				      format.html
				      format.pdf {
						pdf = EmpQualView.to_pdf(@emp_qual_views)
						        send_data pdf.render, filename:
						        "explicit.pdf",
						        type: "application/pdf"
							  }
		end

	end
end
