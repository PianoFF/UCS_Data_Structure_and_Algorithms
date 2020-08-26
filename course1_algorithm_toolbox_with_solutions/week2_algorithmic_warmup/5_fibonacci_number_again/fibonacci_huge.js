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
    const n = parseInt(line.toString().split(" ")[0], 10);
    const m = parseInt(line.toString().split(" ")[1], 10);

    console.log(getFibMod(n, m));
    process.exit();
  }
}

function getFibMod(n, m) {
  // write your code here
  let pisanoPeriod = [0, 1, 1];
  let result = 0;
  let nMinus2 = 1;
  let nMinus1 = 1;

  while (
    pisanoPeriod[pisanoPeriod.length - 1] != 1 ||
    pisanoPeriod[pisanoPeriod.length - 2] != 0
  ) {
    result = nMinus2 + nMinus1;
    pisanoPeriod.push(result % m);
    // console.log("pisano Period:", pisanoPeriod);
    nMinus2 = pisanoPeriod[pisanoPeriod.length - 2];
    nMinus1 = pisanoPeriod[pisanoPeriod.length - 1];
  }
  //   console.log("before cutting", pisanoPeriod);
  pisanoPeriod.pop();
  pisanoPeriod.pop();

  //   console.log("after trimming", pisanoPeriod);

  let index = n % pisanoPeriod.length;
  return pisanoPeriod[index];
}

module.exports = getFibMod;
