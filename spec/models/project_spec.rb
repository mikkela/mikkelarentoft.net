require 'spec_helper'

describe Project do
  before(:each) do
    @project = Project.new(:name => "My pet project", :description => "My project description")
  end
  it "is valid with valid attributes" do
    @project.should be_valid
  end

  it "is not valid without name" do
    @project.name = nil
    @project.should_not be_valid
  end

  it "is not valid without a description" do
    @project.description=nil
    @project.should_not be_valid
  end

end
