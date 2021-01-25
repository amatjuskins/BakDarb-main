import { searchPageBing } from '../pages/searchPageBing';
import { searchPageDuck } from '../pages/searchPageDuck';
import { page } from '../support/hooks';
import { Given, Then, When} from "cucumber";

Then('I click the Bing clear button', async function () {
     await page.clickElement(searchPageBing.searchButton2);
});

Then('I click the DuckDuckGo clear button', async function ()  {
     await page.clickElement(searchPageDuck.searchButton2);
});