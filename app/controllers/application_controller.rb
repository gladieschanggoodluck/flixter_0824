class ApplicationController < ActionController::Base
	def create
	  @application = Application.create(quote_params)
	  if @application.invalid?
	    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
	  end
	  redirect_to root_path
	end
	
end
