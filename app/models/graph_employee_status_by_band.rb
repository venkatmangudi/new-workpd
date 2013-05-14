class GraphEmployeeStatusByBand < ActiveRecord::Base
  self.table_name = 'graph_employee_status_by_band'

  belongs_to:graph_employee_status
end
