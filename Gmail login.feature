Feature: Gmail Login

Background: User should be on the Gmail login page

	Given User open "www.goole.co.uk"
	When User clicks on Gmail link
	Then User is on Gmail login page
	
Scenario Outline:  User should not login  with invalid credentials
	
	When User enters "<username>" and "<password>"
	And  User clicks on "<login>" button
	Then User can not login successfully
	And  Error message that "<error massage>" should be displayed
	
Examples:
	|username       |  password      |  error maessage                     |
	|xyz@gmail.     |  Abcd1234      |  wrong username                     |
	|xyz@gmail.com  |  Abcd134       |  wrong password                     |
	|xyz@gmail      |  Abcd134       |  wrong username and wrong password  |
	|xyz@gmail.com  |                |  password is  blank                 |
	|               | Abcd1234       |  username is blank                  |
	|               |                |  username and password are blank    |
	
	Scenario: User should Login successfully with valid credentials
	
    When User enters "xyz@gmail.com" and "Abcd1234"
	And  User clicks on "login" button
	Then User Login successfully

	
	