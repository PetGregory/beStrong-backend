# 🚀 Backend Deploy - Gyors Útmutató

## 1️⃣ GitHub-ra Feltöltés

### Legkönnyebb módszer: GitHub Desktop

1. Letöltés: https://desktop.github.com/
2. File → Add Local Repository
3. Válaszd: `C:\Users\USER\beStrong\backend`
4. Commit: "Initial commit"
5. Publish → Repository: `beStrong-backend`

### Vagy terminálból (Git Bash):

```bash
cd C:/Users/USER/beStrong/backend
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/PetGregory/beStrong-backend.git
git push -u origin main
```

## 2️⃣ Render.com Deploy

1. Render Dashboard: https://dashboard.render.com/
2. "New +" → "Web Service"
3. Connect GitHub → Válaszd: `PetGregory/beStrong-backend`
4. Beállítások:
   - **Root Directory**: *(üresen hagyd)*
   - **Build**: `npm install`
   - **Start**: `npm start`
   - **Plan**: Free
5. Create → Várj 2-3 percet

## 3️⃣ Frontend Frissítés

Miután kész a deploy, Render megad egy URL-t:
```
https://bestrong-backend.onrender.com
```

Frissítsd: `src/environments/environment.prod.ts`:
```typescript
apiUrl: 'https://bestrong-backend.onrender.com/api'
```

Utána:
```bash
npm run build:prod
firebase deploy --only hosting
```

Kész! ✅

