@RoleHRD
Feature: Role HRD 

#TC 1.1 dan 1.5 dan 2.1
@isvalidlogin @smoke
Scenario: login is valid
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button

#TC 1.2
@usernameisrequired @smoke
Scenario: username login is required
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD hapus username

#TC 1.3
@passwordisrequired @smoke
Scenario: password login is required
Given HRD open matrix-3.cloudias79.com
Then HRD input password "af"
Then HRD hapus password

#TC 1.4
@notvalidlogin @smoke
Scenario: login is not valid
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "nothrd"
Then HRD click login button

#TC 1.6
@showpassword @smoke
Scenario: show password
Given HRD open matrix-3.cloudias79.com
Then HRD input password "af"
Then HRD show password

#TC 2.2
@searchdashboard @smoke
Scenario Outline:  HRD search in dashboard
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD type the keyword "<searchdashboard>"
Examples:
| searchdashboard |
| 21/03 |
| 1 Days |
| Reject |
| Rejectss |

#TC 3.1
@gotomyactivity @smoke
Scenario: click my activity
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click my activity

#TC 3.2 dan 3.3
@searchmyactivity @smoke
Scenario Outline:  HRD search in my activity
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click my activity
Then HRD type the keyword in my activity "<searchmyactivity>"
Examples:
| searchmyactivity |
| 12 |
| 1 Days |
| Reject |
| Rejectss |

#TC 4.1
@gotosupervisor @smoke
Scenario: click supervisor
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click supervisor

#TC 4.2 dan 4.3
@searchspv @smoke
Scenario Outline:  HRD search spv
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click supervisor
Then HRD type the keyword spv "<searchspv>"
Examples:
| searchspv |
| 12 |
| 1 Days |
| Reject |
| Rejectss |

#TC 5.1
@gotohrd @smoke
Scenario: click HRD
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click hrd

#TC 7.1
@logout @smoke
Scenario: click logout
Given HRD open matrix-3.cloudias79.com
Then HRD input username "af"
Then HRD input password "1111"
Then HRD click login button
Then HRD click menu logout
Then HRD click logout button
