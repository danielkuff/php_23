# php_23
    1 Verificar se estamos no Ubuntu
    
    2 File > open folder
    2.1 - Apaga o conteudo
    2.2 - Informa o caminho /var/www/html
    2.3 - Abre essa pasta (enter ou clicando com o mouse em html)
    
    3 - Terminal - novo terminal

    4 - Git clone  LINK_DO_REPOSITORIO (github)

    5 - Informa o caminho /var/www/html/php_23
    5.1 - Abre essa pasta (com enter ou clicando com mouse em HTML)

    6 - Configurar o git (git email e o git name da pagina 4 da apostila)

    7 - Verificar se o apache esta rodando/executando
    7.1 - Acessar o navegador com localhost ou 127.0.0.1 (deve aparecer a configuracao inicial do apache)
    7.2 - Sudo service apache2 status (apache is running precisa aparecer)
    7.3 - Sudo service apache2 start
    7.4 - Executar os passos 7.1 e 7.2 (caso houver problemas se o apache não estiver rodando)

## Para salvar no github
    1 - git add . (. = todos os arquivos ou especificar por nome ex.: git add index.php)

    2 - git comit -m "descrever o que foi feito"

    3 - git push

    4 - Verificar no github se ficou salvo.

### Para fazer merge
     - git checkout (ir para o local desejado)
     - git pull
     - git merge
     - resolver conflitos (se houver com git add .(git commit -m))
     - git push
     - Verificar no git se ficou salvo

### Criar tabelas
## Tabela de usuário

### TABELA rh
id PK AUTOINCREMENT NOT NULL
    id_pessoa (fk) = null
    salario
log_first datetime DEFAULT CURRENTTIMESTAMP,
log_last datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENTTIMESTAMP,


### TABELA pesssoas|people 
id PK AUTOINCREMENT NOT NULL (fk = id_pessoas nas outras tabelas)
user_id (fk) = null
endereco (fk) = null
cpf = null
cnpj = null
telefone = null
nacionalidade * (NOT NULL)
estado_civil = null
cnae = null
data_abertura_empresa = null
genero = null
etnia = null
inscricao_estadual = null


### TABELA enderecos
id_estado (fk) = null
id_cidade (fk) = null
rua
bairro
numero
complemento
cep
referencia


### TABELA estados
nome
sigla


### TABELA cidade 
nome
populacao
densidade_demografica
renda_per_capita
ultimo_senso



### SQL

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aluno
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.11-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client_info`
--

CREATE DATABASE IF NOT EXISTS aluno;

USE aluno;

DROP TABLE IF EXISTS `client_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_info` (
  `client_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `client_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `client_name` varchar(255) NOT NULL,
  `client_mail` varchar(255) NOT NULL,
  `client_pass` varchar(555) NOT NULL,
  `client_fullname` varchar(255) NOT NULL,
  `client_nationality` varchar(100) NOT NULL,
  `client_adress` varchar(285) NOT NULL,
  `client_cep` varchar(20) NOT NULL,
  `client_cpf` varchar(15) NOT NULL,
  `client_phone` varchar(27) NOT NULL,
  `client_estado_civil` varchar(13) DEFAULT NULL,
  `client_gender` varchar(19) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_info`
--

LOCK TABLES `client_info` WRITE;
/*!40000 ALTER TABLE `client_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_info` (
  `company_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(285) NOT NULL,
  `company_cnpj` varchar(20) NOT NULL,
  `company_status` tinyint(1) NOT NULL COMMENT '0 - Inactive\r\n1 - Active',
  `company_hq_adress` varchar(285) NOT NULL,
  `company_hq_cep` varchar(20) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_info`
--

DROP TABLE IF EXISTS `department_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_info` (
  `department_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(175) DEFAULT NULL,
  `department_manager` tinyint(4) NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `department_info_FK` (`department_manager`),
  CONSTRAINT `department_info_FK` FOREIGN KEY (`department_manager`) REFERENCES `staff_info` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_info`
--

LOCK TABLES `department_info` WRITE;
/*!40000 ALTER TABLE `department_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_info`
--

DROP TABLE IF EXISTS `main_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_info` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `staff_id` tinyint(4) DEFAULT NULL,
  `client_id` tinyint(4) NOT NULL,
  `product_id` tinyint(4) DEFAULT NULL,
  `department_id` tinyint(4) DEFAULT NULL,
  `company_id` tinyint(4) NOT NULL,
  `rh_id` tinyint(4) NOT NULL,
  `alt_who` varchar(225) DEFAULT NULL,
  `alt_when` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NewTable_FK` (`staff_id`),
  KEY `Main_Info_FK` (`product_id`),
  KEY `Main_Info_FK_1` (`department_id`),
  KEY `main_info_FK_2` (`rh_id`),
  KEY `main_info_FK_3` (`company_id`),
  KEY `main_info_FK_4` (`client_id`),
  CONSTRAINT `Main_Info_FK` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`),
  CONSTRAINT `Main_Info_FK_1` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`),
  CONSTRAINT `NewTable_FK` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`),
  CONSTRAINT `main_info_FK_2` FOREIGN KEY (`rh_id`) REFERENCES `rh_info` (`rh_id`),
  CONSTRAINT `main_info_FK_3` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`company_id`),
  CONSTRAINT `main_info_FK_4` FOREIGN KEY (`client_id`) REFERENCES `client_info` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_info`
--

LOCK TABLES `main_info` WRITE;
/*!40000 ALTER TABLE `main_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `product_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `product_seekage` tinyint(1) DEFAULT 5 COMMENT '0 - 3 --> Low\r\n4 - 6 --> Medium\r\n7 - 10 --> High',
  `product_type` varchar(125) NOT NULL,
  `product_cost` float NOT NULL,
  `product_price` float NOT NULL,
  `product_profit` float DEFAULT NULL,
  `product_start` date NOT NULL,
  `department_id` tinyint(4) NOT NULL,
  `company_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_info_FK` (`department_id`),
  KEY `product_info_FK_1` (`company_id`),
  CONSTRAINT `product_info_FK` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`),
  CONSTRAINT `product_info_FK_1` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh_info`
--

DROP TABLE IF EXISTS `rh_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh_info` (
  `rh_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `staff_id` tinyint(4) NOT NULL,
  `staff_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `staff_department` tinyint(4) NOT NULL,
  `staff_rank` varchar(155) NOT NULL,
  `staff_salary` float NOT NULL,
  PRIMARY KEY (`rh_id`),
  KEY `rh_info_FK` (`staff_id`),
  KEY `rh_info_FK_1` (`staff_department`),
  CONSTRAINT `rh_info_FK` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`),
  CONSTRAINT `rh_info_FK_1` FOREIGN KEY (`staff_department`) REFERENCES `department_info` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh_info`
--

LOCK TABLES `rh_info` WRITE;
/*!40000 ALTER TABLE `rh_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `rh_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_info`
--

DROP TABLE IF EXISTS `staff_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_info` (
  `staff_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `staff_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Inactive\r\n1 - Active',
  `staff_name` varchar(255) NOT NULL,
  `staff_mail` varchar(255) NOT NULL,
  `staff_pass` varchar(555) NOT NULL,
  `staff_fullname` varchar(255) NOT NULL,
  `staff_nationality` varchar(100) NOT NULL,
  `staff_adress` varchar(285) NOT NULL,
  `staff_cep` varchar(20) NOT NULL,
  `staff_cpf` varchar(11) NOT NULL,
  `staff_phone` varchar(20) NOT NULL,
  `staff_estado_civil` varchar(20) DEFAULT NULL,
  `staff_rank` varchar(155) NOT NULL,
  `department_id` tinyint(4) NOT NULL,
  `log_first` datetime DEFAULT NULL,
  `log_last` datetime DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `User_Info_FK` (`department_id`),
  CONSTRAINT `User_Info_FK` FOREIGN KEY (`department_id`) REFERENCES `department_info` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_info`
--

LOCK TABLES `staff_info` WRITE;
/*!40000 ALTER TABLE `staff_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aluno'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 22:02:18
