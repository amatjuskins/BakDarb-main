interface SearchPageDuck {
    url: string;
    searchTextBox: string;
    searchButton: string;
    searchButton2: string;
}

const searchPageDuck: SearchPageDuck = {
    url: 'https://duckduckgo.com/',
    searchTextBox: 'input[name="q"]',
    searchButton: 'input[value="S"]',
    searchButton2: 'input[value="X"]'
};

export {searchPageDuck};