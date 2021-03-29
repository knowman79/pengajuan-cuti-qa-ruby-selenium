Feature: Talent

#-------------------------------normal case----------------------------#

    @successLogin
  Scenario: Successful Login
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in

    @logout
  Scenario: Logout
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click button profile
    Then I click logout button


    @createLeave
   Scenario: Create Leave
     Given I am on the login screen
     When  I login with correct details
     Then I click login button
     Then I am logged in
     Then I click sidebar My Activity
     Then I click button create leave
      And popup Create Leave appear
     Then I input start date
      Then I input end date
      Then I input Address During Leave
      Then I input Contact Number During Leave
      Then I input Leave Reasons
      Then I input Substitute Name During Leave
      Then I click Submit button
      Then I click Yes Confirm Popup
        And popup Create Leave closed


  @searchMenu
  Scenario Outline: Search
    Given I am on the login screen
    When I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I input search "<value>"
    And the data appears
    Examples:
      | value    |
      | approved |
      | canceled |
      | draft    |
      | reject   |

      @leaveDetails
      Scenario: Leave Details
        Given I am on the login screen
        When  I login with correct details
        Then I click login button
        Then I am logged in
        Then I click sidebar My Activity
        Then I click details button
        And leave details appear



  @editLeave
  Scenario: Edit Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click button edit leave
    And popup Edit Leave appear
    Then I update start date
    Then I update end date
    Then I update Address During Leave
    Then I update Contact Number During Leave
    Then I update Leave Reasons
    Then I update Substitute Name During Leave
    Then I click Submit button
    Then PopUp Confirm Update appear
    Then I click Yes Confirm Popup
    And popup Edit Leave closed

  @sendLeave
  Scenario: Send Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click button send leave
    And popup Confirmation Send Leave appear
    Then I click Yes Confirm Popup
    And popup Confirmation Send Leave closed

  @dropdownPage
  Scenario: Dropdown Page
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click dropdown page
    And select row per-data
    Then Data shows as selected row per-page

  @searchMenuDashboard
  Scenario Outline: Search Menu on Dashboard
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar Dashboard
    Then I input search "<summary>" on Dashboard
    And the data appears
    Examples:
      | summary  |
      | approved |
      | canceled |
      | draft    |
      | Reject   |


  @leaveDetailsDashboard
  Scenario: Leave Details on Dashboard
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar Dashboard
    Then I click details dashboard button
    And leave details appear

  @deleteLeave
  Scenario: Delete Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click delete button
    And popup confirm delete appear
    Then I click Yes, delete it!
    And popup Success Delete appear
    Then I click OK

  @cancelLeave
  Scenario: Cancel Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click button cancel leave
    And popup Confirmation Cancel Leave appear
    Then I click Yes Confirm Popup
    And message Data Cancelled Successfully appear

 #-------------------------------negative case----------------------------#

  @failedLogin
  Scenario: Unsuccessful Login
    Given I am on the login screen
    When  I login with incorrect details
    Then I click login button
    Then I am not logged in
    And I am informed that my login details are incorrect

  @clearAndCloseCreateLeave
  Scenario: Create Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click button create leave
    And popup Create Leave appear
    Then I input start date
    Then I input end date
    Then I input Address During Leave
    Then I input Contact Number During Leave
    Then I input Leave Reasons
    Then I input Substitute Name During Leave
    Then I click Clear Button
    Then I click Close Button

  @cancelDelete
  Scenario: Cancel Delete Leave
    Given I am on the login screen
    When  I login with correct details
    Then I click login button
    Then I am logged in
    Then I click sidebar My Activity
    Then I click delete button
    And popup confirm delete appear
    Then I click No, Keep it!
    And popup Cancel Delete appear
    Then I click OK