Feature: Create projects
    So that I can describe the projects Mikkel Arentoft has been involved in
    As a site administrator
    I want to create projects easily

    Scenario: Create a new project
        Given I am on the "Portfolio" page
         When I follow "New Project"
         And I fill in "Name" with "My pet project"
         And I fill in "Description" with "A complete description of my pet project"
         And I press "Save"
         Then I should see "The project was saved successfully"
         And a project named "My pet project" with description "A complete description of my pet project" appears in the list of projects