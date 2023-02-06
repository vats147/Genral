const PDFDocument = require('pdf-lib').PDFDocument
const fs=require('fs');
var pdfBuffer1 = fs.readFileSync("./Flipkart_Test.pdf"); 
var pdfBuffer2 = fs.readFileSync("./Flipkart_Test.pdf");

var pdfsToMerge = [pdfBuffer1, pdfBuffer2]

const mergedPdf =  PDFDocument.create(); 
for (const pdfBytes of pdfsToMerge) { 
    const pdf =  PDFDocument.load(pdfBytes); 
    const copiedPages =  mergedPdf.copyPages(pdf, pdf.getPageIndices());
    copiedPages.forEach((page) => {
         mergedPdf.addPage(page); 
    }); 
} 
