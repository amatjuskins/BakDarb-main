import { Given, Then, When } from "cucumber";
import { expect } from "chai";
import { assert } from "console";
let temp;


Given('I have {int} and {int}', async function(var1:  number, var2: number){
    expect(var1!=null && var2!= null);
})

Then('{} is divided by {}', async function(var1:  any, var2: any){
    temp=var1/var2;
})

Then('I have the % of the scenario that is equal to {}', async function(var1: any){
    
    assert(((temp * 100).toFixed(2)) == var1);
    console.log("var1=" + var1 + "  temp ="+ (temp * 100).toFixed(2))
    return ((temp * 100).toFixed(2) + '%');
})

Then('I add {} percent', async function(var1: number){
    temp=temp+(var1/100);
})