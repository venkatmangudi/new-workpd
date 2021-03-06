class HospitalsController < InheritedResources::Base
	load_and_authorize_resource
        def index
		@hospitals = Hospital.accessible_by(current_ability).order(:hospital_name)
                respond_to do |format|
                    format.html
                    format.csv { render text: @hospitals.to_csv }
				    format.xls #{ render text: @hospitals.to_csv(col_sep: "\t") }
				    format.pdf {
						pdf = Hospital.to_pdf(@hospitals)
				        send_data pdf.render, filename:
				        "hospitals.pdf",
				        type: "application/pdf"
				    }
                end
        end
end
