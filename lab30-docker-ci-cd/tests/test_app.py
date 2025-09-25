# tests/test_app.py

import requests
import time

# Give the container time to boot
time.sleep(5)

def test_homepage():
    resp = requests.get("http://web:5000")
    assert resp.status_code == 200
    assert "Hello from Flask + Redis" in resp.text
