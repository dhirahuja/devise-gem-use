class PlumsController < ApplicationController
	before_action :authenticate_user!
	    respond_to :html, :js

	def index
		@plums = Plum.all.paginate(page: params[:page], per_page: 3)
	end
	def show
		@plum = Plum.find(params[:id])
	end
	def new
		@plum = Plum.new
	end
	def edit
		@plum = Plum.find(params[:id])
	end
	def create
		@plum = Plum.new(plum_params)
		if @plum.save
			redirect_to @plum
		else
			render 'new'
		end
	end

	def update
		@plum = Plum.find(params[:id])
		 if @plum.update(plum_params)
     	 redirect_to @plum
    	else
     	 render 'edit'
    	end
	end
	def destroy
		@plum = Plum.find(params[:id])
		@plum.destroy
		 
  respond_to do |format|
      format.html { redirect_to plums_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
  end
	end
	private
		def plum_params
			params.require(:plum).permit(:name,:address,:gender, :image)
		end
end
