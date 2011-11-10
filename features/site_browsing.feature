Feature: Browse site

    So that I can discover information regarding Mikkel Arentoft
    As a site guest
    I want to browse the Mikkel Arentoft site

    Scenario: navigate from home page

    Given I am on the "Home" page
    When I select "Home" on the top navigation bar
    Then I am led to the "Home" page

    Given I am on the "Home" page
    When I select "Home" on the left navigation bar
    Then I am led to the "Home" page

    Given I am on the "Home" page
    When I select "Contact" on the top navigation bar
    Then I am led to the "Contact" page

    Given I am on the "Home" page
    When I select "Contact" on the left navigation bar
    Then I am led to the "Contact" page

    Scenario: navigate from contact page

    Given I am on the "Contact" page
    When I select "Home" on the top navigation bar
    Then I am led to the "Home" page

    Given I am on the "Contact" page
    When I select "Home" on the left navigation bar
    Then I am led to the "Home" page


    Given I am on the "Contact" page
    When I select "Contact" on the top navigation bar
    Then I am led to the "Contact" page

    Given I am on the "Contact" page
    When I select "Contact" on the left navigation bar
    Then I am led to the "Contact" page