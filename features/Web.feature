Feature: Web tests

    @WebScenario
    Scenario Outline: I look for <Name> using <path> path on webpage <page>
        Given I open <page> page
        Then The element <Name> is found using path <path>
        Examples:
            | Name            | path                                                 | page                                         |
            | "Search Button" | 'input[is="search_button"]'                          | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Search Field"  | 'input[name="q"]'                                    | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Logo"          | 'a[class="header__logo-wrap js-header-logo"]'        | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Menu Button"   | 'a[class="header__button--menu  js-side-menu-open"]' | "https://duckduckgo.com/?q=test&t=h_&ia=web" |
            | "Search field"  | 'input[name="q"]'                                    | "https://google.com"                         |
            | "Logo"          | 'img[alt="Google"]'                                  | "https://google.com"                         |
            | "Search Icon"   | 'span[class="wFncld z1asCe MZy1Rb"]'                 | "https://google.com"                         |
            | "Icon Menu"     | 'a[class="gb_D gb_sc"]'                              | "https://google.com"                         |


@WebScenario
    Scenario Outline: I look for <Name> using <path> path on webpage <page>
        Given I open <page> page
        Then The element <Name> is found using path <path>
        And The element <Name2> is found using path <path2>
        And The element <Name3> is found using path <path3>
        And The element <Name4> is found using path <path4>
        And The element <Name5> is found using path <path5>
        And The element <Name6> is found using path <path6>
        And The element <Name7> is found using path <path7>
        And The element <Name8> is found using path <path8>
        Then I click on the <path> button
        Then I click on the <path2> button
        Then I click on the <path3> button
        Then I click on the <path4> button
        Then I click on the <path5> button
        Then I click on the <path6> button
        Then I click on the <path7> button
        Then I click on the <path8> button
        Examples:
            | page                                         | Name   | Name2 | Name3        | Name4 | Name5    | Name6 | Name7       | Name8    | path                       | path2                     | path3                                    | path4                     | path5                        | path6                     | path7                  | path8              |
            | "https://duckduckgo.com/?q=test&t=h_&ia=web" | "HTML" | "CSS" | "JAVASCRIPT" | "SQL" | "PYTHON" | "PHP" | "BOOTSTRAP" | "HOW TO" | 'a[@title="HT<L Tutorial"]' | 'a[@title="CSS Tutorial"]' | 'a[@title="title="JavaScript Tutorial""]' | 'a[@title="SQL Tutorial"]' | 'a[@title="Python Tutorial"]' | 'a[@title="PHP Tutorial"]' | 'a[@title="BOOTSTRAP"]' | 'a[@title="How To"]' |