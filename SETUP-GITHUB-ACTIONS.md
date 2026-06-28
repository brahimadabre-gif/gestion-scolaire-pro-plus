# Instructions pour créer le workflow GitHub Actions

## Étape 1 : Créer le dossier
```
.github/workflows/
```

## Étape 2 : Créer le fichier `build-exe.yml` avec ce contenu :

```yaml
name: Build and Release Windows EXE

on:
  push:
    branches: [ main ]
  workflow_dispatch:

jobs:
  build:
    runs-on: windows-latest
    permissions:
      contents: write

    steps:
    - name: Checkout code
      uses: actions/checkout@v4

    - name: Setup Node.js
      uses: actions/setup-node@v4
      with:
        node-version: '18'
        cache: 'npm'

    - name: Install dependencies
      run: npm install

    - name: Build Windows EXE
      run: npm run dist:win

    - name: List built files
      run: dir dist\*.exe

    - name: Create Release
      uses: softprops/action-gh-release@v1
      if: success()
      with:
        files: dist/*.exe
        tag_name: v${{ github.run_number }}
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Étape 3 : Commit et Push

```bash
git add .github/workflows/build-exe.yml
git commit -m "Add GitHub Actions workflow for EXE compilation"
git push
```

✅ Le workflow s'exécutera automatiquement à chaque push !
