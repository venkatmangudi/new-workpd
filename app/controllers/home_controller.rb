class HomeController < ApplicationController
def index
  @q = EmployeeSanctionWorking.search(params[:q])
  @employee_sanction_workings = @q.result(:distinct => true)
end
end
