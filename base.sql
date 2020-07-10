/*
Navicat SQLite Data Transfer

Source Server         : bakend_sqlite
Source Server Version : 30714
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 30714
File Encoding         : 65001

Date: 2020-07-10 13:03:17
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS "main"."books";
CREATE TABLE "books" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"name"  TEXT,
"author"  TEXT,
"editorial"  TEXT,
"status"  TEXT,
"image"  TEXT,
"createdAt"  TEXT,
"updatedAt"  TEXT
);

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO "main"."books" VALUES (1, 'EL Origen', 'Dan Brown', 'Planeta', 'disponible', 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Flibrosrecomendados10.com%2Fwp-content%2Fuploads%2F2018%2F01%2FLibro-Origen-Dan-Brown.jpg&f=1&nofb=1', '2020-07-05 02:37:48.396 +00:00', '2020-07-09 20:21:12.537 +00:00');
INSERT INTO "main"."books" VALUES (2, 'Ejercicios Practicos con react', 'Carlos Santana Roldan', 'Marcombo 75', 'disponible', 'https://belliscovirtual.com/7020-thickbox_default/ejercicios-practicos-con-react.jpg', '2020-07-05 15:41:56.938 +00:00', '2020-07-05 15:51:42.063 +00:00');
INSERT INTO "main"."books" VALUES (3, 'Node JS Manual Practico', 'Ismael Lopez Quintero', 'Altaria', 'disponible', 'https://imgv2-2-f.scribdassets.com/img/document/329889054/original/e1040ca900/1566625156?v=1', '2020-07-05 15:50:27.431 +00:00', '2020-07-09 20:24:10.319 +00:00');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS "main"."orders";
CREATE TABLE "orders" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"idBook"  INTEGER,
"idUser"  INTEGER,
"User"  TEXT,
"Title"  TEXT,
"status"  TEXT,
"fecha"  TEXT,
"createdAt"  TEXT,
"updatedAt"  TEXT
);

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO "main"."orders" VALUES (1, 1, 2, 'Efren Almanza', 'EL Origen', 'entregado', '2020-07-05', '2020-07-05 03:26:45.115 +00:00', '2020-07-05 16:18:18.260 +00:00');
INSERT INTO "main"."orders" VALUES (2, 3, 2, 'Efren Almanza', 'Node JS Manual Practico', 'entregado', '2020-07-05', '2020-07-05 16:06:13.930 +00:00', '2020-07-09 21:29:14.093 +00:00');
INSERT INTO "main"."orders" VALUES (3, 3, 1, 'Ethien Salinas', 'Node JS Manual Practico', 'prestado', '2020-07-05', '2020-07-05 16:07:04.178 +00:00', '2020-07-09 21:32:53.156 +00:00');
INSERT INTO "main"."orders" VALUES (4, 3, 2, 'Efren Almanza', 'Node JS Manual Practico', 'entregado', '2020-07-05', '2020-07-09 20:44:12.786 +00:00', '2020-07-09 21:32:57.573 +00:00');
INSERT INTO "main"."orders" VALUES (5, 2, 2, 'Efren Almanza', 'Ejercicios Practicos con react', 'Pendiente', '2020-07-05', '2020-07-09 20:44:19.193 +00:00', '2020-07-09 20:44:19.193 +00:00');
INSERT INTO "main"."orders" VALUES (6, 2, 2, 'Efren Almanza', 'Ejercicios Practicos con react', 'Pendiente', '2020-07-05', '2020-07-09 20:45:22.331 +00:00', '2020-07-09 20:45:22.331 +00:00');
INSERT INTO "main"."orders" VALUES (7, 1, 2, 'Efren Almanza', 'EL Origen', 'entregado', '2020-07-05', '2020-07-09 20:52:31.504 +00:00', '2020-07-10 16:26:08.430 +00:00');
INSERT INTO "main"."orders" VALUES (8, 2, 2, 'Efren Almanza', 'Ejercicios Practicos con react', 'entregado', '2020-07-09T20:54:45.509Z', '2020-07-09 20:54:47.303 +00:00', '2020-07-10 16:26:02.804 +00:00');
INSERT INTO "main"."orders" VALUES (9, 2, 2, 'Efren Almanza', 'Ejercicios Practicos con react', 'entregado', '2020-07-09T21:13:34.033Z', '2020-07-09 21:13:36.365 +00:00', '2020-07-10 16:26:05.961 +00:00');
INSERT INTO "main"."orders" VALUES (10, 2, 4, 'efren45', 'Ejercicios Practicos con react', 'entregado', '2020-07-10T15:39:12.125Z', '2020-07-10 15:39:17.788 +00:00', '2020-07-10 16:25:58.724 +00:00');
INSERT INTO "main"."orders" VALUES (11, 1, 2, 'Efren Almanza Lamas', 'EL Origen', 'entregado', '2020-07-10T16:06:03.769Z', '2020-07-10 16:06:09.986 +00:00', '2020-07-10 16:26:09.794 +00:00');
INSERT INTO "main"."orders" VALUES (12, 3, 2, 'Efren Almanza Lamas', 'Node JS Manual Practico', 'entregado', '2020-07-10T16:08:17.049Z', '2020-07-10 16:08:19.742 +00:00', '2020-07-10 16:26:11.177 +00:00');
INSERT INTO "main"."orders" VALUES (13, 3, 'Efren Almanza Lamas', 'Efren Almanza Lamas', 'Node JS Manual Practico', 'entregado', '2020-07-10T16:24:59.225Z', '2020-07-10 16:25:01.804 +00:00', '2020-07-10 16:26:12.358 +00:00');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "main"."sqlite_sequence";
CREATE TABLE sqlite_sequence(name,seq);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "main"."sqlite_sequence" VALUES ('_users_old_20200705', 6);
INSERT INTO "main"."sqlite_sequence" VALUES ('books', 3);
INSERT INTO "main"."sqlite_sequence" VALUES ('orders', 13);
INSERT INTO "main"."sqlite_sequence" VALUES ('users', 12);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "main"."users";
CREATE TABLE "users" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT,
"name"  TEXT,
"email"  TEXT,
"password"  TEXT,
"role"  TEXT,
"status"  TEXT,
"createdAt"  TEXT,
"updatedAt"  TEXT
);

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "main"."users" VALUES (1, 'Ethien Salinas', 'ethien.salinas@gmail.com', '$2b$10$un5QiF5ckpdMpym0VjN0Ou72Y/Il5U1V0T.xpml3gPbnbVmRpVeui', 'admin', 'inactivo', '2020-05-09 19:28:58.698 +00:00', '2020-07-09 20:12:15.689 +00:00');
INSERT INTO "main"."users" VALUES (2, 'Efren Almanza Lamas', 'efren.almanza@gmail.com', '$2b$10$r8TEgWt2E0eZfzefwTzwlO2Hd/WJv8sXv/8RSvXQ.n41SFQjHxCL6', 'admin', 'activo', '2020-05-09 19:32:30.797 +00:00', '2020-07-10 15:55:54.314 +00:00');
INSERT INTO "main"."users" VALUES (3, 'pedro vazquez', 'pedro.vaquez@gmail.com', '$2b$10$05aFh8QaASqnrgioF0Je.eOm50bB1dEovjrdmqOWDaNYrbHGJBgiW', 'admin', 'inactivo', '2020-05-09 21:58:37.419 +00:00', '2020-07-09 20:12:09.869 +00:00');
INSERT INTO "main"."users" VALUES (4, 'efren45', 'efren45@gmail.com', '$2b$10$bY0MvZcV.YZm8vzY.FGecO./bFq5KltQYwW7xuOPjlUnxsKRURz5a', 'member', 'activo', '2020-07-05 01:38:21.022 +00:00', '2020-07-09 23:19:19.789 +00:00');
INSERT INTO "main"."users" VALUES (5, 'efren10', 'efren10@gmail.com', '$2b$10$uQmLVIAb2pxcZ4KyKUztCuCp78mpoZQ4X9i/ixo5CVjNVZ4mglpQa', 'member', 'activo', '2020-07-05 01:47:39.824 +00:00', '2020-07-09 22:50:33.156 +00:00');
INSERT INTO "main"."users" VALUES (6, 'efren4', 'efren4@gmail.com', '$2b$10$cQGQBXLTKBx5Vl8I8AF7CeElqwuXWPZt3l2G36SOk/mJeHGwiqU8e', 'member', 'inactivo', '2020-07-05 01:50:46.621 +00:00', '2020-07-09 20:12:18.066 +00:00');
INSERT INTO "main"."users" VALUES (7, 'efren', 'efren45@gmail.com', '$2b$10$FwFspxkDDz1GU/tvg24HveSuJB/6pd3uAXyq4YYFDByDgCJA/79Je', 'member', 'activo', '2020-07-05 13:15:58.610 +00:00', '2020-07-09 22:45:34.053 +00:00');
INSERT INTO "main"."users" VALUES (8, 'efren5', 'efren5@gmail.com', '$2b$10$wVfPUolvJ/jL35VRFVrBtOlvbCrwdTMBke.2AVcoeYxXdR7tS05f.', 'member', 'inactivo', '2020-07-05 13:19:34.896 +00:00', '2020-07-09 20:12:19.298 +00:00');
INSERT INTO "main"."users" VALUES (9, 'efren5', 'efren5@gmail.com', '$2b$10$4OcTqJsYp9GPuVP69Fu9K.Vh11B/LoASrHcmTTGsWN5HMrBhcH3F.', 'member', 'inactivo', '2020-07-05 13:22:43.983 +00:00', '2020-07-09 20:12:19.853 +00:00');
INSERT INTO "main"."users" VALUES (10, 'efren5', 'efren5@gmail.com', '$2b$10$9f0CjO6I57KKpMMRgw9NQe.ZYMv036fOA80KGSEE4yvN7T7BdAU9m', 'member', 'inactivo', '2020-07-05 13:31:44.664 +00:00', '2020-07-09 20:12:20.381 +00:00');
INSERT INTO "main"."users" VALUES (11, 'efren5', 'efren5@gmail.com', '$2b$10$8IGtODBzTAFPDtS3PN/1t.1Jah7TCC6iflKVMsmnjuwDwu9QKzoP2', 'member', 'inactivo', '2020-07-05 13:33:01.288 +00:00', '2020-07-09 20:12:20.949 +00:00');
INSERT INTO "main"."users" VALUES (12, 'efren55', 'efren55@gmail.com', '$2b$10$qtb2PObA6VqG7h9FSFtRweXsJeQ16Di17EtLCOKHdghBLUJUjo2IK', 'member', 'activo', '2020-07-09 22:48:29.169 +00:00', '2020-07-09 22:48:29.169 +00:00');

-- ----------------------------
-- Table structure for _books_old_20200704
-- ----------------------------
DROP TABLE IF EXISTS "main"."_books_old_20200704";
CREATE TABLE "_books_old_20200704" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"name"  TEXT,
"author"  TEXT,
"editorial"  TEXT,
"status"  TEXT,
"createdAt"  TEXT,
"updatedAt"  TEXT
);

-- ----------------------------
-- Records of _books_old_20200704
-- ----------------------------

-- ----------------------------
-- Table structure for _orders_old_20200704
-- ----------------------------
DROP TABLE IF EXISTS "main"."_orders_old_20200704";
CREATE TABLE "_orders_old_20200704" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"idBook"  INTEGER,
"idUser"  INTEGER,
"User"  TEXT,
"Title"  TEXT,
"status"  TEXT,
"fecha"  TEXT
);

-- ----------------------------
-- Records of _orders_old_20200704
-- ----------------------------

-- ----------------------------
-- Table structure for _users_old_20200705
-- ----------------------------
DROP TABLE IF EXISTS "main"."_users_old_20200705";
CREATE TABLE "_users_old_20200705" (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  email TEXT,
  password TEXT,
  role TEXT,
  createdAt TEXT,
  updatedAt TEXT
);

-- ----------------------------
-- Records of _users_old_20200705
-- ----------------------------
INSERT INTO "main"."_users_old_20200705" VALUES (1, 'Ethien Salinas', 'ethien.salinas@gmail.com', '$2b$10$un5QiF5ckpdMpym0VjN0Ou72Y/Il5U1V0T.xpml3gPbnbVmRpVeui', 'admin', '2020-05-09 19:28:58.698 +00:00', '2020-05-09 19:28:58.698 +00:00');
INSERT INTO "main"."_users_old_20200705" VALUES (2, 'Efren Almanza', 'efren.almanza@gmail.com', '$2b$10$rP1fUrMt14/ZTbA2tkhz7uxbTB8iMPp/Y9u/71nxVoe7iMzuNc4eK', 'admin', '2020-05-09 19:32:30.797 +00:00', '2020-05-09 19:32:30.797 +00:00');
INSERT INTO "main"."_users_old_20200705" VALUES (3, 'pedro vazquez', 'pedro.vaquez@gmail.com', '$2b$10$05aFh8QaASqnrgioF0Je.eOm50bB1dEovjrdmqOWDaNYrbHGJBgiW', 'admin', '2020-05-09 21:58:37.419 +00:00', '2020-05-09 21:58:37.419 +00:00');
INSERT INTO "main"."_users_old_20200705" VALUES (4, 'efren', 'efren@gmail.com', '$2b$10$KsQirQtTMZQuiArGR3wCou83gSEWm1CHqVGO8EPw5zCMF2AeNzrIG', 'member', '2020-07-05 01:38:21.022 +00:00', '2020-07-05 01:38:21.022 +00:00');
INSERT INTO "main"."_users_old_20200705" VALUES (5, 'efren3', 'efren2@gmail.com', '$2b$10$eTuDfzkG7lmUgP8dYPoIQub4B.NKPecbLjiFx1zsT/7SY0k4ReYsa', 'member', '2020-07-05 01:47:39.824 +00:00', '2020-07-05 01:47:39.824 +00:00');
INSERT INTO "main"."_users_old_20200705" VALUES (6, 'efren4', 'efren4@gmail.com', '$2b$10$cQGQBXLTKBx5Vl8I8AF7CeElqwuXWPZt3l2G36SOk/mJeHGwiqU8e', 'member', '2020-07-05 01:50:46.621 +00:00', '2020-07-05 01:50:46.621 +00:00');
