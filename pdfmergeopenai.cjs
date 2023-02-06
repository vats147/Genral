const express = require('express');
const multer = require('multer');
const fs = require('fs');
const { PDFDocument } = require('pdf-lib');
const http = require('http');

const cors = require('cors');

const os = require('os');
const cluster = require('cluster');
const PDFMerger = require('pdf-merger-js');
var date = new Date();

const app = express();
var check = 0;
var fileNames = [];


async function mergePdfs(pdfs) {
       for (const pdf of pdfs) {
              await merger.add(pdf);
       }
       await merger.save('public/merged.pdf');
}

var merger = new PDFMerger();
const storage = multer.diskStorage({
       destination: (req, file, cb) => {
         cb(null, './');
       },
       filename: (req, file, cb) => {
         check++;
         fname = `${file.fieldname} ${check}-${Date.now()}.pdf`;
         fileNames.push(fname);
         cb(null, fname);
       }
     });
     
     const upload = multer({ storage });
     
     app.post('/merge', upload.array('pdfs', 5), async (req, res, next) => {
       if (req.files.length > 1) {
         const pdfPaths = req.files.map(file => file.path);
         await mergePdfs(pdfPaths);
       //   fileNames.push(fname);


         await res.redirect("http://localhost:3000/static/merged.pdf");
       } else {
              res.sendFile(path.join(__dirname, req.files[0].path));
       }

       console.log(fileNames);
       for(let i=0;i<fileNames.length;i++){
              fs.unlink(fileNames[i],(err)=>{
                     if(err){
                            console.log(err);
                     }

              });
       }
      
     }
     
     );


      // Start the server
      const port = process.env.PORT || 3000;
      app.listen(port, () => {
             console.log(`Server listening on port ${port}`);
      });
     