const PDFMerger = require('pdf-merger-js');

var merger = new PDFMerger();

const mergePdfs= async (p1,p2) => {
  await merger.add('Flipkart_Test.pdf');  //merge all pages. parameter is the path to file and filename.
  await merger.add('Glowroad_Test.pdf'); // merge only page 2
 
  await merger.save('public/merged.pdf'); 
  
  // Export the merged PDF as a nodejs Buffer
  // const mergedPdfBuffer = await merger.saveAsBuffer();
  // fs.writeSync('merged.pdf', mergedPdfBuffer);
}

module.exports={mergePdfs};