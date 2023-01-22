const pdfLib = require('pdf-lib');
const fs=require("fs");
const pdfPath = 'MADHO_TEST (3).pdf';

async function extractText() {
       const pdfBytes = await fs.promises.readFile(pdfPath);
    const pdf = await pdfLib.PDFDocument.load(pdfBytes);

    let text = "";
    for (let i = 0; i < pdf.getPages().length; i++) {
        text += await pdf.getPage(i + 1).extractText();
    }
console.log(text);
}
extractText();
