# app.py – Flask app with Redis

from flask import Flask
import redis

app = Flask(__name__)
r = redis.Redis(host='redis', port=6379)

@app.route('/')
def hello():
    return "Hello from Flask + Redis in CI/CD pipeline!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
