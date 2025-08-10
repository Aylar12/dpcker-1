const figlet = require("figlet");

figlet("hello Arii", function(err, data) {
    if (err) {
        console.log("error figlet");
        console.dir(err);
        return;
    }
    console.log(data);
});