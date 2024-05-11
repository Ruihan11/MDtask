const puppeteer = require('puppeteer');
const path = require('path');

async function htmlToPng() {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  // 构建文件路径
  const filePath = `file://${path.join(__dirname, 'task.html')}`;

  // 使用 page.goto() 加载本地 HTML 文件
  await page.goto(filePath, { waitUntil: 'networkidle0' });  // 确保页面完全加载

  await page.screenshot({path: 'task.png'});
  await browser.close();
}

htmlToPng();
