class ShowcausesController < InheritedResources::Base
	load_and_authorize_resource
	def new
  		@showcause = Showcause.new(:employee_id => params[:id])
	end

	def create
		@showcause = Showcause.new(params[:showcause])
		    respond_to do |format|
		      if @showcause.save
		        format.html { redirect_to @showcause, notice: 'Showcause was successfully created.' }
		        format.json { render json: @showcause, status: :created, location: @showcause }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @showcause.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
