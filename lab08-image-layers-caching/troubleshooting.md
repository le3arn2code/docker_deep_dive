# Troubleshooting – Lab 8

## Issue 1: COPY failed: no source files were specified
- Ensure `package.json` and `package-lock.json` exist in build context.
- This lab includes dummy files so build works even without a real Node.js app.

## Issue 2: Build too slow
- Keep frequently changing code (COPY . .) at the bottom of the Dockerfile.

## Issue 3: Cache not used
- Even minor changes in earlier layers invalidate later ones.

## Issue 4: npm install fails
- If using a real app, ensure package.json is valid.

## Issue 5: "node:14 not found"
- Check internet/Docker Hub connectivity.
