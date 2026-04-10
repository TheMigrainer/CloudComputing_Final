from flask import Flask, jsonify, request
import time, requests, os, json
from jose import jwt

ISSUER   = os.getenv("OIDC_ISSUER",   "http://authentication-identity-server:8080/realms/master")
AUDIENCE = os.getenv("OIDC_AUDIENCE", "myapp")
JWKS_URL = f"{ISSUER}/protocol/openid-connect/certs"

app = Flask(__name__)

@app.get("/hello")
def hello(): return jsonify(message="Hello from App Server!")

@app.get("/student")
def student():
    try:
        with open("students.json") as f:
            data = json.load(f)
        return jsonify(data)
    except Exception as e:
        return jsonify(error=str(e)), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8081)
