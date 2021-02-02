Feature: Test API Calls on petstore.swagger.io

    @CucumberScenario
    Scenario Outline: Test POST call <call> with payload <jsonFile>
        Given I have base <url>
        Then I send POST call - <call> and <jsonFile> as payload
        And The respose is received
        Examples:
            | url                           | call              | jsonFile     |
            | "https://petstore.swagger.io" | "/v2/pet"         | "addPet1"    |
            | "https://petstore.swagger.io" | "/v2/pet"         | "addPet2"    |
            | "https://petstore.swagger.io" | "/v2/pet"         | "addPet3"    |
            | "https://petstore.swagger.io" | "/v2/pet"         | "addPet3"    |
            | "https://petstore.swagger.io" | "/v2/store/order" | "orderPet1"  |
            | "https://petstore.swagger.io" | "/v2/store/order" | "orderPet2"  |
            | "https://petstore.swagger.io" | "/v2/store/order" | "orderPet3"  |
            | "https://petstore.swagger.io" | "/v2/user"        | "addUser1"   |
            | "https://petstore.swagger.io" | "/v2/user"        | "addUser2"   |
            | "https://petstore.swagger.io" | "/v2/user"        | "addUser3"   |
            | "https://petstore.swagger.io" | "/v2/user"        | "addUserDel" |


    @CucumberScenario
    Scenario Outline: Test GET call <call>
        Given I have base <url>
        Then I send GET call - <call>
        And The respose is received
        Examples:
            | url                           | call                                                 |
            | "https://petstore.swagger.io" | "/v2/pet/findByStatus?status=sold"                   |
            | "https://petstore.swagger.io" | "/v2/pet/findByStatus?status=pending"                |
            | "https://petstore.swagger.io" | "/v2/pet/1"                                          |
            | "https://petstore.swagger.io" | "/v2/store/inventory"                                |
            | "https://petstore.swagger.io" | "/v2/user/username"                                  |
            | "https://petstore.swagger.io" | "/v2/user/login?username=username&password=password" |
            | "https://petstore.swagger.io" | "/v2/user/logout"                                    |
            | "https://petstore.swagger.io" | "/v2/user/username"                                  |
            | "https://petstore.swagger.io" | "/v2/user/username2"                                 |
            | "https://petstore.swagger.io" | "/v2/user/username3"                                 |


