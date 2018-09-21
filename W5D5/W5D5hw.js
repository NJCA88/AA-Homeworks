// window.setTimeout (function() {
//   console.log('hello');
// }, 5000);
//
//
// window.setTimeout (time) {
//   window.setTimeout(function() {
//     console.log('is hammertime!');
//   }, 1000;
//   console.log('set timer for something or other')
//   })
// }

// function hammerTime (time) {
//   window.setTimeout(function () {
//     alert(`${time} is HAMMER TIME!`);
//   });
// }

// Ask the user if they'd like tea.
// console.log their response.
// Ask the user if they'd like biscuits.
// console.log their complete response: So you
// ${firstAns} want tea and you ${secondAns} want coffee.


const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function teaAndBiscuts () {
  reader.question('would you like some tea', function (res) {
    console.log( `you replied ${res}.`);
    reader.question ('Would you like some biscuits?', function (res2) {
      console.log(`You replied ${res2}`);

      const first = (res === 'yes?') ? 'do' : 'dont';
      const second = (res2 === 'yes') ? 'do' : 'dont';
    });
  });
}


teaAndBiscuts()




console.log('hey it worked!')
