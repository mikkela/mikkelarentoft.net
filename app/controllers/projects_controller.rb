class ProjectsController < ApplicationController
  SHOW_TITLE = "Show Project"
  INDEX_TITLE = "Portfolio"

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

end
