```bash
#!/bin/bash

# Crear usuario seguro
groupadd -r securegroup && useradd -r -g securegroup secureuser

# Aplicar permisos de seguridad
chmod 700 /app
chmod 750 /root

# Aplicar AppArmor y Seccomp
apt-get install -y apparmor seccomp
echo "docker-default" > /etc/apparmor.d/disable

# Ejecutar contenedor con usuario restringido
su secureuser -c "/app/start.sh"

echo "Hardening en Docker aplicado correctamente."
```
