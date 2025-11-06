CREATE DATABASE IF NOT EXISTS cisa CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cisa;

-- Usuarios
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  correo VARCHAR(150) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  rol ENUM('docente','estudiante','admin') NOT NULL DEFAULT 'estudiante',
  creado_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Carreras
CREATE TABLE carreras (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

-- Semestres (un semestre pertenece a una carrera)
CREATE TABLE semestres (
  id INT AUTO_INCREMENT PRIMARY KEY,
  numero VARCHAR(30) NOT NULL,
  id_carrera INT NOT NULL,
  FOREIGN KEY (id_carrera) REFERENCES carreras(id) ON DELETE CASCADE
);

-- Relación docente <-> carreras y semestres que dicta
CREATE TABLE docente_carrera_semestre (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_docente INT NOT NULL,
  id_carrera INT NOT NULL,
  id_semestre INT NOT NULL,
  FOREIGN KEY (id_docente) REFERENCES usuarios(id) ON DELETE CASCADE,
  FOREIGN KEY (id_carrera) REFERENCES carreras(id) ON DELETE CASCADE,
  FOREIGN KEY (id_semestre) REFERENCES semestres(id) ON DELETE CASCADE
);

-- Aulas
CREATE TABLE aulas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  ubicacion VARCHAR(150),
  codigo_qr TEXT, -- puede almacenar la URL o el contenido del QR
  creado_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Registros de clases (asistencia docente / ocupación aulas)
CREATE TABLE registros (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_docente INT NOT NULL,
  id_aula INT NOT NULL,
  id_carrera INT NOT NULL,
  id_semestre INT NOT NULL,
  hora_entrada DATETIME NOT NULL,
  hora_salida DATETIME NULL,
  creado_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_docente) REFERENCES usuarios(id) ON DELETE CASCADE,
  FOREIGN KEY (id_aula) REFERENCES aulas(id) ON DELETE CASCADE,
  FOREIGN KEY (id_carrera) REFERENCES carreras(id) ON DELETE CASCADE,
  FOREIGN KEY (id_semestre) REFERENCES semestres(id) ON DELETE CASCADE
);
