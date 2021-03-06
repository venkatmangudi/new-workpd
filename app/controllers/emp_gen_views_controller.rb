class EmpGenViewsController < InheritedResources::Base
	def index
		super do |format|
				      format.html
				      format.pdf {
						pdf = EmpGenView.to_pdf(@emp_gen_views)
						        send_data pdf.render, filename:
						        "Doctors by Gender.pdf",
						        type: "application/pdf"
							  }
				 end
	end
end
