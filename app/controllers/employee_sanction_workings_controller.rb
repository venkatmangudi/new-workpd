class EmployeeSanctionWorkingsController < InheritedResources::Base
def index
  @q = EmployeeSanctionWorking.search(params[:q])
  @employee_sanction_workings = @q.result(:distinct => true)
end
end
