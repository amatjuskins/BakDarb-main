import { Given, Then, When } from "cucumber";
import { expect } from "chai";
import fetch from "node-fetch";
import testDATA from "../files/testDATA"
var request = require('request');
let url;
let callUrl;
let resp;

Given('I have base {string}', async function (baseUrl: string) {
    url = baseUrl;
})

Then('I send GET call - {string}', async function (call: string) {
    callUrl = url + call;

    request(callUrl, function (error, response, body) {
        console.log("RESPONSE:   " + response.body);
    })


});

Then('I send POST call - {string} and {string} as payload', async function (call: string, payload: string) {

    callUrl = url + call;
    fetch(callUrl, {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(testDATA[payload]),
    })
        .then(response => response.json())
        .then(data1 => {
            console.log('Success:', data1);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
});

Then('I send DELETE call - {string}', async function (call: string) {

    callUrl = url + call;
    fetch(callUrl, {
        method: 'DELETE', // or 'PUT', POST
    })
        .then(response => response.json())
        .then(data1 => {
            console.log('Success:', data1);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
});

Then('The respose is received', function () {
    // let dt = JSON.stringify(data);
    // console.log("THIS IS dt ============" + dt);
    // expect(JSON.stringify(this.response.body) === dt);
});





// Given I use get call on <url>
// Then I get a response code <response_code>
// And The response is <full_response>
