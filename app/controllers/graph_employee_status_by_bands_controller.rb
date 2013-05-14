class GraphEmployeeStatusByBandsController < InheritedResources::Base


def index
  @q = GraphEmployeeStatusByBand.search(params[:q])
  @graph_employee_status_by_bands = @q.result(:distinct => true)
end

end
