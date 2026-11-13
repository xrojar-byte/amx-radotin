# Bicom sady

Samostatná aplikace ve větvi bicom-sady, adresář bicom-sady/. Ostatní kód AMX se nemění.

Zdrojový kód interní evidence sad, návodů a barevných skupin. Konkrétní soupis ani texty návodů nejsou součástí tohoto veřejného repozitáře. Data běžící aplikace jsou v soukromém úložišti Sites R2.

Pro vlastní běh vytvoř src/seed.json (výchozí [] z src/seed.example.json), .openai/hosting.json s vlastním project_id, d1:null, r2:"BUCKET". Spusť node scripts/build.mjs. Produkční artefakt má Worker ES modul dist/server/index.js a manifest dist/.openai/hosting.json; build přes bash scripts/build.sh. Pro lokální QA použij node scripts/dev.mjs. Lokální úložiště je jen paměťové. Produkce vyžaduje R2 a soukromý přístup spravovaný platformou Sites. Nedávej aplikaci veřejný přístup bez vlastní autentizace a autorizace.

Zápisy kontrolují Origin, schéma a revizi záznamu přes podmíněné R2 ETag. GET /api/sets vrací výchozí záznamy a uložené změny; PUT /api/sets/:id zapisuje celý záznam.

Soubor soupis.xlsx a soubory na Drive slouží jako import a odkazy; automatická synchronizace není součástí první verze.
