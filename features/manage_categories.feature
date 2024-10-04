Feature: Manage Categories
  As an admin
  I want to manage categories
  So that I can organize products

  Scenario: Create a new category
    Given I am on the categories page
    When I click "New category"
    And I fill in "Name" with "Electronics"
    And I fill in "Description" with "Devices and gadgets"
    And I press "Create Category"
    Then I should see "Category was successfully created."
    And I should see "Electronics"

  Scenario: Edit an existing category
    Given there is a category named "Books"
    And I am on the categories page
    When I click "Edit" for "Books"
    And I fill in "Name" with "Literature"
    And I press "Update Category"
    Then I should see "Category was successfully updated."
    And I should see "Literature"
