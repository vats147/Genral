import pdf_lib from 'pdf-lib'
import fs from 'fs';


// Open the PDF document
const pdfBytes = fs.readFileSync('Glowroad_Test.pdf');
const pdf = await pdf_lib.PDFDocument.load(pdfBytes);

// Get the first page of the document
const page = pdf.getPages();
console.log(page.getText());

// I want to read page one by one with pdf-lib

// Extract the text from the page
// const text = page.getTextContent().items.map(i => i.str).join('');

console.log(page);
