# 🏫 CISA — Sistema Inteligente de Control de Aulas y Semestres

## 📘 Descripción General
**CISA** es un sistema web desarrollado para el **Instituto de Educación Superior Tecnológico Público “Chincha”**, cuyo propósito es **gestionar y controlar en tiempo real** el uso de aulas, docentes y semestres mediante **códigos QR** y **autenticación por roles**.

## 🎯 Objetivo del Sistema
El sistema **CISA** permite que los **docentes** del instituto:
- Escaneen un **código QR** ubicado en cada aula.  
- Seleccionen la **carrera** y el **semestre** con el que dictan clase.  
- Registren automáticamente su **asistencia** y la **ocupación del aula**.  

Los **estudiantes** también podrán registrarse en el sistema, aunque **no podrán escanear códigos QR**.  

Un **administrador** (por ejemplo, el **coordinador académico**) tendrá acceso a un **panel de control** donde podrá visualizar:
- Qué docentes están en qué aulas.  
- Con qué semestre y carrera están dictando clase.  
- En qué momento se encuentran ocupadas las aulas.

## 👥 Roles de Usuario
- **Administrador:** gestiona usuarios, aulas y carreras; visualiza en tiempo real el uso de aulas.  
- **Docente:** escanea códigos QR y registra su asistencia con datos de clase.  
- **Estudiante:** puede registrarse y visualizar información general del sistema.  

## 🛠️ Tecnologías Utilizadas
- **Backend:** PHP (MVC)  
- **Base de datos:** MySQL  
- **Frontend:** HTML, CSS, JavaScript (AJAX)  
- **Autenticación:** por roles (Administrador, Docente, Estudiante)  
- **Integraciones:** Generación y lectura de **códigos QR**  

## 🧩 Funcionalidades Principales
- Registro y autenticación de usuarios.  
- Escaneo de QR para registrar asistencia docente.  
- Visualización en tiempo real del uso de aulas.  
- Control de carreras y semestres activos.  
- Panel de administración intuitivo y adaptable.  

## 🚀 Futuras Mejoras
- Módulo de asistencia estudiantil.  
- Reportes estadísticos mensuales.  
- Integración con notificaciones por correo o app móvil.

## ⚙️ Instalación y Configuración
1. Clona este repositorio:  
   ```bash
   git clone https://github.com/tuusuario/cisa.git
