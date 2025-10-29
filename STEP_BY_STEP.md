# Backend GitHub Feltöltés - Lépésről Lépésre

## 🔧 Hiba: "remote origin already exists"

Ez azért van, mert már van egy git remote beállítva. Javítjuk!

## ✅ Megoldás

### 1. Nyisd meg a Git Bash-t

- Windows Start menü → "Git Bash" keresés
- Vagy VS Code-ban: Terminal → New Terminal → Git Bash kiválasztása

### 2. Menj a backend mappába

```bash
cd C:/Users/USER/beStrong/backend
```

### 3. Töröld a régi remote-ot

```bash
git remote remove origin
```

### 4. Add hozzá az új remote-ot

```bash
git remote add origin https://github.com/PetGregory/beStrong-backend.git
```

### 5. Ellenőrizd

```bash
git remote -v
```

Ez mutatnia kell:
```
origin  https://github.com/PetGregory/beStrong-backend.git (fetch)
origin  https://github.com/PetGregory/beStrong-backend.git (push)
```

### 6. Add hozzá a fájlokat (ha még nem tetted)

```bash
git add .
```

### 7. Commit (ha még nem volt)

```bash
git commit -m "Initial commit - Backend for Render"
```

### 8. Main branch beállítása

```bash
git branch -M main
```

### 9. Push (feltöltés)

```bash
git push -u origin main
```

## ⚠️ Ha "permission denied" hibát kapsz

**GitHub-nak kellene kérnie a bejelentkezést:**
1. Username: `PetGregory`
2. Password: **NEM a GitHub jelszó, hanem egy Personal Access Token!**

**Personal Access Token létrehozása:**
1. GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. "Generate new token" → "Generate new token (classic)"
3. Nevezd el: "Render Deploy"
4. Válaszd: `repo` (full control)
5. Generate → **Másold ki a tokent!** (csak egyszer látható)
6. Ezt használd password helyett!

## ✅ Sikeres push után

A GitHub repository-ban látnod kell a fájlokat. Utána Render-ben connect-elheted!

