class GraphHospitalVacantByBandsController < InheritedResources::Base
	#def index
	#if (search[:params])
	#	@graph_hospital_vacant_by_bands = GraphHospitalVacantByBand.search(params)
	#else
	#	@graph_hospital_vacant_by_bands = GraphHospitalVacantByBand.all
	#end
	#end

def index
  @q = GraphHospitalVacantByBand.search(params[:q])
  @graph_hospital_vacant_by_bands = @q.result(:distinct => true)
    	respond_to do |format|
    		format.html
    		format.pdf {
  			pdf = GraphHospitalVacantByBand.to_pdf(@graph_hospital_vacant_by_bands)
  	        	send_data pdf.render, filename:
  	        	"explicit.pdf",
  	        	type: "application/pdf"
    								  }
    	end
end

end
