Feature: Search Products
  As an admin
  I want to search for products
  So that I can find specific items quickly

  Scenario: Search for a product by name
    Given there is a product named "Laptop"
    And there is a product named "Smartphone"
    And I am on the products page
    When I fill in "q" with "Laptop"
    And I press "Search"
    Then I should see "Laptop"
    And I should not see "Smartphone"
