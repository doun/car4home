Feature: Register
    As a user
    In order to share or join trips, I want to reg to the site

    Scenario: Success reg and then login
        When I go to the /reg page
        Then I see the input form with placeholders: name:用户名, Phone:电话号码
        When I fill the form wite info below:
             | Name    | Phone       | e-mail                  |
             | Bisheng | 13900998888 | p102184@gnpjvc.com.cn |
        When I submit the form
        Then I see the reg success info and is login

    Scenario: Incorrect inputs failed
        When I am filling the reg form
        When I fill incorrect info as:
            | Name | Phone | e-mail |
            |      | uy8   | adf    |
        Then I see the red color info, user name should not be empty, and phone must be number, and wrong format email

