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

## 🛠️ Build it yourself (optional)

If you want to build the image yourself instead of using the prebuilt version, you can do so with Docker:

### 1. Clone the repository

```bash
git clone https://github.com/dennysubke/bip47-verifier-docker.git
cd bip47-verifier-docker
``` 

### 2. Build the Docker image

```bash
docker build -t bip47-verifier-docker .
```

### 3. Run the container

```bash
docker run -p 8080:80 bip47-verifier-docker
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

## 🖼️ Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/510e7389-d33d-4c9e-b787-04128423add0" alt="Screenshot 1" width="30%" />
  <img src="https://github.com/user-attachments/assets/4cf9b1ea-d6c3-4ceb-bdb3-cb6abffb59dc" alt="Screenshot 2" width="30%" />
  <img src="https://github.com/user-attachments/assets/184f8800-fc29-43fd-a96b-61f03e8d79fa" alt="Screenshot 3" width="30%" />
</p>

---

## ☂️ Umbrel

🧩 This app is also available in my Umbrel Community App Store:  
👉 [github.com/dennysubke/dennys-umbrel-app-store](https://github.com/dennysubke/dennys-umbrel-app-store)

---

<br>

💪 Big thanks to [pajasevi (PavelTheCoder)](https://github.com/pajasevi/bip47-verifier) for kicking this off.

<br>⠀⠀⠀

#FREESAMOURAI


