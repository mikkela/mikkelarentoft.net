require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ProjectsHelper. For example:
#
# describe ProjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ProjectsHelper do
  describe "show project page id generator" do
    it "generates the id of the show project page from the project id" do
      ProjectsHelper.generate_show_project_page_id(1000).should == "ShowProject#1000"
    end
  end

  describe "idex project page id generator" do
    it "generates the id of the index project page" do
      ProjectsHelper.generate_index_project_page_id.should == "IndexProjects"
    end
  end

end
