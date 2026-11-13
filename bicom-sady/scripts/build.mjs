import fs from 'node:fs';
const seed=JSON.parse(fs.readFileSync('src/seed.json','utf8'));
const html=fs.readFileSync('src/index.html','utf8').replace('__XLSX_EXPORT__',fs.readFileSync('src/xlsx.js','utf8').replace('export function buildWorkbook','function buildWorkbook'));
const server=fs.readFileSync('src/server.js','utf8').replace('__SEED__',JSON.stringify(seed)).replace('__HTML__',JSON.stringify(html));
fs.mkdirSync('worker',{recursive:true});fs.writeFileSync('worker/index.js',server);
