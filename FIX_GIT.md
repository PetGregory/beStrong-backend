# Git Remote Hiba Javítás

Ha "remote origin already exists" hibát kapsz:

## Megoldás:

Nyisd meg a **Git Bash**-t (vagy terminált Git-tel) és futtasd:

```bash
cd C:/Users/USER/beStrong/backend

# 1. Ellenőrizd a jelenlegi remote-ot
git remote -v

# 2. Töröld a régi remote-ot
git remote remove origin

# 3. Add hozzá az új remote-ot
git remote add origin https://github.com/PetGregory/beStrong-backend.git

# 4. Ellenőrizd
git remote -v

# 5. Add hozzá a fájlokat (ha még nincs commit)
git add .

# 6. Commit (ha még nincs)
git commit -m "Initial commit - Ready for Render"

# 7. Push
git branch -M main
git push -u origin main
```

Ha még nincs git repository inicializálva:

```bash
cd C:/Users/USER/beStrong/backend
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/PetGregory/beStrong-backend.git
git push -u origin main
```

