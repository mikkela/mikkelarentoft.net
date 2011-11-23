Feature: Browse site

    So that I can discover information regarding Mikkel Arentoft
    As a site guest
    I want to browse the Mikkel Arentoft site

    Scenario: navigate from home page using the Home entry in the top navigation bar
      Given I am on the "Home" page
      When I select "Home" on the top navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from home page using the Home entry in the left navigation bar
      Given I am on the "Home" page
      When I select "Home" on the left navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from home page using the Contact entry in the top navigation bar
      Given I am on the "Home" page
      When I select "Contact" on the top navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from home page using the Contact entry in the left navigation bar
      Given I am on the "Home" page
      When I select "Contact" on the left navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from home page using the Portfolio entry in the left navigation bar
      Given I am on the "Home" page
      When I select "Portfolio" on the left navigation bar
      Then I am led to the "Portfolio" page

    Scenario: navigate from contact page using the Home entry in the top navigation bar
      Given I am on the "Contact" page
      When I select "Home" on the top navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from contact page using the Home entry in the left navigation bar
      Given I am on the "Contact" page
      When I select "Home" on the left navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from contact page using the Contact entry in the top navigation bar
      Given I am on the "Contact" page
      When I select "Contact" on the top navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from contact page using the Contact entry in the left navigation bar
      Given I am on the "Contact" page
      When I select "Contact" on the left navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from contact page using the Portfolio entry in the left navigation bar
      Given I am on the "Contact" page
      When I select "Portfolio" on the left navigation bar
      Then I am led to the "Portfolio" page

    Scenario: navigate from portfolio page using the Home entry in the top navigation bar
      Given I am on the "Portfolio" page
      When I select "Home" on the top navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from portfolio page using the Home entry in the left navigation bar
      Given I am on the "Portfolio" page
      When I select "Home" on the left navigation bar
      Then I am led to the "Home" page

    Scenario: navigate from portfolio page using the Contact entry in the top navigation bar
      Given I am on the "Portfolio" page
      When I select "Contact" on the top navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from portfolio page using the Contact entry in the left navigation bar
      Given I am on the "Portfolio" page
      When I select "Contact" on the left navigation bar
      Then I am led to the "Contact" page

    Scenario: navigate from pfolioort page using the Portfolio entry in the left navigation bar
      Given I am on the "Portfolio" page
      When I select "Portfolio" on the left navigation bar
      Then I am led to the "Portfolio" page