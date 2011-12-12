require 'spec_helper'
require 'projects_helper'

describe ProjectsController do
  render_views


  describe "GET 'show'" do
    ID = "1"

    before(:each) do
      Project.stub(:find).and_return stub_model(Project, :name => 'Name', :description => 'Description')
    end

    it "returns http success" do
      get 'show', :id => ID
      response.should be_success
    end

    it "should have the right title" do
      get 'show', :id => ID
      response.should have_selector("title",
                      :content => ProjectsController::SHOW_TITLE)
    end

    it "shows the requested project"  do
      project = mock_model(Project)
      Project.should_receive(:find).with(ID).and_return project

      project.should_receive(:name)
      project.should_receive(:description)

      get :show, :id => ID
    end


    it "contains the correct Page meta tag" do
      get :show, :id => ID

      response.should contain_page_meta_tag ProjectsHelper.generate_show_project_page_id(ID)
    end

  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
      get 'index'
      response.should have_selector("title",
                      :content => ProjectsController::INDEX_TITLE)
    end

    it "contains the correct Page meta tag" do
      get :index

      response.should contain_page_meta_tag ProjectsHelper.generate_index_project_page_id
    end

    it "shows a list of all the projects" do
      project1 = mock_model(Project)
      project2 = mock_model(Project)
      project3 = mock_model(Project)

      Project.should_receive(:all).and_return [ project1, project2, project3 ]

      project1.should_receive(:name)
      project1.should_receive(:description)
      project2.should_receive(:name)
      project2.should_receive(:description)
      project3.should_receive(:name)
      project3.should_receive(:description)

      get :index
    end
  end

  describe "POST 'create'" do
    before(:each) do
      @project = mock_model(Project, :save => nil).as_null_object
      Project.stub(:new).and_return(@project)
    end

    it "creates a new project" do
      Project.should_receive(:new).
        with("description" => "A fabulous project").
          and_return(@project)
      post :create, :project => { "description" => "A fabulous project"}

    end

    it "saves the project" do
      @project.should_receive(:save)
      post :create
    end

    context "when the message saves successfully" do
      before (:each) do
        @project.stub(:save).and_return(true)
      end

      it "sets a flash[:notice] message"  do
        post :create
        flash[:notice].should == "The project was saved successfully"
      end

      it "redirects to the projects index" do
        post :create
        response.should redirect_to(projects_path)
      end
    end

    context "when the message fails to save" do
      before (:each) do
        @project.stub(:save).and_return(false)
      end

      it "assigns @project" do
        post :create
        assigns(:project).should == @project
      end

      it "renders the new template" do
        post :create
        response.should render_template("new")
      end
    end
  end

  describe "GET 'new'" do
    #before(:each) do
    #  Project.stub(:new).and_return(stub_model(Project))
    #end

    it "returns http success" do
      get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title",
                      :content => ProjectsController::NEW_TITLE)
    end

    it "contains the correct Page meta tag" do
      get :new

      response.should contain_page_meta_tag ProjectsHelper.generate_new_project_page_id
    end

  end
end
