class GraphHospitalVacantByBand < ActiveRecord::Base
 self.table_name = 'graph_hospital_vacant_by_band'

# def self.search(params)
#	graph_hospital_vacant_by_bands = scoped
#	graph_hospital_vacant_by_bands = graph_hospital_vacant_by_bands.where("specialisation_id=?","#{params}")
#	graph_hospital_vacant_by_bands
# end

 belongs_to:graph_hospital_vacant
 belongs_to:specialisation
end
