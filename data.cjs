const testCase1 = 'RP12Free Size1Multicolor975181930183_1';
const testCase2 = 'Plane Shirt (Coffe)XL1Coral465968511844_1';

const skuRegex = /^([^\s]+)/;
const sizeRegex = /([\d]+|[A-Za-z]+)/;
const qtyRegex = /([\d]+)/;
const colorRegex = /([A-Za-z]+)/;
const orderNoRegex = /([\d]+_[\d]+)/;

const extractData = (testCase) => {
  const sku = testCase.match(skuRegex)[0];
  const size = testCase.match(sizeRegex)[0];
  const qty = testCase.match(qtyRegex)[0];
  const color = testCase.match(colorRegex)[0];
  const orderNo = testCase.match(orderNoRegex)[0];

  console.log(`SKU: ${sku}`);
  console.log(`Size: ${size}`);
  console.log(`Qty: ${qty}`);
  console.log(`Color: ${color}`);
  console.log(`Order No: ${orderNo}`);
};

extractData(testCase2);
