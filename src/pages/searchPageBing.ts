interface SearchPageBing {
    url: string;
    searchTextBox: string;
    searchButton: string;
    searchButton2: string;
}

const searchPageBing: SearchPageBing = {
    url: 'https://bing.com/',
    searchTextBox: 'input[name="q"]',
    searchButton: 'svg[viewBox="0 0 25 25"]',
    searchButton2: 'div[class="sw_close"]'
};

export {searchPageBing};