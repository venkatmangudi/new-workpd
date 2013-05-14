class HospitalsController < InheritedResources::Base
        def index
		@hospitals = Hospital.order(:hospital_name)
                respond_to do |format|
                    format.html
                    format.csv { render text: @hospitals.to_csv }
		    format.xls #{ render text: @hospitals.to_csv(col_sep: "\t") }
                end
        end
end
