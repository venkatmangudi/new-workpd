class AddressesController < InheritedResources::Base
	def new
  		@address = Address.new(:employee_id => params[:id])
	end

	def create
		@address = Address.new(params[:address])
		    respond_to do |format|
		      if @address.save
		        format.html { redirect_to @address, notice: 'Address was successfully created.' }
		        format.json { render json: @address, status: :created, location: @address }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @address.errors, status: :unprocessable_entity }
		      end
    		end
	end	
end
