class PagesController < ApplicationController
	def index
		@page = "index";
		render "index.html.erb"
	end
	
	def modify
		@page = "index";
		@id_num = params[:id_num]
		@message="clear"
		@resident = Resident.where(id_num: @id_num).take
		if @resident != nil
			if @resident.location == "in"
				@resident.update_column :location, "out"

			else
				@resident.update_column :location, "in"

			end
			
			@log = Log.new
			@log.time = DateTime.now
			@log.comment = "#{@resident.name} is #{@resident.location}"
			@log.save
		else
			@message="id error"

		end
		render "index.html.erb"

	end
end