import fs from 'node:fs';
const guides=fs.existsSync('src/guides.json')?JSON.parse(fs.readFileSync('src/guides.json','utf8')):{};
for(const g of Object.values(guides)){g.base64=fs.readFileSync(g.pdfPath).toString('base64');delete g.pdfPath;}
const seed=JSON.parse(fs.readFileSync('src/seed.json','utf8'));
const html=fs.readFileSync('src/index.html','utf8').replace('__XLSX_EXPORT__',fs.readFileSync('src/xlsx.js','utf8').replace('export function buildWorkbook','function buildWorkbook'));
const searchSource=fs.readFileSync('src/search.js','utf8').replaceAll('export function ','function ');
const finalHtml=html.replace('__SEARCH_HELPERS__',searchSource);
const server=fs.readFileSync('src/server.js','utf8').replace('__GUIDES__',JSON.stringify(guides)).replace('__SEED__',JSON.stringify(seed)).replace('__RESOURCES__',(fs.existsSync('src/resources.json')?fs.readFileSync('src/resources.json','utf8'):'[]')).replace('__HTML__',JSON.stringify(finalHtml));
fs.mkdirSync('worker',{recursive:true});fs.writeFileSync('worker/index.js',server);
