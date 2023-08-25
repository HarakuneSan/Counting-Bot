require("dotenv").config();
const fs = require("node:fs");
const path = require("node:path");

const filePath = path.join(__dirname, "data", "settings.json");

const file = require(filePath);
file.token = process.env.TOKEN ?? "";
file.client = process.env.CLIENT_ID ?? "";
file.tag = process.env.PREFIX ?? "!";

fs.writeFileSync(filePath, JSON.stringify(file), "utf-8");
