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
  let result = 1;
  let nMinus1 = 1;
  let nMinus2 = 0;
  let count = 2;

  while (count <= n) {
    result = nMinus1 + nMinus2;
    result = result % 10;
    count += 1;
    nMinus2 = nMinus1;
    nMinus1 = result;
  }
  return result;
}

module.exports = fib;
