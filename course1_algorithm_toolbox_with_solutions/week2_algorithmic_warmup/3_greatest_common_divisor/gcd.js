// by Alexander Nikolskiy

const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  terminal: false,
});

process.stdin.setEncoding("utf8");
rl.on("line", readLine);

function readLine(line) {
  if (line !== "\n") {
    const a = parseInt(line.toString().split(" ")[0], 10);
    const b = parseInt(line.toString().split(" ")[1], 10);

    console.log(gcd(a, b));
    process.exit();
  }
}

function gcd(a, b) {
  // write your code here
  let remainder = a;

  let greaterItem;
  let smallerItem;

  if (a > b) {
    greaterItem = a;
    smallerItem = b;
  } else {
    greaterItem = b;
    smallerItem = a;
  }

  while (remainder > 0) {
    remainder = greaterItem % smallerItem;
    // console.log(remainder);
    if (remainder === 0) {
      return smallerItem;
    } else {
      greaterItem = smallerItem;
      smallerItem = remainder;
    }
  }
}

module.exports = gcd;
