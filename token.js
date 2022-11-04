// load the logEvents module
const logEvents = require("./logEvents");

// define/extend an EventEmitter class
const EventEmitter = require("events");
class MyEmitter extends EventEmitter {}

// initialize an new emitter object
const myEmitter = new MyEmitter();
// add the listener for the logEvent
myEmitter.on("log", (event, level, msg) => logEvents(event, level, msg));

// common core global modules
const fs = require("fs");
const path = require("path");

const crc32 = require("crc/crc32");
const { format } = require("date-fns");

const myArgs = process.argv.slice(2);

var tokenCount = function () {
    if (DEBUG) console.log("token.tokenCount()");
    return new Promise(function (resolve, reject) {
        // Reading FILE
        fs.readFile(__dirname + "/json/tokens.json", "utf-8", (error, data) => {
            if (error) reject(error);
            else {
                let tokens = JSON.parse(data);
                let count = Object.keys(tokens).length;
                console.log(`Current token count is ${count}.`);
                myEmitter.emit(
                    "log",
                    "token.tokenCount()",
                    "INFO",
                    `Current token count is ${count}.`
                );
                resolve(count);
            }
        });
    });
};

function tokenList() {
    if (DEBUG) console.log("token.tokenList()");
    // Reading FILE
    fs.readFile(__dirname + "/json/tokens.json", "utf-8", (error, data) => {
        if (error) throw error;
        let tokens = JSON.parse(data);
        console.log("** User List **");
        tokens.forEach((obj) => {
            console.log(" * " + obj.username + ": " + obj.token);
        });
        myEmitter.emit(
            "log",
            "token.tokenList()",
            "INFO",
            `Current token list was displayed.`
        );
    });
}

function addDays(date, days) {
    var result = new Date(date);
    result.setDate(result.getDate() + days);
    return result;
}

function newToken(username) {
    if (DEBUG) console.log("token.newToken()");

    let newToken = JSON.parse(`{
        "created": "1969-01-31 12:30:00",
        "username": "username",
        "email": "user@example.com",
        "phone": "5556597890",
        "token": "token",
        "expires": "1969-02-03 12:30:00",
        "confirmed": "tbd"
    }`);

    let now = new Date();
    let expires = addDays(now, 3);

    newToken.created = `${format(now, "yyyy-MM-dd HH:mm:ss")}`;
    newToken.username = username;
    newToken.token = crc32(username).toString(16);
    newToken.expires = `${format(expires, "yyyy-MM-dd HH:mm:ss")}`;
    newToken.under = "under";
    // Reading FILE
    fs.readFile(__dirname + "/json/tokens.json", "utf-8", (error, data) => {
        if (error) throw error;
        let tokens = JSON.parse(data);
        tokens.push(newToken);
        userTokens = JSON.stringify(tokens);
        // Writing FILE
        fs.writeFile(__dirname + "/json/tokens.json", userTokens, (err) => {
            if (err) console.log(err);
            else {
                console.log(
                    `New token ${newToken.token} was created for ${username}.`
                );
                myEmitter.emit(
                    "log",
                    "token.newToken()",
                    "INFO",
                    `New token ${newToken.token} was created for ${username}.`
                );
            }
        });
    });
    return newToken.token;
}

function tokenApp() {
    if (DEBUG) console.log("tokenApp()");
    myEmitter.emit(
        "log",
        "token.tokenApp()",
        "INFO",
        "token option was called by CLI"
    );

    function updateToken(myArgs) {
        if (DEBUG) console.log("token.updateToken()" + myArgs);
        // Reading FILE
        fs.readFile(__dirname + "/json/tokens.json", "utf-8", (error, data) => {
            if (error) throw error;
            let tokens = JSON.parse(data);
            tokens.forEach((obj) => {
                if (obj.username === myArgs[3]) {
                    if (DEBUG) console.log("Found " + obj.username);
                    obj.phone = myArgs[4];
                }
            });

            userTokens = JSON.stringify(tokens);
            // Writing FILE
            fs.writeFile(__dirname + "/json/tokens.json", userTokens, (err) => {
                if (err) console.log(err);
                else {
                    console.log(
                        `Token record for ${myArgs[3]} was updated with ${myArgs[4]}.`
                    );
                }
            });

            myEmitter.emit(
                "log",
                "token.updateToken()",
                "INFO",
                `Current token was updated.`
            );
        });
    }

    switch (myArgs[1]) {
        case "--count":
            if (DEBUG) console.log("token.tokenCount() --count");
            tokenCount();
            break;
        case "--list":
            if (DEBUG) console.log("token.tokenList() --list");
            tokenList();
            break;
        case "--new":
            if (DEBUG) console.log("token.newToken() --new");
            newToken(myArgs[2]);
            break;
        case "--upd":
            if (DEBUG) console.log("token.updateToken()");
            updateToken(myArgs);
            break;
        case "--fetch":
            if (DEBUG) console.log("token.fetchToken");
            //    fetchRecord(myArgs[2]);
            break;
        case "--search":
            if (DEBUG) console.log("token.searchToken()");
            //    searchToken();
            break;
        case "--help":
        case "--h":
        default:
            fs.readFile(__dirname + "/views/token.txt", (error, data) => {
                if (error) throw error;
                console.log(data.toString());
            });
            myEmitter.emit(
                "log",
                "token.tokenApp()",
                "INFO",
                "invalid CLI option, usage displayed"
            );
    }
}

module.exports = {
    tokenApp,
    //   newToken,
    tokenCount,
    //   fetchRecord,
};
