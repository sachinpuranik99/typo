Feature: Create Categories
  As an author
  In order sort my Winter is coming blog topics into different categories
  I wish to create categories

  Background:
      Given the blog is set up
      And I am logged into the admin panel
      And I follow "Categories"

    Scenario: Create new category
      Given I am on the categories page
      When I fill in "category_name" with "Lanistors"
      And I fill in "category_keywords" with "Lanistors"
      And I press "Save"
      Then I should see "Lanistors"


    Scenario: Edit category
        Given I am on the edit page for "General"
        Then the "category_name" field should contain "General"
        And I fill in "category_name" with "Starks"
        And I press "Save"
        Then I should see "Starks"