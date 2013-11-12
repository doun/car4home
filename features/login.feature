Feature: Login
    As DNMC car pool user,
    In order to share my car with others
    I want to login to this car pool system

    Scenario: Login directly using my user code
        Given I am an user of the original internal car share site, my code is <p102181>
        When I go to the main page of this site
        Then I see the login form, with an input box with "员工号" to input my code <p102181>
        And I see an inputbox with "密码" to input my default password <gnpjvc>
        When I click "登录" button, I am informed "登录成功"
        And I see the trips and joins page /trips/cur
