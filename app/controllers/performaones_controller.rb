class PerformaonesController < InheritedResources::Base
	load_and_authorize_resource
	def new
  		@performaone = Performaone.new(:employee_id => params[:id], :hospital_id => params[:hospital_id])
	end

	def create
		@performaone = Performaone.new(params[:performaone])
		    respond_to do |format|
		      if @performaone.save
		        format.html { redirect_to @performaone, notice: 'Performance Entry for the employee was successfully created.' }
		        format.json { render json: @performaone, status: :created, location: @performaone }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @performaone.errors, status: :unprocessable_entity }
		      end
      	    end

    end

    def index
		@performaones = Performaone.accessible_by(current_ability).where(:hospital_id =>params[:hospital_id])
	            respond_to do |format|
                    format.html
                    format.js
                    format.csv { render text: @performaone.to_csv }
                    format.xls
					format.pdf {
						pdf = Performaone.to_pdf(@performaones)
						        send_data pdf.render, filename:
						        "Employee Performance Data.pdf",
						        type: "application/pdf"
                    								  }
                end

	end



	def destroy

		  @lo=Performaone.find(params[:id])
		  @lol=@lo
		  @lo.destroy
		  respond_to do |format|
     		 format.html { redirect_to(new_performaone_path(:hospital_id => @lol.hospital_id, :id => @lol.employee_id)) }
    	     format.json { head :no_content }
  		  end
	end
end
