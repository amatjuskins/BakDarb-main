import { searchPageBing } from '../pages/searchPageBing';
import { searchPageDuck } from '../pages/searchPageDuck';
import { page } from '../support/hooks';
import { Given, Then, When } from "cucumber";
const chai = require('chai').use(require('chai-as-promised'));
const expect = chai.expect;

When('I type {string} on Bing', async function (string) {
  await page.sendElementText(searchPageBing.searchTextBox, string);
});

When('I type {string} on DuckDuckGo', async function (string) {
  await page.sendElementText(searchPageBing.searchTextBox, string);
});

When('I click on Bing search button', async function () {
  await page.clickElement(searchPageBing.searchButton);
});

When('I click on DuckDuckGo search button', async function () {
  await page.clickElement(searchPageDuck.searchButton);
});

Then('The Bing search field is empty', async function () {
  await page.getElementText(searchPageBing.searchTextBox2.toString())
});


Then('The DuckDuckGo search field is empty', async function () {
  await page.getElementText(searchPageDuck.searchTextBox2.toString())
});

Then('The element {string} is found using path {}', async function (string1, string2) {
  await page.locateElement(string2);
});

Then('I click on the {string} button', async function (string) {
  await page.clickElement(string);
});
