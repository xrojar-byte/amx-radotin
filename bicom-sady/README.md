# Bicom sady

Webový katalog testovacích sad s vyhledáváním, filtrováním, detailem barevných skupin a exportem do Excelu. Přehled používá jeden seznam přes celou šířku stránky.

Prohlížení je veřejné. Úpravy vyžadují přihlášeného správce; server ověřuje důvěryhodnou identitu poskytovanou hostingem a proměnnou ADMIN_EMAIL. Tuto proměnnou nastav v prostředí hostingu, nikdy v klientském kódu.

Zdrojový kód neobsahuje skutečný katalog ani dokumenty. Pro vlastní instalaci připrav lokální soubory dat podle src/seed.example.json. Oprávnění odkazovaných souborů se nastavují samostatně.

Sestavení: npm run build. Ověření serveru: npm test.
