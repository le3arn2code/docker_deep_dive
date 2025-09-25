# Troubleshooting Notes – Lab 30

1. **apt lock issue**
   - Error: dpkg/apt lock files present due to unattended-upgrades
   - Fix: Kill process, remove locks, run `sudo dpkg --configure -a`

2. **docker compose not found**
   - Install plugin: `sudo apt-get install -y docker-compose-plugin`

3. **pytest not detected**
   - Ensure tests file starts with `test_` and function `test_`
   - Rebuild image after adding `pytest` to requirements.txt

4. **Output shows 'no tests ran'**
   - Usually due to missing `test_` prefix in filename or function name
