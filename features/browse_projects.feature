Feature: Browse projects

    So that I can read about the projects Mikkel Arentoft has been involved in
    As a site guest
    I want to browse the projects

    Scenario: see a list of all the projects Mikkel has been involved in
      Given a list of projects
      When I enter the "Portfolio" page
      Then I am shown a list of all the projects

    Scenario: see details regarding a specific project
      Given a list of projects
      When I select a project from the loist
      Then I am shown the details of this project