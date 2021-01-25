import * as reporter from 'cucumber-html-reporter';
import * as path from 'path';
const jsonReports = path.join(process.cwd(), '/reports/json');
const htmlReports = path.join(process.cwd(), '/reports/html');
const targetJson = jsonReports + '/cucumber_report.json';

const cucumberReporterOptions = {
    jsonFile: targetJson,
    output: htmlReports + '/cucumber_reporter.html',
    reportSuiteAsScenarios: true,
    theme: 'bootstrap',
    scenarioTimestamp: true,
    launchReport: false,
    metadata: {
        "App Version":"1.0.0",
        "Browser": "Chrome",
        "Platform": "Windows 10",
        "Executed": "Local"
    }
};

function createHTMLReport() {
    try {
        reporter.generate(cucumberReporterOptions); // invoke cucumber-html-reporter
        console.log('HTML report generated successfully!');
    } catch (err) {
        if (err) {
            throw new Error('Failed to save cucumber test results to json file.');
        }
    }
}
createHTMLReport();
