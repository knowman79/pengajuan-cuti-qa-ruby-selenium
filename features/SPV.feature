@SPV
Feature: Testing SPV

  #TS 1.1 dan 1.5
  @validlogin @smoke
  Scenario: valid login
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button

  #TS 1.4
  @SPVinvalidlogin @smoke
  Scenario: valid login
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "sss"
    Then User click login button

  #TS 2.1
  @SPVdashboard @smoke
  Scenario: menu dashboard
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click submission date in dashboard
    Then User click leave type in dashboard
    Then User click start date in dashboard
    Then User click end date in dashboard
    Then User click duration in dashboard
    Then User click status in dashboard
    Then User click icon expand in dashboard

  #TS 2.2 - 2.3
  @SPVdashboardSearch @smoke
  Scenario Outline: search in dashboard
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User input keyword in dashboard "<spvsearchdashboard>"
    Examples:
    | spvsearchdashboard |
    | Reject |
    | Karina |
    | Abc    |

  #TS 3.1
  @SPVmyactivity @smoke
  Scenario: menu myactivity
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu my activity
    Then User click submission date in my activity
    Then User click leave type in my activity
    Then User click start date in my activity
    Then User click end date in my activity
    Then User click duration in my activity
    Then User click status in my activity
    Then User click icon expand in my activity

  #TS 3.2 - 3.3
  @SPVmyactivitySearch @smoke
  Scenario Outline: search in dashboard
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu my activity
    Then User input search activity "<spvsearchactivity>"
    Examples:
      | spvsearchactivity|
      | Open   |
      | Abc    |

  #TS 4.1
  @SPVsupervisor @smoke
  Scenario: menu myactivity
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu supervisor
    Then User click name in supervisor
    Then User click start date in supervisor
    Then User click end date in supervisor
    Then User click leave type in supervisor
    Then User click duration in supervisor
    Then User click status in supervisor
    Then User click icon expand in supervisor

  #TS 4.2 - 4.3
  @SPVsupervisorSearch @smoke
  Scenario Outline: search in dashboard
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu supervisor
    Then User input search request list "<spvsearchrequestlist>"
    Examples:
      | spvsearchrequestlist|
      | Reject |
      | Afina  |
      | Abc    |

  @SPVapprove @smoke
  Scenario: approve
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu supervisor
    Then User click approve button
    Then User click yes button

  @SPVreject @smoke
  Scenario: reject
    Given User open matrix-3.cloudias79.com
    Then User input username "kr"
    Then User input password "k456"
    Then User click login button
    Then User click menu supervisor
    Then User click reject button
    Then User click yes button

    #TS 6.1
    @SPVlogout @smoke
    Scenario: SPV logout
      Given User open matrix-3.cloudias79.com
      Then User input username "kr"
      Then User input password "k456"
      Then User click login button
      Then User click profil
      Then User click logout button
