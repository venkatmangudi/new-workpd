class HospitalsController < InheritedResources::Base
        def index
		@hospitals = Hospital.order(:hospital_name)
                respond_to do |format|
                    format.html
                    format.csv { render text: @hospitals.to_csv }
				    format.xls #{ render text: @hospitals.to_csv(col_sep: "\t") }
				    format.pdf {
						pdf = Hospital.to_pdf(@hospitals)
				        send_data pdf.render, filename:
				        "explicit.pdf",
				        type: "application/pdf"
				    }
                end
        end
end
