# 📚 CESDE Cursos – Aplicación Web

Aplicación web para la **gestión de cursos y docentes** ofrecidos por CESDE, desarrollada con:

- ⚙️ **Backend**: Spring Boot + Oracle XE
- 💻 **Frontend**: React + Axios + TailwindCSS + React Hook Form

---

## 🛠 Requisitos

### Backend
- Java 17 o superior
- Maven 3.6+
- Oracle XE instalado y activo
- Usuario Oracle: `hr` / `hr` (desbloqueado)
- Puerto libre `8081`

### Frontend
- Node.js (v16 o v18 recomendado)
- NPM

---

## 🚀 Instalación y ejecución

### 1. Clonar o descargar el repositorio

```bash
git clone https://github.com/tu-usuario/cesde-cursos.git
cd cesde-cursos
```

### 2. Backend – Spring Boot

1. Importa el proyecto en Visual Studio Code o IntelliJ
2. Asegúrate de tener creado el usuario `hr` en Oracle XE
3. Ejecuta este SQL si aún no existen las secuencias:

```sql
CREATE SEQUENCE curso_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE docente_seq START WITH 1 INCREMENT BY 1;
```

4. Corre el backend:

```bash
mvn clean spring-boot:run
```

> Accesible en: `http://localhost:8081/api`

---

### 3. Frontend – React

1. Abre terminal en la carpeta del frontend
2. Instala dependencias:

```bash
npm install
```

3. Ejecuta:

```bash
npm start
```

> Abre `http://localhost:3000` en tu navegador

---

## ✅ Funcionalidades

- Crear cursos con:
  - Nombre, descripción, duración, precio, docente asignado
- Registrar docentes
- Filtros de búsqueda:
  - Por nombre del curso
  - Por duración
  - Por nombre del docente
- Validación de formularios con `react-hook-form`
- Estilizado con TailwindCSS
- Responsive + buen manejo de UX/UI

---

## 📂 Estructura

```
cesde-cursos/
├── backend/
│   └── Spring Boot + Oracle
└── frontend/
    └── React + TailwindCSS
```

---

## 👨‍💻 Autor

- ✍️ Proyecto desarrollado por [Alex Orozco]
- Cesde – Ingeniería de Sistemas
