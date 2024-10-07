Feature: Search Categories
  As an admin
  I want to search for categories
  So that I can find specific categories quickly

  Scenario: Search for a category by name
    Given there is a category named "Electronics"
    And there is a category named "Books"
    And I am on the categories page
    When I fill in "q" with "Books"
    And I press "Search"
    Then I should see "Books"
    And I should not see "Electronics"
