class WorkpdController < ApplicationController
	def index
		@q = EmployeeSanctionWorking.accessible_by(current_ability).search(params[:q])
		@employee_sanction_workings = @q.result(:distinct => true)
	end
end
