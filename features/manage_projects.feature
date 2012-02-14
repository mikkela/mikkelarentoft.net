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

    Scenario: Edit an existing project
        Given there is a project named "My project"
        And I am on the "Portfolio" page
        When I follow "Edit project"
        And I fill in "Name" with "My project 2"
        And I fill in "Description" with "My description 2"
        And I press "Save"
        Then I should see "The project was updated"
