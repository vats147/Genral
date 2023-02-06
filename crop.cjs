// import my library
const express = require('express');
const multer = require('multer');
const fs = require('fs');
const { PDFDocument } = require('pdf-lib');
const http = require('http');

const cors = require('cors');

const os = require('os');
const cluster = require('cluster');

// doc.setCropBox(10, 10, 100, 100);

async function cropPDF(inputPath, outputPath, x, y, width, height) {
       // Read the input PDF file
       let pdfDoc = await PDFDocument.load(fs.readFileSync(inputPath));

       //   Loop through all pages in the PDF
       for (let i = 0; i < pdfDoc.getPages().length; i++) {


              // Get the page that you want to crop
              let page = pdfDoc.getPage(i);
              text_content = page.getTextContent()
              console.log(text_content)

              // Set the crop box for the page
              page.setCropBox(x, y, width, height);
       }
       // console.log();
       // Save the output PDF file
       fs.writeFileSync(outputPath, await pdfDoc.save());
       fs.unlink( fname, (err) => {
              if (err) {
               
                console.error(err);
                
                 
              } else {
                console.log('File deleted successfully');
              }
            });


            res.download(outputPath);
       // fs.unlink();

}

cropPDF('./Glowroad_Test.pdf','Glowroad_Test_1.pdf', 25, 220, 545, 300)
              .then(() => {
                     console.log("PDF is cropped");
                     // PDF has been cropped
              })
              .catch((error) => {
                     console.log(error);
              });
