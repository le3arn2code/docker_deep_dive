# Troubleshooting Notes

## Errors Encountered
1. **Branch mismatch**
   - GitHub Actions expected `main` branch.
   - Fixed by ensuring workflows tracked `main`.

2. **Git author config error**
   - Error: `fatal: empty ident name`
   - Resolved by setting global git username and email.

3. **Secrets setup**
   - DockerHub credentials missing.
   - Added `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` in repo secrets.

4. **Token scope error**
   - GitHub token lacked `read:org`, `repo`, `workflow`.
   - Generated correct PAT with scopes.

5. **Port conflict**
   - Error: `Bind for 0.0.0.0:5000 failed: port is already allocated`
   - Fixed by mapping container to alternate port `5001`.

6. **Builder warning**
   - GitHub Actions auto-cleanup warnings appeared but didn’t block the build.

## Key Fixes
- Used `gh run view <run_id> --log` to debug failed workflows.
- Adjusted DockerHub tokens to proper permissions.
- Verified image on DockerHub before pulling locally.
