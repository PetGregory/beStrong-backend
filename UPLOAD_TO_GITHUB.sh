#!/bin/bash
# Backend GitHub Upload Script
# Futtasd ezt a script-et a backend mappában

echo "========================================"
echo "Backend GitHub Upload Script"
echo "========================================"
echo ""

# Töröld a régi remote-ot ha van
echo "1. Removing old remote..."
git remote remove origin 2>/dev/null

# Inicializálás ha nincs git repo
if [ ! -d ".git" ]; then
    echo "2. Initializing git repository..."
    git init
fi

# Remote hozzáadása
echo "3. Adding remote..."
git remote add origin https://github.com/PetGregory/beStrong-backend.git

# Fájlok hozzáadása
echo "4. Adding files..."
git add .

# Commit
echo "5. Creating commit..."
git commit -m "Initial commit - Backend ready for Render deploy"

# Main branch
echo "6. Setting main branch..."
git branch -M main

# Remote ellenőrzés
echo ""
echo "7. Remote check:"
git remote -v

echo ""
echo "========================================"
echo "Ready to push!"
echo "========================================"
echo ""
echo "Now run:"
echo "  git push -u origin main"
echo ""
echo "If asked for credentials:"
echo "  Username: PetGregory"
echo "  Password: GitHub Personal Access Token"
echo ""

