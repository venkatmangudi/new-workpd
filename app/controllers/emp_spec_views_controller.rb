class EmpSpecViewsController < InheritedResources::Base
	def index
		super do |format|
			format.pdf {
				pdf = EmpSpecView.to_pdf(@emp_spec_views)
				        send_data pdf.render, filename:
				        "explicit.pdf",
				        type: "application/pdf"
		      	}
		 end
	end
end
