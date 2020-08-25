// by Alexander Nikolskiy

const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  terminal: false,
});

process.stdin.setEncoding("utf8");
rl.on("line", readLine);

function readLine(line) {
  console.log(fib(parseInt(line, 10)));
  process.exit();
}

function fib(n) {
  // write your code here
  if (n === 0) {
    return 0;
  } else {
    let result = 0;
    let count = 2;
    let nMinus2 = 0;
    let nMinus1 = 1;
    result = nMinus2 + nMinus1;
    while (count <= n) {
      result = nMinus2 + nMinus1;
      nMinus2 = nMinus1;
      nMinus1 = result;
      count += 1;
    }
    return result;
  }
}

module.exports = fib;
