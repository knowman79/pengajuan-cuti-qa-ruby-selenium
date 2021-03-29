@RoleHRD_faizal
Feature: Role HRD by faizal

  #TC 3.3
  @createmyactivity
  Scenario: HRD create in my activity
    Given HRD_Matrix open matrix-3.cloudias79.com
    Then HRD_Matrix input username "af"
    Then HRD_Matrix input password "1111"
    Then HRD_Matrix click login button
    Then HRD_Matrix click my activity
    Then HRD_Matrix click create leave
    Then HRD_Matrix input start date
    Then HRD_Matrix input end date
    Then HRD_Matrix input address during leave
    Then HRD_Matrix input contact number during leave
    Then HRD_Matrix input leave reasons
    Then HRD_Matrix input subtitute name during leave
    Then HRD_Matrix click submit
    Then HRD_Matrix click yes confirm popup