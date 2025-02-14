# Secure Server Configs

Este repositorio contiene configuraciones y scripts de seguridad para reforzar servidores Linux, Windows y entornos Docker. Diseñado para fortalecer la seguridad desde el primer momento, incluye configuraciones de hardening, reglas de firewall y ajustes para minimizar vulnerabilidades.

## 📂 Estructura del Repositorio

```
Secure-Server-Configs/
│── Linux/
│   ├── hardening-ubuntu.conf         # Configuración de seguridad para Ubuntu
│   ├── firewall-rules.sh             # Reglas de firewall y bloqueo de tráfico
│   ├── hardening-linux.sh            # Script de automatización para refuerzo de seguridad
│── Windows/
│   ├── hardening-windows.reg         # Configuración de seguridad en Registro de Windows
│   ├── hardening-windows.ps1         # Script automatizado de seguridad en PowerShell
│── Docker/
│   ├── secure-dockerfile.conf        # Dockerfile con configuración segura
│   ├── hardening-docker.sh           # Script de refuerzo de seguridad en contenedores Docker
│── README.md                         # Documentación principal
```

---

## 🔒 Hardening en Linux

### **1. Configuración de Seguridad en `hardening-ubuntu.conf`**
- Deshabilita `root` por SSH.
- Configura reglas estrictas en `sysctl`.
- Habilita `fail2ban` para proteger contra ataques de fuerza bruta.
- Establece reglas de firewall restrictivas con `ufw`.

### **2. Aplicación de Seguridad con `hardening-linux.sh`**
Ejecutar el script:
```bash
chmod +x hardening-linux.sh
sudo ./hardening-linux.sh
```
---

## 🛡️ Hardening en Windows

### **1. Configuración Segura en `hardening-windows.reg`**
- Desactiva SMBv1 para prevenir ataques como WannaCry.
- Bloquea el acceso remoto al registro.
- Deshabilita la ejecución de macros en Office.
- Restringe scripts en PowerShell.

### **2. Aplicación de Seguridad con `hardening-windows.ps1`**
Ejecutar en PowerShell como Administrador:
```powershell
Set-ExecutionPolicy Unrestricted -Scope Process
.\hardening-windows.ps1
```
---

## 🏢 Seguridad en Docker

### **1. Dockerfile Seguro en `secure-dockerfile.conf`**
- Utiliza un usuario restringido (`secureuser`).
- Aplica `AppArmor` y `Seccomp` para limitar permisos.
- Bloquea el acceso a `root`.

### **2. Aplicación de Seguridad en Contenedores con `hardening-docker.sh`**
Ejecutar:
```bash
chmod +x hardening-docker.sh
sudo ./hardening-docker.sh
```
---

## 💜 Licencia
Este proyecto está bajo la licencia MIT. ¡Úsalo y contribuye!

---

## ✉️ Contacto
Si tienes sugerencias o mejoras, ¡contáctame!
