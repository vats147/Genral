const pdf = require('pdf-parse');
const fs = require('fs');
 
let dataBuffer = fs.readFileSync('MADHO_TEST (3).pdf');
// const pdf = require('pdf-parse');

pdf('MADHO_TEST (3).pdf').then(function(data) {
    for(var i = 0; i < data.numpages; i++) {
        console.log(data.text);
    }
});
   
   