// This is file which search speacific word and then do something

// include library which will help you for text-rendring
const pdf = require('pdf-parse');

// read data from pdf Specially for Meeshp
pdf('MADHO_TEST (3).pdf', { pagerender: 'none' }).then(function (data) {

       let pageText = data.text.split(/\n(?=\n)/);


       let pages = pageText.map((text, index) => [index + 1, text])
       console.log(pages);


       let page = pages[1];
       let text = page[1].split("\n");

       // extract Customer Address ,Customer Name, Pincode, Order Name, Quantity
       
       for (let i = 0; i < text.length; i++) {
              if (text[i].match(/^(\b\d{6}\b).*/) !== -1) {
                     for (let j = 0; j < text.length; j++) {
                            if (text[j].includes("If undelivered, return to:")) {
                                   break;
                            }
                            else {
                                   console.log(text[j]);
                            }

                     }
                     break;
              } else {
                     console.log("not match");
              }
       }
       // console.log("Customer Address " +text[3] +","+text[4]+","+text[5]);
}

);
