# BIP47 Message Verifier

Verify messages signed with a BIP47 payment code.  
Use this tool to confirm that a message was signed by the owner of a specific PayNym (Samourai / Ashigaru).

---

## 🐳 Run with Docker Compose

This app can be started easily using Docker Compose.  

### 1. Create a `docker-compose.yml` file

```yaml
version: "3.8"

services:
  verifier:
    image: dennysubke/bip47-verifier:1.0.0@sha256:cb4099f9991927d1edc3bf444b34cff7352a815e513fdbad5044c68d76d698b2
    restart: on-failure
    ports:
      - "8080:80"
```

### 2. Start the app

```bash
docker-compose up -d
```

The app will now be available at:  
👉 [http://localhost:8080](http://localhost:8080)

---

## 📝 Usage

You’ll see three fields:

1. **Payment Code** – the BIP47 PayNym you want to verify.
2. **Message** – any text message that was signed.
3. **Signature Code** – the signature to verify.

Click **Verify** and you’ll immediately know if the signature is valid for that PayNym.

---

💪 Big thanks to [pajasevi (PavelTheCoder)](https://github.com/pajasevi/bip47-verifier) for kicking this off.


