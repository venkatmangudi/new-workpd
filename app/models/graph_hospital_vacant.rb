class GraphHospitalVacant < ActiveRecord::Base
  self.table_name = 'graph_hospital_vacant'


  has_many:graph_hospital_vacant_by_bands
end
