const cron = require("cron");
const db = require("./db/index");

// const DAYS_OF_WEEK = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

// cron.schedule("0 0 * * *", async () => {
//     let users = await db.any("SELECT * FROM users ORDER BY id ASC;");
//     console.log(users);

//     try {
//         for (let user of users) {

//         }
//     } catch (error) {
//         console.error(error);
//     }
// });
