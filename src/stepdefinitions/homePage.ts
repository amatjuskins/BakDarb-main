import { page } from '../support/hooks';
import { Given, Then, When } from "cucumber";
const chai = require('chai').use(require('chai-as-promised'));
import { searchPageBing } from '../pages/searchPageBing';
import { searchPageDuck } from '../pages/searchPageDuck';
const expect = chai.expect;


Given('I open Bing search page', async function () {
    await page.open(searchPageBing.url);
    await expect(page.getTitle()).to.eventually.equal("Bing");
});

Given('I open DuckDuckGo search page', async function () {
    await page.open(searchPageDuck.url);
    await expect(page.getTitle()).to.eventually.equal("DuckDuckGo — Privacy, simplified.");;
});


Given('I open {string} page', async function (string) {
    await page.open(string);
});
