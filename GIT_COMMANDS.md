# Git Parancsok - Backend GitHub Feltöltés

## Teljes folyamat egyben:

```bash
# 1. Menj a backend mappába
cd C:/Users/USER/beStrong/backend

# 2. Töröld a régi remote-ot (ha van)
git remote remove origin

# 3. Ha még nincs git init, inicializáld
git init

# 4. Add hozzá minden fájlt
git add .

# 5. Commit
git commit -m "Initial commit - Backend for Render deploy"

# 6. Main branch
git branch -M main

# 7. Add remote
git remote add origin https://github.com/PetGregory/beStrong-backend.git

# 8. Push
git push -u origin main
```

## Ha "remote already exists" hibát kapsz:

```bash
git remote set-url origin https://github.com/PetGregory/beStrong-backend.git
```

## Ha "permission denied" hibát kapsz:

- Ellenőrizd, hogy be vagy jelentkezve GitHub-ba
- Használj SSH key-t vagy GitHub Personal Access Token-t

