Feature: Register
    As a user
    In order to share or join trips, I want to reg to the site

    Scenario: Success reg and then login
        When I go to the /reg page
        Then I see the input form with placeholders: 电话号码 密码 员工号
        When I fill the form wite info below:
             | password | Phone       | code                  |
             | Bisheng  | 13900998888 | p102184@gnpjvc.com.cn |
        When I submit the form
        Then I see the reg success info and is login

    Scenario: Incorrect inputs could not reg
        When I am filling the reg form
        When I fill incorrect info as:
            | code | phone | password |
            | 12   | 1     | 1        |
        Then I see "reg failed", and input box red texts
