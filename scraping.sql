-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.31 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla scraping.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla scraping.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla scraping.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla scraping.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_11_15_110947_create_posts_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla scraping.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla scraping.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla scraping.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla scraping.posts: ~60 rows (aproximadamente)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `location`, `description`, `url`, `is_published`, `created_at`, `updated_at`) VALUES
	(1, 'Desarrollador / DevOp', 'Recruitingmsa Salta, Salta', 'Se busca Desarrollador / DevOp con experiencia en Linux para: Desarrollar scripts de automatización de entornos de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-devop-con-experiencia-en-linux-en-salta-62B745868A46895961373E686DCF3405', 1, '2021-11-15 23:11:02', '2021-11-16 12:10:50'),
	(2, 'Desarrollador / DevOp', 'Recruitingmsa Córdoba, Cordoba', 'Se busca Desarrollador / DevOp con experiencia en Linux para: Desarrollar scripts de automatización de entornos de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-devop-con-experiencia-en-linux-en-cordoba-AF91B324AA29A83461373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(3, 'Programadores', 'Recruitingmsa Buenos Aires, La Plata', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-la-plata-9CC3CC0CC1D5E32C61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(4, 'Desarrollador / DevSecOp', 'Recruitingmsa Buenos Aires, Bahía Blanca', 'Se busca Desarrollador / DevSecOp con experiencia en Linux para: Desarrollar scripts de automatización de entornos de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-devsecop-con-experiencia-en-linux-en-bahia-blanca-CBF7DD599FA3B60C61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(5, 'Programadores', 'Recruitingmsa Entre Ríos, Paraná', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-parana-95DF48DA7DB9CDC261373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(6, 'Programadores', 'Recruitingmsa Santa Fe, Rosario', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-rosario-ED8537ABB3C36EEC61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(7, 'Programadores', 'Recruitingmsa Neuquén, Neuquen', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-neuquen-4B05C7728EC944BD61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(8, 'Programadores', 'Recruitingmsa Misiones, Posadas', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-posadas-7E63719FD033C55961373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(9, 'Programadores', 'Recruitingmsa Río Negro, Bariloche', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-bariloche-2175D0C972D73C9861373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(10, 'Programadores', 'Recruitingmsa San Juan, San Juan', 'Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-san-juan-34F69E119CA249DA61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(11, 'Programadores', 'Recruitingmsa Córdoba, Cordoba', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-cordoba-E22D370E6E28291861373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(12, 'Programadores', 'Recruitingmsa Salta, Salta', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-salta-53CB4503B1E5CBB261373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(13, 'Ref. 13491: Soporte Técnico IT', 'ADN - Recursos Humanos ★ 3,7 Capital Federal, Balvanera', 'ADN - Recursos Humanos estamos en la búsqueda de un Soporte Técnico ITpara importante empresa. Técnico informático con...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-ref-13491-soporte-tecnico-it-con-licencia-vigente-minimo-1-ano-de-antiguedad-en-balvanera-20CF5C3A9F39D42E61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(14, 'Ref. 14071 Administrador Windows', 'ADN - Recursos Humanos ★ 3,7 Capital Federal, Recoleta', 'ADN - Recursos Humanos estamos en la búsqueda de un Administrador Windows Semi Sr para Importante Empresa de Servicios...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-ref-14071-administrador-windows-semi-sr-en-recoleta-B61BDA986EBFF45261373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(15, 'Administrador de Redes (Networking)', 'ManpowerGroup ★ 4,1 Buenos Aires-GBA, San Isidro', 'En Experis nos encontramos en la busqueda de un Administrador de Redes, con experiencia en dicho rol y uso cotidiano...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-administrador-de-redes-networking-san-isidro-o-bahia-blanca-en-san-isidro-7D99C5DB0B53D8DC61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(16, '4316 AG Full Stack Python Developer Sr', 'Gestion Compartida ★ 3,7 Capital Federal, Barracas', 'Contenido que recomendamos que incluyas en este área: funciones específicas del aviso con palabras clave, perfil...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-4316-ag-full-stack-python-developer-sr-en-barracas-D4E1CE203B5D476461373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(17, 'Programadores', 'Recruitingmsa Tucumán, San Miguel de Tucumán', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-san-miguel-de-tucuman-632613CD618B41F161373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(18, 'Programadores', 'Recruitingmsa Chubut, Pto. Madryn', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-pto-madryn-04EE4AF3E398515261373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(19, 'Programadores', 'Recruitingmsa Corrientes, Corrientes', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-corrientes-A30F0B6A2D09AEEB61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(20, 'Analista Técnico Funcional', 'C&S informática s.a. ★ 3,9 Buenos Aires-GBA, Martínez', 'Estamos en búsqueda de un Analista Técnico Funcional Jr/SSr/Sr para importante Entidad Bancaria d ela zona de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analista-tecnico-funcional-importante-empresa-de-tecnologia-en-martinez-BAC21D900EDCECAE61373E686DCF3405', 0, '2021-11-15 23:11:02', '2021-11-15 23:11:02'),
	(21, 'Analista Funcional Tester', 'C&S informática s.a. ★ 3,9 Capital Federal, San Nicolás', 'En esta oportunidad estamos buscando un/a Analista funcional/Tester para sumarse a importante empresa. El candidato...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analista-funcional-tester-importante-empresa-de-tecnologia-en-san-nicolas-94EC8AC88A6D046761373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(22, 'Analistas Funcionales', 'C&S informática s.a. ★ 3,9 Capital Federal, San Nicolás', 'At C & S we are looking for an Funcional Analyst to join a work team for an important Banking Entity in the CABA...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analistas-funcionales-importante-entidad-financiera-zona-microcentro-en-san-nicolas-5AB2DA8A2E5B531B61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(23, 'Programadores', 'Recruitingmsa Jujuy, San Salvador', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-programadores-resolve-el-desafio-en-san-salvador-6EEAB6FF6177A6C361373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(24, 'Desarrolladores', 'Recruitingmsa Buenos Aires, Bahía Blanca', '¡Desafío para desarrolladores! Si te interesa participar postulate a la búsqueda, para luego poder enviar la solución...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrolladores-resolve-el-desafio-en-bahia-blanca-A3C7C4AB7505ECE661373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(25, 'Estudiantes de Sistemas o carreras afines', 'Estrategia Laboral SA ★ 3,9 Buenos Aires-GBA, Olivos', 'Buscamos estudiantes de Sistemas o carreras afines, con ganas de crecer y desarrollarse en una empresa de primer...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-estudiantes-de-sistemas-o-carreras-afines-en-olivos-59D6B6C30811998B61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(26, 'Tasks Management Specialist / Remote Work / Ref. 0073', 'BairesDev ★ 4,5 Mendoza, Mendoza', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-tasks-management-specialist-remote-work-ref-0073-en-mendoza-04A4BA2C915F79C161373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(27, 'Tasks Management Specialist / Remote Work / Ref. 0073', 'BairesDev ★ 4,5 Córdoba, Cordoba', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-tasks-management-specialist-remote-work-ref-0073-en-cordoba-76383E447D21BDB561373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(28, 'Tasks Management Specialist / Remote Work / Ref. 0073', 'BairesDev ★ 4,5 Buenos Aires-GBA, Vicente López', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-tasks-management-specialist-remote-work-ref-0073-en-vicente-lopez-03E3D5CDD28438E061373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(29, 'Tasks Management Specialist / Remote Work / Ref. 0073', 'BairesDev ★ 4,5 Capital Federal, San Nicolás', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-tasks-management-specialist-remote-work-ref-0073-en-san-nicolas-328597D8ED0DA10661373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(30, '.NET Tech Lead / Remote Work / Ref. 0001', 'BairesDev ★ 4,5 Mendoza, Mendoza', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-net-tech-lead-remote-work-ref-0001-en-mendoza-1555BF3AD813D4A461373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(31, '.NET Tech Lead / Remote Work / Ref. 0001', 'BairesDev ★ 4,5 Córdoba, Cordoba', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-net-tech-lead-remote-work-ref-0001-en-cordoba-0121A2A1468FB91061373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(32, '.NET Tech Lead / Remote Work / Ref. 0001', 'BairesDev ★ 4,5 Buenos Aires-GBA, Vicente López', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-net-tech-lead-remote-work-ref-0001-en-vicente-lopez-1AA7D73846380BB761373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(33, '.NET Tech Lead / Remote Work / Ref. 0001', 'BairesDev ★ 4,5 Capital Federal, San Nicolás', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-net-tech-lead-remote-work-ref-0001-en-san-nicolas-18413420445396CD61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(34, 'React Tech Lead / Remote Work / Ref. 0169', 'BairesDev ★ 4,5 Mendoza, Mendoza', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-react-tech-lead-remote-work-ref-0169-en-mendoza-88BCCC99F3CA629B61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(35, 'React Tech Lead / Remote Work / Ref. 0169', 'BairesDev ★ 4,5 Córdoba, Cordoba', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-react-tech-lead-remote-work-ref-0169-en-cordoba-C1882601294200FB61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(36, 'React Tech Lead / Remote Work / Ref. 0169', 'BairesDev ★ 4,5 Buenos Aires-GBA, Vicente López', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-react-tech-lead-remote-work-ref-0169-en-vicente-lopez-0C4E53710BF5E4A461373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(37, 'React Tech Lead / Remote Work / Ref. 0169', 'BairesDev ★ 4,5 Capital Federal, San Nicolás', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-react-tech-lead-remote-work-ref-0169-en-san-nicolas-4B9C6AA44815D05861373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(38, 'OKRs Specialist / Remote Work / Ref. 0063', 'BairesDev ★ 4,5 Mendoza, Mendoza', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-okrs-specialist-remote-work-ref-0063-en-mendoza-4A1FF95F4AA634CC61373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(39, 'OKRs Specialist / Remote Work / Ref. 0063', 'BairesDev ★ 4,5 Córdoba, Cordoba', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-okrs-specialist-remote-work-ref-0063-en-cordoba-F2EFDB23CFFF38B461373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(40, 'OKRs Specialist / Remote Work / Ref. 0063', 'BairesDev ★ 4,5 Buenos Aires-GBA, Vicente López', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-okrs-specialist-remote-work-ref-0063-en-vicente-lopez-2186415E2BBBEC9261373E686DCF3405', 0, '2021-11-15 23:11:06', '2021-11-15 23:11:06'),
	(41, 'OKRs Specialist / Remote Work / Ref. 0063', 'BairesDev ★ 4,5 Capital Federal, San Nicolás', 'Who we are BairesDev is proud to be the fastest-growing company in America. With people in five continents and...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-okrs-specialist-remote-work-ref-0063-en-san-nicolas-91E2ED888B61DCDE61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(42, 'Analista Programador Jr. WEB', 'HV Talent ★ 3,4 Capital Federal, Barracas', 'Importante empresa multinacional proveedora de insumos tecnológicos e informáticos, nos encomendó la búsqueda de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analista-programador-jr-web-en-barracas-0A5033305E84BE2661373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(43, 'Analista de Seguridad Informatica', 'Ecosistemas ★ 3,6 Capital Federal, Retiro', 'En Ecosistemas nos encontramos en la búsqueda de un Analista de Seguridad Informática para una empresa internacional...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analista-de-seguridad-informatica-25021-en-retiro-EE053E274EB24B0C61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(44, 'Desarrollador .Net Srr/Sr', 'Ecosistemas ★ 3,6 Capital Federal, Parque Patricios', 'Ecosistemas se encuentra en la búsqueda de un Desarrollador Visual Basic Ssr/Sr para sumarse al equipo de nuestro...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-net-srrsr-ref-37421-en-parque-patricios-B31C2D64B900DCFF61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(45, 'Ref. 13014 Soporte Técnico telefónico y on site', 'ADN - Recursos Humanos ★ 3,7 Buenos Aires-GBA, Quilmes', 'ADN - Recursos Humanos estamos en la búsqueda de un Soporte Técnico telefónico y on site con conocimientos de linux y...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-ref-13014-soporte-tecnico-telefonico-y-on-site-linux-y-netwoking-ipv4-excluyente-en-quilmes-3F31E1552528074A61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(46, 'Ref. 13900: Administrador de Servidores Windows y Linux', 'ADN - Recursos Humanos ★ 3,7 Buenos Aires-GBA, Olivos', 'ADN - Recursos Humanos estamos en la búsqueda de un Administrador de Servidores Windows y Linux para Importante...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-ref-13900-administrador-de-servidores-windows-y-linux-en-olivos-70182AD83D46E76661373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(47, 'M Analista funcional Ssr', 'Grupo Gestión ★ 3,8 Buenos Aires-GBA, Moreno', 'Importante logística ubicada en Gral. Rodriguez se encuentra en la búsqueda de un Analista funcional Ssr para trabajar...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-m-analista-funcional-ssr-gral-rodriguez-en-moreno-BD1E7A42AEB32B8561373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(48, 'Desarrollador de Automatización de Reconciliaciones SSr', 'C&S informática s.a. ★ 3,9 Buenos Aires-GBA, Martínez', 'Estamos en busqueda de un Desarrollador Semi-Senior de Automatización de Reconciliaciones para Importante Entidad...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-de-automatizacion-de-reconciliaciones-ssr-importante-entidad-bancaria-martinez-en-martinez-CD03A2D14DA898D261373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(49, 'Administrador Base de Datos Oracle Senior', 'C&S informática s.a. ★ 3,9 Capital Federal, San Nicolás', 'En nuestra empresa nos encontramos en la búsqueda de un Administrador Base de Datos Oracle Senior, para un importante...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-administrador-base-de-datos-oracle-senior-importante-empresa-en-tecnologia-en-san-nicolas-49714751E55F37D961373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(50, 'Analista Programador Jr. Delphi', 'HV Talent ★ 3,4 Capital Federal, Barracas', 'Importante empresa multinacional proveedora de insumos tecnológicos e informáticos, nos encomendó la búsqueda de un...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-analista-programador-jr-delphi-en-barracas-040915F8B20B120B61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(51, 'Web Developer Full Stack', 'DoctasRH ★ 5,0 Córdoba, Cordoba', 'Nos encontramos en la búsqueda de un Web Developer Full Stack para importante empresa tecnológica en pleno crecimiento...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-web-developer-full-stack-importante-empresa-tecnologica-en-plena-expansion-en-cordoba-CD92ECFFCF8BD0B061373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(52, 'Desarrollador UX/UI', 'DoctasRH ★ 5,0 Córdoba, Cordoba', 'Nos encontramos en la búsqueda de UX/UI para importante empresa tecnológica en pleno crecimiento con proyectos...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-uxui-importnte-empresa-tecnologica-en-plena-expansion-en-cordoba-3A3C654346B0EB6A61373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(53, 'Consultor / Implementador Payroll', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH nos encontramos en búsqueda de Consultor / Implementador Payroll para reconocida empresa dedicada al...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-consultor-implementador-payroll-zona-microcentro-caba-en-monserrat-5529CCCBFCBBF86061373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(54, 'Administrador de Base de Datos Sr', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH buscamos Administrador de Base de Datos Sr para trabajar dentro de Compañía Multinacional líder en...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-administrador-de-base-de-datos-sr-full-remoto--urgente-en-monserrat-0F78188C4F58E0E061373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(55, 'Líder de Proyecto Sr.', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH buscamos Lider de Proyectos Sr. para trabajar dentro de Compañía Multinacional líder en desarrollo de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-lider-de-proyecto-sr-full-remoto--urgente-en-monserrat-2254B29600B3137161373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(56, 'Arquitecto de Software Sr.', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH buscamos Arquitecto de Software Sr. para trabajar dentro de Compañía Multinacional líder en desarrollo de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-arquitecto-de-software-sr-full-remoto--urgente-en-monserrat-B3FABBED106D60D961373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(57, 'AWS DevOps Engineer', 'Kaizen Recursos Humanos Capital Federal, Belgrano', 'En KaizenRH nos encontramos en búsqueda de AWS DevOps Engineer. para Importante empresa de soluciones de Software....', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-aws-devops-engineer-trabajo-full-remoto-en-belgrano-AEA0C02AB86A10B161373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(58, 'Desarrollador .Net con Xamarin', 'Kaizen Recursos Humanos Capital Federal, Belgrano', 'En KaizenRHnos encontramos en búsqueda de Desarrollador .NET con XAMARIN para Importante empresa de soluciones de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-desarrollador-net-con-xamarin-full-remoto-en-belgrano-F45B3A67236C318761373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(59, 'Administrador de Base de Datos Sr', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH buscamos Administrador de Base de Datos Sr para trabajar dentro de Compañía Multinacional líder en...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-administrador-de-base-de-datos-sr-full-remoto--urgente-en-monserrat-8668262BA852E47061373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25'),
	(60, 'Líder de Proyecto Sr.', 'Kaizen Recursos Humanos Capital Federal, Monserrat', 'En KaizenRH buscamos Lider de Proyectos Sr. para trabajar dentro de Compañía Multinacional líder en desarrollo de...', 'https://www.computrabajo.com.ar//ofertas-de-trabajo/oferta-de-trabajo-de-lider-de-proyecto-sr-full-remoto--urgente-en-monserrat-629297D31B182B0461373E686DCF3405', 0, '2021-11-15 23:11:25', '2021-11-15 23:11:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Volcando estructura para tabla scraping.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla scraping.users: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'admin@example.com', NULL, '$2y$10$LANvcm9YhohxdB.KHVacqee6ULtRd5xYTh668rF4qpl8BvPJd7Ylm', NULL, '2021-11-15 11:54:34', '2021-11-15 11:54:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
