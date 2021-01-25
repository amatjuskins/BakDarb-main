Feature: To search cucumber in DuckDuckGo

@DuckDuckGoScenario
Scenario: Cucumber DuckDuckGo Search
Given I open DuckDuckGo search page
When I type "cucumber" on DuckDuckGo
And I click on DuckDuckGo search button
And I click the DuckDuckGo clear button
Then The DuckDuckGo search field is empty