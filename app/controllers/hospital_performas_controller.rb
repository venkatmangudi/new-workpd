class HospitalPerformasController < InheritedResources::Base
	load_and_authorize_resource
	def new
  		@hospital_performa = HospitalPerforma.new(:hospital_id => params[:id])
	end

	def create
		@hospital_performa = HospitalPerforma.new(params[:hospital_performa])
		    respond_to do |format|
		      if @hospital_performa.save
		        format.html { redirect_to @hospital_performa, notice: 'Hospital Performance data for the hospital was successfully created.' }
		        format.json { render json: @hospital_performa, status: :created, location: @hospital_performa }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @hospital_performa.errors, status: :unprocessable_entity }
		      end
    		end
	end

	 def index
		@hospital_performas = HospitalPerforma.accessible_by(current_ability).find_all_by_hospital_id(params[:hospital_id])
                respond_to do |format|
                    format.html
                    format.csv { render text: @hospital_performas.to_csv }
                    format.xls {  }
                    format.pdf {
                    	pdf = HospitalPerforma.to_pdf(@hospital_performas)
                    	        send_data pdf.render, filename:
                    	        "explicit.pdf",
                    	        type: "application/pdf"
								  }
                end
        end

      def destroy

		  @lo=HospitalPerforma.find(params[:id])
		  @lol=@lo
		  @lo.destroy
		  respond_to do |format|
     		 format.html { redirect_to(new_hospital_performa_path(:id => @lol.hospital_id)) }
    	     format.json { head :no_content }
  		  end
	end
end
