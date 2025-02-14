#!/bin/bash

echo "🔒 Aplicando medidas de hardening en Linux..."

# Deshabilitar el acceso root por SSH
echo "Deshabilitando root en SSH..."
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh

# Aplicar reglas estrictas de firewall con UFW
echo "Configurando firewall con reglas seguras..."
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow http
ufw allow https
ufw enable

# Deshabilitar ICMP para evitar reconocimiento de red
echo "Bloqueando ICMP para ocultar el servidor..."
echo "net.ipv4.icmp_echo_ignore_all=1" >> /etc/sysctl.conf
sysctl -p

# Configurar Fail2Ban para prevenir ataques de fuerza bruta
echo "Instalando y configurando Fail2Ban..."
apt-get install fail2ban -y
systemctl enable fail2ban
systemctl start fail2ban

# Deshabilitar servicios innecesarios
echo "Deshabilitando servicios inseguros..."
systemctl disable avahi-daemon
systemctl stop avahi-daemon

# Refuerzo de permisos en archivos clave
echo "Reforzando permisos en archivos críticos..."
chmod 600 /etc/shadow
chmod 600 /etc/gshadow
chmod 700 /root

echo "✅ Hardening completado con éxito."
