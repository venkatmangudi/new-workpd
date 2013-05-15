class GraphEmployeeStatusByBandsController < InheritedResources::Base


def index
  @q = GraphEmployeeStatusByBand.search(params[:q])
  @graph_employee_status_by_bands = @q.result(:distinct => true)

  	respond_to do |format|
  		format.html
  		format.pdf {
			pdf = GraphEmployeeStatusByBand.to_pdf(@graph_employee_status_by_bands)
	        	send_data pdf.render, filename:
	        	"explicit.pdf",
	        	type: "application/pdf"
  								  }
  	end
end

end
