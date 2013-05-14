class EmpSpecView < ActiveRecord::Base
    self.table_name = 'emp_spec_view'
    has_many:reports
end
