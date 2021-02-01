import { BeforeAll, After, AfterAll, Status} from "cucumber";
import {PageHelper} from '../pages/pageHelper';

const page: PageHelper = new PageHelper();

BeforeAll({timeout: 100 * 1000}, async () => {
    await page.init();
});

After(async function(scenario) {
    if (scenario.result.status === Status.FAILED) {
         const screenShot = await page.screenshot();
         this.attach(screenShot, 'image/png');
    }
});

AfterAll({timeout: 100 * 1000}, async () => {
    await page.close();
});

/**
 * export the instance of the page
 */
export {page};
