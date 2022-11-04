const folders = ["models", "views", "routes", "logs", "json"];

const configjson = {
    name: "AppConfigCLI",
    version: "1.0.0",
    description: "The Command Line Interface (CLI) for the MyApp.",
    main: "index.js",
    superuser: "adm1n",
    database: "exampledb",
};

const tokenjson = [
    {
        created: "1969-01-31 12:30:00",
        username: "username",
        email: "user@example.com",
        phone: "5556597890",
        token: "token",
        expires: "1969-02-03 12:30:00",
        confirmed: "tbd",
    },
];

const usagetxt = `

index <command> <option>

Usage:

index --help                            displays help
index init --all                        creates the folder structure and config file
index init --mk                         creates the folder structure
index init --cat                        creates all the files with default settings
index config --show                     displays a list of the current config settings
index config --reset                    resets the config file with default settings
index config --set                      sets a specific config setting
index token --count                     displays a count of the tokens created
index token --list                      list all the usernames with tokens
index token --new <username>            generates a token for a given username, saves tokens to the json file
index token --upd p <username> <phone>  updates the json entry with phone number
index token --upd e <username> <email>  updates the json entry with email
index token --fetch <username>          fetches a user record for a given username
index token --search u <username>       searches a token for a given username
index token --search e <email>          searches a token for a given email
index token --search p <phone>          searches a token for a given phone number

`;

const inittxt = `

index init <command> <option>

Usage:

index init --all          creates the folder structure and config file
index init --mk           creates the folder structure
index init --cat          creates all the files with default settings

`;

const configtxt = `

index <command> <option>

Usage:

index config --show     displays a list of the current config settings
index config --reset    resets the config file with default settings
index config --set      sets a specific config setting

`;

const tokentxt = `

index <command> <option>

Usage:

index token --count                     displays a count of the tokens created
index token --list                      list all the usernames with tokens
index token --new <username>            generates a token for a given username, saves tokens to the json file
index token --upd p <username> <phone>  updates the json entry with phone number
index token --upd e <username> <email>  updates the json entry with email
index token --fetch <username>          fetches a user record for a given username
index token --search u <username>       searches a token for a given username
index token --search e <email>          searches a token for a given email
index token --search p <phone>          searches a token for a given phone number

`;

module.exports = {
    folders,
    configjson,
    tokenjson,
    usagetxt,
    inittxt,
    configtxt,
    tokentxt,
};
