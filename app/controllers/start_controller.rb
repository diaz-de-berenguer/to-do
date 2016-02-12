class StartController < ApplicationController
	layout 'start'
	
  def home
  	redirect_to projects_path
  end
end
