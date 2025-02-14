### README.md

# Secure Server Configs

Este repositorio contiene configuraciones de seguridad para entornos Linux, Windows y Docker.

## Estructura

- `Linux/` → Configuraciones de endurecimiento de seguridad para servidores Linux.
- `Windows/` → Configuración de hardening en el registro de Windows.
- `Docker/` → Dockerfile seguro con permisos restringidos.

## Uso

1. **Linux:** Aplicar las configuraciones en `/etc/security/` y reiniciar los servicios correspondientes.
2. **Windows:** Ejecutar `hardening-windows.reg` para aplicar políticas de seguridad.
3. **Docker:** Construir el contenedor con `docker build -t secure-image .`

## Seguridad Adicional

- **Windows:** Bloqueo de ejecución de scripts en PowerShell.
- **Linux:** Configuración de Fail2Ban y deshabilitación de ICMP.
- **Docker:** Uso de AppArmor y Seccomp para restringir permisos.
