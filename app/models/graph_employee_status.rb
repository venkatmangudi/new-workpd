class GraphEmployeeStatus < ActiveRecord::Base
  self.table_name = 'graph_employee_status'

  has_many:graph_employee_status_by_bands
end
