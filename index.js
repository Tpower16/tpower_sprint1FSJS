// Main file for application

// Author: Terrance Power

// Require statements
global.DEBUG = true;
const fs = require("fs");
const { initializeApp } = require("./init.js");
const { configApp } = require("./config.js");
const { tokenApp } = require("./token.js");

// slices off first two dir
const myArgs = process.argv.slice(2);
if (DEBUG) if (myArgs.length >= 1) console.log("the index.args: ", myArgs);

switch (myArgs[0]) {
    // init file case
    case "init":
    case "i":
        if (DEBUG) console.log(myArgs[0], " - initialize the app.");
        initializeApp();
        break;

    // config file case
    case "config":
    case "c":
        if (DEBUG) console.log(myArgs[0], " - display the configuration file");
        configApp();
        break;

    // token file case
    case "token":
    case "t":
        if (DEBUG) console.log(myArgs[0], " - generate a user token");
        tokenApp();
        break;

    // help case - default
    case "--help":
    case "--h":
    default:
        fs.readFile(__dirname + "/usage.txt", (error, data) => {
            if (error) throw error;
            console.log(data.toString());
        });
}
