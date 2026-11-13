export function searchNormalise(value){return String(value??'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLocaleLowerCase('cs-CZ')}
export function searchTokens(query){return searchNormalise(query).trim().split(/\s+/).filter(Boolean)}
export function searchRecord(record,query){
 const tokens=searchTokens(query);if(!tokens.length)return {matched:true,items:[],inManual:false,snippet:''};
 const matches=text=>tokens.every(t=>searchNormalise(text).includes(t));
 const base=[record.name,record.code,record.category,...record.tags||[]].join(' ');
 const metadata=[base,record.description,record.notes,...(record.groups||[]).flatMap(g=>[g.name,g.description,g.program])].join(' ');
 const items=[];
 (record.groups||[]).forEach((g,groupIndex)=>g.items.forEach((item,itemIndex)=>{
  const local=[g.name,g.description,g.program,item.name,item.originalName,item.label,item.description,...item.tags||[]].join(' ');
  if(tokens.some(t=>searchNormalise(local).includes(t))&&matches(base+' '+local))items.push({groupIndex,itemIndex});
 }));
 const inMetadata=matches(metadata),inManual=matches(base+' '+(record.manualText||''));
 let snippet='';if(inManual&&!items.length&&!inMetadata){const text=String(record.manualText||'').replace(/\s+/g,' ');const normal=searchNormalise(text);const positions=tokens.map(t=>normal.indexOf(t)).filter(i=>i>=0);const at=positions.length?Math.min(...positions):0;snippet=(at>65?'…':'')+text.slice(Math.max(0,at-65),at+180)+(text.length>at+180?'…':'');}
 return {matched:!!(items.length||inMetadata||inManual),items,inManual:inManual&&!inMetadata&&!items.length,snippet};
}
export function highlightSearch(value,query){
 const text=String(value??''),escape=s=>s.replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
 const tokens=searchTokens(query);if(!tokens.length)return escape(text);
 let normal='',starts=[],ends=[],offset=0;for(const char of text){const folded=searchNormalise(char);for(let i=0;i<folded.length;i++){starts.push(offset);ends.push(offset+char.length)}normal+=folded;offset+=char.length;}
 const ranges=[];for(const token of tokens){let from=0,index;while((index=normal.indexOf(token,from))>=0){ranges.push([starts[index],ends[index+token.length-1]]);from=index+Math.max(1,token.length)}}ranges.sort((a,b)=>a[0]-b[0]);
 const merged=[];for(const range of ranges){const last=merged.at(-1);if(last&&range[0]<=last[1])last[1]=Math.max(last[1],range[1]);else merged.push([...range])}
 let out='',pos=0;for(const [start,end] of merged){out+=escape(text.slice(pos,start))+'<mark>'+escape(text.slice(start,end))+'</mark>';pos=end}return out+escape(text.slice(pos));
}
