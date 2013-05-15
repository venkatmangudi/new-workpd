class EmployeeWorkDetailsController < InheritedResources::Base
	def update
		super do |format|
		      format.html { redirect_to @employee_work_detail.employee }
		 end
	end
	def create
		super do |format|
		      format.html { redirect_to @employee_work_detail.employee }
		 end
	end
end
