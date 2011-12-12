class ProjectsController < ApplicationController
  SHOW_TITLE = "Show Project"
  INDEX_TITLE = "Portfolio"
  NEW_TITLE = "New Project"

  def show
    @title = SHOW_TITLE

    id = params[:id]
    @project = Project.find(id)

    @page = ProjectsHelper.generate_show_project_page_id(id)
  end

  def index
    @title = INDEX_TITLE
    @projects = Project.all

    @page = ProjectsHelper.generate_index_project_page_id
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "The project was saved successfully"
      redirect_to projects_path
    else
      render :action => 'new'
    end
  end

  def new
    @title = NEW_TITLE

    @project = Project.new
    @page = ProjectsHelper.generate_new_project_page_id
  end
end
