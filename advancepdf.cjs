// Currently  I am implementing keep invoice method 
// import my library
const express = require('express');
const multer = require('multer');
const fs = require('fs');
const { PDFDocument } = require('pdf-lib');
const pdfLib = require('pdf-lib');
const http = require('http');

const cors = require('cors');

const os = require('os');
const cluster = require('cluster');



// count total number of cpu
const cpuNums = os.cpus().length;
console.log("Total Number of Cpus(CORS):"+cpuNums);

var date = new Date();

const app = express();
var check=0;

app.use(cors({
  origin: '*',
}));



var fname;

// Set up multer to handle file uploads
const storage = multer.diskStorage({
       destination: (req, file, cb) => {
              cb(null, './');
       },
       filename: (req, file, cb) => {
         check++;
              fname = `${file.fieldname} ${check}-${Date.now()}.pdf`;
              console.log("Filename : "+fname);
              cb(null, fname);
       },
});

const upload = multer({ storage });
app.use("/upload",(req,res)=>{
       res.json({Message: "Hello From My World "});
})

// Set up a route to handle file uploads



  
app.post('/', upload.single('file'), (req, res,next) => {
   console.log("=================================================");
   console.log("API Last Build Date " + date.toLocaleDateString());
   console.log("API Last Build  Time" + date.toLocaleTimeString());

   console.log(date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate());
   console.log("===========================");
    
   console.log("LAST API CALL TIME:--" + date.toLocaleString('en-US', { timeZone: 'Asia/Kolkata' }));
  
   console.log("===========================");
   console.log("Your IP Addresss is: " + req.socket.localAddress);
   console.log("=================================================");
       // Read the input PDF file
       const file = req.file;
       if (!file) {
              const error = new Error("Please upload a file");
              error.httpStatusCode = 400;
              return next(error);
       }
       // crop uploaded file

       async function cropPDF(inputPath, outputPath, x, y, width, height) {
              // Read the input PDF file
              let pdfDoc = await PDFDocument.load(fs.readFileSync(inputPath));


              


              // Create A PDF object to store new pdf
              const newPdfDoc = await PDFDocument.create();
              //   Loop through all pages in the PDF
              for (let i = 0; i < pdfDoc.getPages().length; i++) {
                // Get the page that you want to crop
                let page = pdfDoc.getPage(i);
                let page1 = pdfDoc.getPages()[i];
                console.log(page1.getCropBox());

                // Store normal page first then store croopeed page 
                

                // i want to store first normal page then cropped page

                // save pages in newPdfDoc
                const copiedPage = await newPdfDoc.copyPages(pdfDoc, [i]);
                page.setCropBox(x, y, width, height);
              //   newPdfDoc.addPage(page);
              //   Add cropped page to newPdfDoc
                // Save the new PDF to disk
              //   fs.writeFileSync(outputPath, await newPdfDoc.save());
                // newPdfDoc.addPage(copiedPage[0].setCropBox(x,y,width,height));
              }
              // console.log();

              const pdfBytes = await newPdfDoc.save();
              // Save the output PDF file
              fs.writeFileSync(outputPath, pdfBytes);
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
       console.log(req.body.Ecommerce);
       if(req.body.Ecommerce==1)
       {

       cropPDF('./' + fname,'outputfiledownload.pdf', 170, 467, 255, 353)
              .then(() => {
                     console.log("PDF is cropped");
                     // PDF has been cropped
              })
              .catch((error) => {
                     console.log(error);
              });
       

       }
       else if(req.body.Ecommerce==2)
       {
             
              cropPDF('./' + fname,'outputfiledownload.pdf',  0, 490, 600, 600)
              .then(() => {
                     console.log("Meesho is cropped");
                     // PDF has been cropped
              })
              .catch((error) => {
                     console.log(error);
              });
       

       }

       // console.log(req.file);


       console.log("File downloaded");




       // call Python api in node js


       //  delete file 






       // You can now do something with the uploaded file, such as storing it in a database or sending it to another API

});

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
       console.log(`Server listening on port ${port}`);
});


