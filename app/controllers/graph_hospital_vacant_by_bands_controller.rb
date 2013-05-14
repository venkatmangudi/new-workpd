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
end

end
