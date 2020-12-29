// Title  : Calculator - Ada Cohort 13
// Author : Suely Barreto - Space
// Date   : April 2020

const readline = require(`readline-sync`);

// Function to Prompt for an Integer
const getInteger = function(prompt) {
  // Wait for user's response
  let input = ``;
  while (input === ``) {
    input = readline.question(prompt);
    if (isNaN(input)) {
      console.log(`Invalid number`);
      input = ``;
    } 
  }
  return parseInt(input);
}
 
// Greeting
console.log(`\nWelcome to the Calculator Program.`);
let choice = "";
let first  = 0;
let second = 0;
while (choice !== `5`) {

  // Ask for Operations
  console.log(`\nWhich operator would you like to use?`);
  console.log(`1. add (+)`);
  console.log(`2. subtract (-)`);
  console.log(`3. multiply (*)`);
  console.log(`4. divide (/)`);
  console.log(`5. quit`);
  choice  = readline.question(`Please choose one operator (name or symbol): `).toLowerCase();

  if ([`add`, `+`, `1`, `subtract`, `-`, `2`, `multiply`, `*`, `3`, `divide`, `/`, `4`].includes(choice)) {
    first  = getInteger(`\nEnter first number: `);
    second = getInteger(`Enter second number: `);
  }

  // Process Each Operation
  switch (choice) {
    case `add`:
    case `+`:
    case `1`:
      let addition = first + second;
      console.log(`${first} + ${second} = ${addition}`);
      break;
    case `subtract`:
    case `-`:
    case `2`:
      let subtraction = first - second;
      console.log(`${first} - ${second} = ${subtraction}`);
      break;
    case `multiply`:
    case `*`:
    case `3`:
      let multiplication = first * second;
      console.log(`${first} * ${second} = ${multiplication}`);
      break;
    case `divide`:
    case `/`:
    case `4`:
      if (second === 0) {
        console.log( `Not a valid operation. Can't divide by zero (0). Try it again.`);
      } else {
        let division = first / second;
        console.log( `${first} / ${second} = ${division}`); 
      }
      break;
    case `quit`:
    case `q`:
    case `5`:
      choice = `5`;
      break;
    default:
      console.log( `This is not a valid operation. Try again.`);
  } // end switch (choice)

} // end while (choice)
console.log(`Thanks for using the calculator!`);