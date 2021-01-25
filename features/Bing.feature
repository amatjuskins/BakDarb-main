Feature: To search cucumber in Bing

@CucumberScenario
Scenario: Cucumber Bing Search
Given I open Bing search page
When I type "cucumber" on Bing
And I click on Bing search button
And I click the Bing clear button
Then The Bing search field is empty 