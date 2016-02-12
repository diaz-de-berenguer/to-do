class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  end

  def show
  end

  def new
  	@project = Project.new
  	@total_projects = Project.all.size
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save
  		redirect_to projects_path
  	else
  		render 'new'
  	end
  end

  def edit
  end

  private

  def project_params
  	params.require(:project).permit(:position, :title, :description)
  end
end
