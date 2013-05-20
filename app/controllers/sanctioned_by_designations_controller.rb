class SanctionedByDesignationsController < InheritedResources::Base
	def index
		super do |format|
				      format.html
				      format.pdf {
						pdf = SanctionedByDesignation.to_pdf(@sanctioned_by_designations)
						        send_data pdf.render, filename:
						        "Sanctioned by Designation.pdf",
						        type: "application/pdf"
							  }
				 end

	end
end
