-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectofinal
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_miembros`
--

DROP TABLE IF EXISTS `t_miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_miembros` (
  `id_miembro` int NOT NULL AUTO_INCREMENT,
  `nombre_miem` varchar(80) NOT NULL,
  `contraseña` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rol` varchar(45) DEFAULT NULL,
  `viajes_realizados` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_miembro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_miembros`
--

LOCK TABLES `t_miembros` WRITE;
/*!40000 ALTER TABLE `t_miembros` DISABLE KEYS */;
INSERT INTO `t_miembros` VALUES (1,'Kevin','1234','123','kevinkgp@gmail.com','admin','null'),(2,'Adrian','1234','121345678','adriannavarro@gmail.com','admin',NULL),(3,'Angela','1234','123456789','Angela@gmail.com','admin',NULL),(4,'Agapito','afdsafas','4532133452','agapito_89@gmail.com','miembro','Ninguno'),(5,'Julia Ponce Linares','1234','685437324','juliapl@gmail.com','miembro','null');
/*!40000 ALTER TABLE `t_miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_provincias`
--

DROP TABLE IF EXISTS `t_provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_provincias` (
  `id_prov` int NOT NULL AUTO_INCREMENT,
  `nombre_provincia` varchar(80) NOT NULL,
  `nombre_comunidad` varchar(80) NOT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_provincias`
--

LOCK TABLES `t_provincias` WRITE;
/*!40000 ALTER TABLE `t_provincias` DISABLE KEYS */;
INSERT INTO `t_provincias` VALUES (1,'Alicante','C. Valenciana'),(2,'Valencia','C. Valenciana'),(3,'Castellon','C. Valenciana'),(4,'Murcia','Murcia'),(5,'Almeria','Andalucia'),(6,'Granada','Andalucia'),(7,'Sevilla','Andalucia'),(8,'Malaga','Andalucia'),(9,'Jaen','Andalucia'),(10,'Cadiz','Andalucia'),(11,'Huelva','Andalucia'),(12,'Cordoba','Andalucia'),(13,'Badajoz','Extremadura'),(14,'Caceres','Extremadura'),(15,'Salamanca','Castilla y Leon'),(16,'Avila','Castilla y Leon'),(17,'Segovia','Castilla y Leon'),(18,'Valladolid','Castilla y Leon'),(19,'Soria','Castilla y Leon'),(20,'Burgos','Castilla y Leon'),(21,'Palencia','Castilla y Leon'),(22,'Zamora','Castilla y Leon'),(23,'Leon','Castilla y Leon'),(24,'Pontevedra','Galicia'),(25,'A Coruña','Galicia'),(26,'Ourense','Galicia'),(27,'Lugo','Galicia'),(28,'Asturias','Asturias'),(29,'Cantabria','Cantabria'),(30,'Vizcaya ','Pais Vasco'),(31,'Alava','Pais Vasco'),(32,'Guipuzcoa','Pais Vasco'),(33,'Navarra','Navarra'),(34,'La Rioja','La Rioja'),(35,'Huesca ','Aragon'),(36,'Zaragoza','Aragon'),(37,'Teruel','Aragon'),(38,'Lerida','Catalunya'),(39,'Tarragona','Catalunya'),(40,'Barcelona','Catalunya'),(41,'Girona','Catalunya'),(42,'Guadalajara','Castilla La Mancha'),(43,'Cuenca','Castilla La Mancha'),(44,'Albacete','Castilla La Mancha'),(45,'Ciudad Real','Castilla La Mancha'),(46,'Toledo','Castilla La Mancha'),(47,'Madrid','Madrid'),(48,'Menorca','Islas Baleares'),(49,'Mallorca ','Islas Baleares'),(50,'Ibiza','Islas Baleares'),(51,'Ceuta','Ceuta '),(52,'Melilla','Melilla'),(53,'Gran Canaria','Islas Canarias'),(54,'Tenerife','Islas Canarias'),(55,'Huesca','Aragon');
/*!40000 ALTER TABLE `t_provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_resenyas`
--

DROP TABLE IF EXISTS `t_resenyas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_resenyas` (
  `id_resenya` int NOT NULL AUTO_INCREMENT,
  `comunidad` varchar(80) NOT NULL,
  `provincia` varchar(80) NOT NULL,
  `resenya_texto` varchar(80) NOT NULL,
  `telefono` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `valoracion` int NOT NULL,
  PRIMARY KEY (`id_resenya`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_resenyas`
--

LOCK TABLES `t_resenyas` WRITE;
/*!40000 ALTER TABLE `t_resenyas` DISABLE KEYS */;
INSERT INTO `t_resenyas` VALUES (1,'C. Valenciana','Alicante','Estuve por la zona de Altea y es una zona super bonita',123568794,'persona@gmail.com',5);
/*!40000 ALTER TABLE `t_resenyas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_viajes`
--

DROP TABLE IF EXISTS `t_viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_viajes` (
  `id_viaje` int NOT NULL AUTO_INCREMENT,
  `nombre_viaje` varchar(80) NOT NULL,
  `tipo_turismo` varchar(80) DEFAULT NULL,
  `provincia` varchar(45) NOT NULL,
  `comunidad` varchar(45) NOT NULL,
  `viaje_foto` varchar(2000) DEFAULT NULL,
  `viaje_descripcion` varchar(1000) DEFAULT NULL,
  `viaje_titulo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_viaje`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_viajes`
--

LOCK TABLES `t_viajes` WRITE;
/*!40000 ALTER TABLE `t_viajes` DISABLE KEYS */;
INSERT INTO `t_viajes` VALUES (1,'Visita al Teide','Natural','Tenerife','Islas Canarias','..\\proyectofinalG4\\src\\main\\webapp\\img\\Teide.jpg','Disfruta de un ascenso tranquilo al pico más alto de España en este tour de 6 h por Tenerife. Sube al Teide en teleférico (con billetes sin colas) y conquista los últimos 170 m a pie. Contempla el panorama de la isla','Tenerife: tour de senderismo en el Teide'),(2,'Fin de semana en Benidorm','Sol y playa','Alicante','C. Valenciana','..\\proyectofinalG4\\src\\main\\webapp\\img\\Benidorm.jpg','En el corazón de la comarca de Marina Baja y acariciada por las aguas del Mediterráneo, se encuentra Benidorm. Es una de las ciudades más visitadas de Alicante por las bondades que ofrecen sus bellas playas y sus recónditas calas, siempre abrigadas por un excepcional clima mediterráneo. Su enorme oferta de ocio, la vivacidad de sus fiestas, su sabrosa gastronomía y la diversidad de sus parques temáticos la convierten en un destino perfecto para todos los públicos y en cualquier época del año.','Vacaciones en Benidorm'),(3,'Museos de Barcelona','Cultural','Barcelona','Catalunya','..\\proyectofinalG4\\src\\main\\webapp\\img\\Museo Barcelona.jpg','Pasear por la ciudad ofrece la oportunidad de visitar alguno de sus muchos museos, un placer para descubrir la historia, la cultura y el carácter de Barcelona','Museos para visitar en Barcelona'),(4,'Relax en Ibiza','Bienestar','Ibiza','Islas Baleares','..\\proyectofinalG4\\src\\main\\webapp\\img\\Relax Ibiza.jpg','¿Necesitas descansar unos días de la rutina recuperar fuerza? Esta escapada es perfecta para ti, ven a Ibiza y sus cercanías a darte ese capricho que estás buscando en alguno de los mejores hoteles con Spa que hemos seleccionado especialmente para la ocasión. Los hoteles harán que consigas desconectar por completo y reponer todas las fuerzas que necesitas para volver a la rutina. Está escapada incluye alojamiento con entrada al Spa del hotel donde encontraras lo necesario para desconectar y dejar desaparecer el estrés de la rutina y saldrás totalmente renovado.','Relax en Ibiza con hotel y spa'),(5,'Tour gastro-enologico en La Rioja','Gastronomico','La Rioja','La Rioja','..\\proyectofinalG4\\src\\main\\webapp\\img\\Vinos La Rioja.jpg','Algo que le ha dado fama mundial a La Rioja, son sus vinos. Su Denominación de Origen, comprende una amplia variedad de vinos de sabor y olor único. Ven con nosotros a vivir una auténtica experiencia de aromas y sabores riojanos. Te llevaremos a lugares exclusivos y sin aglomeraciones. Una experiencia gastronómica y enológica única. ¡No te arrepentirás!','Experiencia gastro-enológica en La Rioja'),(6,'Visita Parque Warner en Madrid','Ocio','Madrid','Madrid','..\\proyectofinalG4\\src\\main\\webapp\\img\\Viaje Warner.jpg','Visita uno de los parques de atracciones más importantes y modernos de Europa. Ahorra un tiempo precioso con tus entradas sin colas y aprovecha al máximo el día.Escapa de la cuidad ya que el parque está a solo a 25 km al sureste de Madrid. Aprovecha los mejores descuentos disponibles. ','Entradas sin colas para el Parque Warner Madrid'),(7,'Ruta de la Hoz del rio Jucar en Cuenca','Aventura','Cuenca','Castilla la Mancha','..\\proyectofinalG4\\src\\main\\webapp\\img\\Hoz del Jucar Ruta.jpg','Los aficionados al senderismo tienen en Cuenca un lugar de visita forzosa. La experiencia de caminar por la Serranía conquense en lugares como el nacimiento del río Cuervo o del Júcar es algo formidable. Pero una de las particularidades de esta provincia es que, desde su propia capital, parten rutas que se adentran en un paisaje donde se puede comprobar cómo los inmensos barrancos de roca caliza abrigan y abrazan a la ciudad castellano manchega. Pocas urbes permiten la posibilidad de iniciar en su casco histórico un recorrido apasionante, repleto de miradores y con una compañía muy especial: el curso del río Júcar. Estamos hablando de la ruta de la Hoz del Júcar, un sendero por el que los conquenses se relajan y desconectan y en el que los turistas disfrutamos de un paseo emocionante y lleno de sorpresas.','Ruta de la Hoz del Júcar, una caminata alrededor de Cuenca');
/*!40000 ALTER TABLE `t_viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_viajes_detalle`
--

DROP TABLE IF EXISTS `t_viajes_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_viajes_detalle` (
  `idviajes_detalle` int NOT NULL AUTO_INCREMENT,
  `viaje_foto` varchar(2000) DEFAULT NULL,
  `viaje_descripcion` varchar(1000) DEFAULT NULL,
  `viaje_titulo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idviajes_detalle`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_viajes_detalle`
--

LOCK TABLES `t_viajes_detalle` WRITE;
/*!40000 ALTER TABLE `t_viajes_detalle` DISABLE KEYS */;
INSERT INTO `t_viajes_detalle` VALUES (16,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Teide.jpg','Disfruta de un ascenso tranquilo al pico más alto de España en este tour de 6 h por Tenerife. Sube al Teide en teleférico (con billetes sin colas) y conquista los últimos 170 m a pie. Contempla el panorama de la isla','Tenerife: tour de senderismo en el Teide'),(17,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Benidorm.jpg','En el corazón de la comarca de Marina Baja y acariciada por las aguas del Mediterráneo, se encuentra Benidorm. Es una de las ciudades más visitadas de Alicante por las bondades que ofrecen sus bellas playas y sus recónditas calas, siempre abrigadas por un excepcional clima mediterráneo. Su enorme oferta de ocio, la vivacidad de sus fiestas, su sabrosa gastronomía y la diversidad de sus parques temáticos la convierten en un destino perfecto para todos los públicos y en cualquier época del año.','Vacaciones en Benidorm'),(18,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Museo Barcelona.jpg','Pasear por la ciudad ofrece la oportunidad de visitar alguno de sus muchos museos, un placer para descubrir la historia, la cultura y el carácter de Barcelona','Museos para visitar en Barcelona'),(19,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Relax Ibiza.jpg','¿Necesitas descansar unos días de la rutina recuperar fuerza? Esta escapada es perfecta para ti, ven a Ibiza y sus cercanías a darte ese capricho que estás buscando en alguno de los mejores hoteles con Spa que hemos seleccionado especialmente para la ocasión. Los hoteles harán que consigas desconectar por completo y reponer todas las fuerzas que necesitas para volver a la rutina. Está escapada incluye alojamiento con entrada al Spa del hotel donde encontraras lo necesario para desconectar y dejar desaparecer el estrés de la rutina y saldrás totalmente renovado.','Relax en Ibiza con hotel y spa'),(20,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Vinos La Rioja.jpg','Algo que le ha dado fama mundial a La Rioja, son sus vinos. Su Denominación de Origen, comprende una amplia variedad de vinos de sabor y olor único. Ven con nosotros a vivir una auténtica experiencia de aromas y sabores riojanos. Te llevaremos a lugares exclusivos y sin aglomeraciones. Una experiencia gastronómica y enológica única. ¡No te arrepentirás!','Experiencia gastro-enológica en La Rioja'),(21,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Viaje Warner.jpg','Visita uno de los parques de atracciones más importantes y modernos de Europa. Ahorra un tiempo precioso con tus entradas sin colas y aprovecha al máximo el día.Escapa de la cuidad ya que el parque está a solo a 25 km al sureste de Madrid. Aprovecha los mejores descuentos disponibles. ','Entradas sin colas para el Parque Warner Madrid'),(22,'..\\proyectofinalG4\\src\\main\\webapp\\img\\Hoz del Jucar Ruta.jpg','Los aficionados al senderismo tienen en Cuenca un lugar de visita forzosa. La experiencia de caminar por la Serranía conquense en lugares como el nacimiento del río Cuervo o del Júcar es algo formidable. Pero una de las particularidades de esta provincia es que, desde su propia capital, parten rutas que se adentran en un paisaje donde se puede comprobar cómo los inmensos barrancos de roca caliza abrigan y abrazan a la ciudad castellano manchega. Pocas urbes permiten la posibilidad de iniciar en su casco histórico un recorrido apasionante, repleto de miradores y con una compañía muy especial: el curso del río Júcar. Estamos hablando de la ruta de la Hoz del Júcar, un sendero por el que los conquenses se relajan y desconectan y en el que los turistas disfrutamos de un paseo emocionante y lleno de sorpresas.','Ruta de la Hoz del Júcar, una caminata alrededor de Cuenca'),(23,'',NULL,NULL);
/*!40000 ALTER TABLE `t_viajes_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 19:46:00
