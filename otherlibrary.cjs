const pdfExtract = require('pdf-extract');
const options = {
  type: 'text' 
}
pdfExtract('MADHO_TEST (3).pdf', options, function (err, text) {
  if (err) {
    console.dir(err)
    return
  }
  console.log(text)
})
