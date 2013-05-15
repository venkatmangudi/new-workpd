class AddressesController < InheritedResources::Base
	# belongs_to :employee
	# actions :all, :except => [:show, :index,:edit]
	def new
  		@address = Address.new(:employee_id => params[:id])
	end

	def update
		super do |format|
		      format.html { redirect_to @address.employee }
		 end
	end

	def create
		@address = Address.new(params[:address])
		    respond_to do |format|
		      if @address.save
		        format.html { redirect_to @address.employee, notice: 'Address was successfully created.' }
		        format.json { render json: @address, status: :created, location: @address }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @address.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
