# Backend Deployment Guide - Render.com

Ez a dokumentum lépésről lépésre bemutatja, hogyan lehet deployolni a backend-et Render.com-ra.

## Előfeltételek

1. **Render.com Account**: Regisztrálj egy ingyenes accountot a [Render.com](https://render.com/)-on
2. **GitHub Repository**: Töltsd fel a backend kódot GitHub-ra

## Deployment lépései

### 1. GitHub Repository létrehozása

1. Hozz létre egy GitHub repository-t (pl. `beStrong-backend`)
2. Töltsd fel a backend mappát GitHub-ra

### 2. Render.com Projekt létrehozása

1. Jelentkezz be a [Render Dashboard](https://dashboard.render.com/)-ba
2. Kattints a "New +" gombra → "Web Service"
3. Kapcsold össze a GitHub accountodat és válaszd ki a repository-t
4. Töltsd fel a beállításokat:

**Build & Start Commands:**
- **Build Command**: `npm install`
- **Start Command**: `npm start`

**Environment Variables** (ha kell):
- `PORT` - Ezt Render automatikusan beállítja, de ha kell, adj meg egyet
- További változók ha kell a `.env` fájlból

**Plan**: Válaszd az "Free" opciót (amíg tesztelez)

5. Kattints "Create Web Service"

### 3. Environment változók beállítása

Render Dashboard-ban:
1. Menj a "Environment" fülre
2. Add hozzá a szükséges változókat (ha van `.env` fájl)

### 4. Backend URL frissítése

Miután a deployment kész, Render megad egy URL-t (pl. `https://your-app.onrender.com`)

1. Másold ki ezt az URL-t
2. Frissítsd az `src/environments/environment.prod.ts` fájlban:
   ```typescript
   export const environment = {
     production: true,
     apiUrl: 'https://your-app.onrender.com/api'
   };
   ```

### 5. Frontend Deploy

```bash
npm run build:prod
npm run deploy:hosting
```

## Alternatív: Railway.app

Ha Render nem működik, próbáld ki a [Railway.app](https://railway.app/)-ot:

1. Regisztráció a Railway.app-ra
2. "New Project" → "Deploy from GitHub repo"
3. Válaszd ki a backend repository-t
4. Railway automatikusan felismeri a Node.js projektet
5. Deploy automatikus

**Railway URL formátum**: `https://your-app-name.up.railway.app`

## Alternatív: Vercel

Vercel is támogat Node.js backend-et:

1. Regisztráció a [Vercel.com](https://vercel.com/)-ra
2. "Import Project" → Válaszd ki a GitHub repository-t
3. **Fontos**: Adj hozzá egy `vercel.json` fájlt:
   ```json
   {
     "version": 2,
     "builds": [
       {
         "src": "server.js",
         "use": "@vercel/node"
       }
     ],
     "routes": [
       {
         "src": "/(.*)",
         "dest": "server.js"
       }
     ]
   }
   ```

## Fontos Megjegyzések

- **Free tier limits**: Render free tier-en a service idle után "sleep"-el (~15 perc inaktivitás után)
- **Health check**: A backend `/health` endpoint-ot használhatod health check-hez
- **CORS**: A backend már be van állítva CORS-ra, ez működni fog

## Tesztelés

Deploy után teszteld:
```bash
curl https://your-backend-url.onrender.com/health
```

Válasznak `{"status":"OK","timestamp":"..."}`-nak kell lennie.

