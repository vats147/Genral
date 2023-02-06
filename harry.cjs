const express = require("express");
const path = require('path');
const app = express();
const multer = require('multer');



const PDFMerger = require('pdf-merger-js');

var merger = new PDFMerger();


async function mergePdfs(pdfs) {
       for (const pdf of pdfs) {
              await merger.add(pdf);
       }
       await merger.save('public/merged.pdf');
}



const upload = multer({ dest: 'uploads/' })

const port = 3000
app.use('/static', express.static('public'))


app.post('/merge', upload.array('pdfs', 5), async (req, res, next) => {
       console.log(req.files.length);
       var str = "";
       console.log(req.files.length);
       if (req.files.length === 1) {
              // Return the single uploaded PDF
              res.sendFile(path.join(__dirname, req.files[0].path));
       } else {
              // Merge the uploaded PDFs
              const pdfPaths = req.files.map(file => path.join(__dirname, file.path));
              mergePdfs(pdfPaths);
         
       }

       console.log(str);
       
       // mergePdfs(path.join(__dirname,req.files[0].path),path.join(__dirname,req.files[1].path))
       // res.send(req.files);
       await res.redirect("http://localhost:3000/static/merged.pdf")
})


app.listen(port, () => {
       console.log("Server is running on port 3000");
})