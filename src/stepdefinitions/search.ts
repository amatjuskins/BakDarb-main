import { searchPageBing } from '../pages/searchPageBing';
import { searchPageDuck } from '../pages/searchPageDuck';
import { page } from '../support/hooks';
import { Given, Then, When} from "cucumber";

When('I type {string} on Bing', async function(string) {
    await page.sendElementText(searchPageBing.searchTextBox, string);
});

When('I type {string} on DuckDuckGo', async function(string) {
    await page.sendElementText(searchPageBing.searchTextBox, string);
});

When('I click on Bing search button', async function () {
    await page.clickElement(searchPageBing.searchButton);
});

When('I click on DuckDuckGo search button', async function (){
    await page.clickElement(searchPageDuck.searchButton);
});

Then('The Bing search field is empty', async function () {
    await page.getElementText(searchPageBing.searchTextBox);
  });

  Then('The DuckDuckGo search field is empty', async function () {
    await page.getElementText(searchPageDuck.searchTextBox);
  });
