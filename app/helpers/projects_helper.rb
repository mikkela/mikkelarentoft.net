module ProjectsHelper
  def ProjectsHelper.generate_show_project_page_id(project_id)
    "ShowProject" + "#" + project_id.to_s
  end

  def ProjectsHelper.generate_index_project_page_id
    "IndexProjects"
  end

  def ProjectsHelper.generate_new_project_page_id
    "NewProject"
  end

  def ProjectsHelper.generate_edit_project_page_id(project_id)
    "EditProject" + "#" + project_id.to_s
  end
end
