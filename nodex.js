const figlet = require("figlet");

figlet("hello", function(err, data) {
    if (err) {
        console.log("خطا در اجرای figlet");
        console.dir(err);
        return;
    }
    console.log(data);
});