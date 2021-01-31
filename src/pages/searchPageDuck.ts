interface SearchPageDuck {
    url: string;
    searchTextBox: string;
    searchTextBox2: string;
    searchButton: string;
    searchButton2: string;
}

const searchPageDuck: SearchPageDuck = {
    url: 'https://duckduckgo.com/',
    searchTextBox: 'input[name="q"]',
    searchTextBox2: 'form[id="search_form"]',
    searchButton: 'input[value="S"]',
    searchButton2: 'input[value="X"]'
};

export {searchPageDuck};