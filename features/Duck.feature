Feature: To search cucumber in DuckDuckGo

    @DuckDuckGoScenario
    Scenario: Cucumber DuckDuckGo Search
        Given I open DuckDuckGo search page
        When I type "cucumber" on DuckDuckGo
        And I click on DuckDuckGo search button
        And I click the DuckDuckGo clear button
        Then The DuckDuckGo search field is empty


    @DuckDuckGoScenario
    Scenario Outline: I look for <Name> using <path> path
        Given I open DuckDuckGo search page
        Then The element <Name> is found using path <path>
        Examples:
            | Name                   | path                                                                  |
            | "Search Button"        | 'input[@value="S"]'                                                    |
            | "Search Field"         | 'input[@id="search_form"]'                                             |
            | "Logo"                 | 'input[@id="logo_homepage_link"]'                                      |
            | "Add to Chrome Button" | 'span[@class="badge-link__btn btn btn--primary js-badge-link-button"]' |
            | "Menu Button"          | 'a[@class="header__button--menu  js-side-menu-open"]'                  |


    @DuckDuckGoScenario
    Scenario Outline: I look for <Name> using <path> path on page <page>
        Given I open <page> page
        Then The element <Name> is found using path <path>
        Examples:
            | Name            | path                                                  | page                                         |
            | "Search Button" | 'input[@id="search_button_homepage"]'                 | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Search Field"  | 'input[@id="search_form_input_homepage"]'             | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Logo"          | 'a[@class="header__logo-wrap js-header-logo"]'        | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Menu Button"   | 'a[@class="header__button--menu  js-side-menu-open"]' | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
