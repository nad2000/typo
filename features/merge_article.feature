Feature: Write Articles
  As a blog administrator
  In order to reduce number or redundant aricles
  I want to be able to merge two articles inot one article

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I have created an article titled "Foo" containing "Lorem Ipsum"
    And I have created an article titled "Bar" containing "Ipsum Lorem"

  Scenario: Merge controls are available
    When I have opened the article typed "Foo" for editing
    Then I should see "Merge Aricles"
    And I should see "Article ID"
    And I should see "Merge"

  Scenario: Merge controls are available
    Given I have opened the article typed "Foo" for editing
    When I fill in "merge_with" with article "Bar" ID
    And I press "Merge"
    Then I should see aricle titled "FooBar"
    And I should see "Lorem Ipsum"


