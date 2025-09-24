# Lab 2 – Installing Docker on Your Machine

## 🎯 Objectives
- Understand the steps necessary to install Docker on your operating system.
- Verify the successful installation of Docker.
- Ensure that Docker daemon is running properly.

## 📋 Prerequisites
- A computer with either Windows, macOS, or a Linux distribution.
- Internet access for downloading Docker.
- Basic command-line skills.

---

## 📝 Lab Tasks

### Task 1: Installing Docker

#### 1.1 Install Docker on Windows
1. Go to the Docker Desktop for Windows download page.  
2. Run **Docker Desktop Installer.exe**.  
3. Follow the installation wizard.  
4. Ensure Windows 10 Pro/Enterprise with Hyper-V enabled.

#### 1.2 Install Docker on macOS
1. Visit the Docker Desktop for Mac download page.  
2. Open the downloaded **Docker.dmg** and drag Docker to Applications.  
3. Start Docker from Applications.

#### 1.3 Install Docker on Linux (Ubuntu Example)
```bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
```

---

### Task 2: Verifying Docker Installation

```bash
docker --version
docker info
```

---

### Task 3: Confirm Docker Daemon is Running

- **Windows/macOS:** Look for the Docker icon in system tray.  
- **Linux:**  
```bash
systemctl status docker
```

---

## ✅ Conclusion
You have:
- Installed Docker on your machine.  
- Verified installation with `docker --version` and `docker info`.  
- Confirmed Docker daemon is running.  

Now you are ready to start working with containers!
