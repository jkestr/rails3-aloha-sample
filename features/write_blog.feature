Feature: Write blog
  In order to create some blog content
  As a blog owner
  I want to be able to write and edit my blog entries

  Background:
    Given I'm a blog owner

  Scenario: Create a Blog Post
    When  I go to the New Post Page
      And I fill in "Title" with "My new Post"
      And I fill in "Body" with some content
      And I press "Submit"
    Then I should be on the Post Page for "My new Post"
      And I should see "Post successful" within ".flash"
      And I should see "My new Post" within ".post h2"
      And I should see some content within ".post .body"







