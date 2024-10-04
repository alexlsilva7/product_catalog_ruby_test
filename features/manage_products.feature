Feature: Manage Products
  As an admin
  I want to manage products
  So that I can sell items to customers

  Scenario: Create a new product
    Given there is a category named "Clothing"
    And I am on the products page
    When I click "New product"
    And I fill in "Name" with "T-Shirt"
    And I fill in "Description" with "100% Cotton"
    And I fill in "Price" with "29.99"
    And I select "Clothing" from "Category"
    And I press "Create Product"
    Then I should see "Product was successfully created."
    And I should see "T-Shirt"
    And I should see "100% Cotton"
    And I should see "29.99"
    And I should see "Clothing"

  Scenario: Delete a product
    Given there is a product named "Old Phone"
    And I am on the products page
    And I click "Show this product"
    When I press button "destroy"
    Then I should see "Product was successfully destroyed."
    And I should not see "Old Phone"
