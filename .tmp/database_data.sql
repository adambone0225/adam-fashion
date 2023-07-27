-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        8.0.34 - MySQL Community Server - GPL
-- 伺服器作業系統:                      Win64
-- HeidiSQL 版本:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 傾印 shop 的資料庫結構
CREATE DATABASE IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop`;

-- 傾印  資料表 shop.admin_permissions 結構
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.admin_permissions 的資料：~89 rows (近似值)
DELETE FROM `admin_permissions`;
INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-04-18 22:21:31.578000', '2023-04-18 22:21:31.578000', NULL, NULL),
	(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-04-18 22:21:31.585000', '2023-04-18 22:21:31.585000', NULL, NULL),
	(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-04-18 22:21:31.592000', '2023-04-18 22:21:31.592000', NULL, NULL),
	(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-04-18 22:21:31.598000', '2023-04-18 22:21:31.598000', NULL, NULL),
	(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-04-18 22:21:31.604000', '2023-04-18 22:21:31.604000', NULL, NULL),
	(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-04-18 22:21:31.610000', '2023-04-18 22:21:31.610000', NULL, NULL),
	(7, 'plugin::upload.read', NULL, '{}', '["admin::is-creator"]', '2023-04-18 22:21:31.615000', '2023-04-18 22:21:31.615000', NULL, NULL),
	(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-04-18 22:21:31.622000', '2023-04-18 22:21:31.622000', NULL, NULL),
	(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-04-18 22:21:31.628000', '2023-04-18 22:21:31.628000', NULL, NULL),
	(10, 'plugin::upload.assets.update', NULL, '{}', '["admin::is-creator"]', '2023-04-18 22:21:31.635000', '2023-04-18 22:21:31.635000', NULL, NULL),
	(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-04-18 22:21:31.641000', '2023-04-18 22:21:31.641000', NULL, NULL),
	(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-04-18 22:21:31.646000', '2023-04-18 22:21:31.646000', NULL, NULL),
	(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2023-04-18 22:21:31.671000', '2023-04-18 22:21:31.671000', NULL, NULL),
	(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2023-04-18 22:21:31.677000', '2023-04-18 22:21:31.677000', NULL, NULL),
	(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2023-04-18 22:21:31.683000', '2023-04-18 22:21:31.683000', NULL, NULL),
	(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-04-18 22:21:31.690000', '2023-04-18 22:21:31.690000', NULL, NULL),
	(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-04-18 22:21:31.698000', '2023-04-18 22:21:31.698000', NULL, NULL),
	(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-04-18 22:21:31.704000', '2023-04-18 22:21:31.704000', NULL, NULL),
	(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-04-18 22:21:31.710000', '2023-04-18 22:21:31.710000', NULL, NULL),
	(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-04-18 22:21:31.716000', '2023-04-18 22:21:31.716000', NULL, NULL),
	(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-04-18 22:21:31.724000', '2023-04-18 22:21:31.724000', NULL, NULL),
	(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-04-18 22:21:31.730000', '2023-04-18 22:21:31.730000', NULL, NULL),
	(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-04-18 22:21:31.735000', '2023-04-18 22:21:31.735000', NULL, NULL),
	(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-04-18 22:21:31.741000', '2023-04-18 22:21:31.741000', NULL, NULL),
	(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-04-18 22:21:31.747000', '2023-04-18 22:21:31.747000', NULL, NULL),
	(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-04-18 22:21:31.754000', '2023-04-18 22:21:31.754000', NULL, NULL),
	(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-04-18 22:21:31.760000', '2023-04-18 22:21:31.760000', NULL, NULL),
	(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-04-18 22:21:31.765000', '2023-04-18 22:21:31.765000', NULL, NULL),
	(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-04-18 22:21:31.771000', '2023-04-18 22:21:31.771000', NULL, NULL),
	(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-04-18 22:21:31.777000', '2023-04-18 22:21:31.777000', NULL, NULL),
	(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-04-18 22:21:31.785000', '2023-04-18 22:21:31.785000', NULL, NULL),
	(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.792000', '2023-04-18 22:21:31.792000', NULL, NULL),
	(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-04-18 22:21:31.798000', '2023-04-18 22:21:31.798000', NULL, NULL),
	(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-04-18 22:21:31.805000', '2023-04-18 22:21:31.805000', NULL, NULL),
	(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-04-18 22:21:31.813000', '2023-04-18 22:21:31.813000', NULL, NULL),
	(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-04-18 22:21:31.819000', '2023-04-18 22:21:31.819000', NULL, NULL),
	(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-04-18 22:21:31.826000', '2023-04-18 22:21:31.826000', NULL, NULL),
	(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-04-18 22:21:31.832000', '2023-04-18 22:21:31.832000', NULL, NULL),
	(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-04-18 22:21:31.838000', '2023-04-18 22:21:31.838000', NULL, NULL),
	(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-04-18 22:21:31.845000', '2023-04-18 22:21:31.845000', NULL, NULL),
	(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-04-18 22:21:31.851000', '2023-04-18 22:21:31.851000', NULL, NULL),
	(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.858000', '2023-04-18 22:21:31.858000', NULL, NULL),
	(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-04-18 22:21:31.864000', '2023-04-18 22:21:31.864000', NULL, NULL),
	(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-04-18 22:21:31.871000', '2023-04-18 22:21:31.871000', NULL, NULL),
	(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-04-18 22:21:31.877000', '2023-04-18 22:21:31.877000', NULL, NULL),
	(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-04-18 22:21:31.884000', '2023-04-18 22:21:31.884000', NULL, NULL),
	(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.890000', '2023-04-18 22:21:31.890000', NULL, NULL),
	(48, 'admin::users.create', NULL, '{}', '[]', '2023-04-18 22:21:31.896000', '2023-04-18 22:21:31.896000', NULL, NULL),
	(49, 'admin::users.read', NULL, '{}', '[]', '2023-04-18 22:21:31.908000', '2023-04-18 22:21:31.908000', NULL, NULL),
	(50, 'admin::users.update', NULL, '{}', '[]', '2023-04-18 22:21:31.913000', '2023-04-18 22:21:31.913000', NULL, NULL),
	(51, 'admin::users.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.919000', '2023-04-18 22:21:31.919000', NULL, NULL),
	(52, 'admin::roles.create', NULL, '{}', '[]', '2023-04-18 22:21:31.925000', '2023-04-18 22:21:31.925000', NULL, NULL),
	(53, 'admin::roles.read', NULL, '{}', '[]', '2023-04-18 22:21:31.930000', '2023-04-18 22:21:31.930000', NULL, NULL),
	(54, 'admin::roles.update', NULL, '{}', '[]', '2023-04-18 22:21:31.936000', '2023-04-18 22:21:31.936000', NULL, NULL),
	(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.942000', '2023-04-18 22:21:31.942000', NULL, NULL),
	(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-04-18 22:21:31.947000', '2023-04-18 22:21:31.947000', NULL, NULL),
	(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-04-18 22:21:31.952000', '2023-04-18 22:21:31.952000', NULL, NULL),
	(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-04-18 22:21:31.958000', '2023-04-18 22:21:31.958000', NULL, NULL),
	(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-04-18 22:21:31.963000', '2023-04-18 22:21:31.963000', NULL, NULL),
	(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-04-18 22:21:31.969000', '2023-04-18 22:21:31.969000', NULL, NULL),
	(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-04-18 22:21:31.977000', '2023-04-18 22:21:31.977000', NULL, NULL),
	(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-04-18 22:21:31.982000', '2023-04-18 22:21:31.982000', NULL, NULL),
	(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-04-18 22:21:31.988000', '2023-04-18 22:21:31.988000', NULL, NULL),
	(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-04-18 22:21:31.994000', '2023-04-18 22:21:31.994000', NULL, NULL),
	(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-04-18 22:21:32.000000', '2023-04-18 22:21:32.000000', NULL, NULL),
	(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-04-18 22:21:32.007000', '2023-04-18 22:21:32.007000', NULL, NULL),
	(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-04-18 22:21:32.013000', '2023-04-18 22:21:32.013000', NULL, NULL),
	(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-04-18 22:21:32.018000', '2023-04-18 22:21:32.018000', NULL, NULL),
	(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-04-18 22:21:32.024000', '2023-04-18 22:21:32.024000', NULL, NULL),
	(73, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-04-18 22:39:17.846000', '2023-04-18 22:39:17.846000', NULL, NULL),
	(74, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-04-18 22:39:17.855000', '2023-04-18 22:39:17.855000', NULL, NULL),
	(78, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-04-19 16:12:24.438000', '2023-04-19 16:12:24.438000', NULL, NULL),
	(79, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-04-19 16:12:24.448000', '2023-04-19 16:12:24.448000', NULL, NULL),
	(86, 'plugin::content-manager.explorer.delete', 'api::sub-category.sub-category', '{}', '[]', '2023-04-19 16:50:59.478000', '2023-04-19 16:50:59.478000', NULL, NULL),
	(87, 'plugin::content-manager.explorer.publish', 'api::sub-category.sub-category', '{}', '[]', '2023-04-19 16:50:59.484000', '2023-04-19 16:50:59.484000', NULL, NULL),
	(98, 'plugin::content-manager.explorer.create', 'api::sub-category.sub-category', '{"fields": ["title", "products", "categories"]}', '[]', '2023-04-19 16:56:00.243000', '2023-04-19 16:56:00.243000', NULL, NULL),
	(100, 'plugin::content-manager.explorer.read', 'api::sub-category.sub-category', '{"fields": ["title", "products", "categories"]}', '[]', '2023-04-19 16:56:00.260000', '2023-04-19 16:56:00.260000', NULL, NULL),
	(102, 'plugin::content-manager.explorer.update', 'api::sub-category.sub-category', '{"fields": ["title", "products", "categories"]}', '[]', '2023-04-19 16:56:00.275000', '2023-04-19 16:56:00.275000', NULL, NULL),
	(109, 'plugin::content-manager.explorer.create', 'api::category.category', '{"fields": ["title", "description", "img", "products", "sub_categories"]}', '[]', '2023-05-01 21:32:50.568000', '2023-05-01 21:32:50.568000', NULL, NULL),
	(110, 'plugin::content-manager.explorer.read', 'api::category.category', '{"fields": ["title", "description", "img", "products", "sub_categories"]}', '[]', '2023-05-01 21:32:50.576000', '2023-05-01 21:32:50.576000', NULL, NULL),
	(111, 'plugin::content-manager.explorer.update', 'api::category.category', '{"fields": ["title", "description", "img", "products", "sub_categories"]}', '[]', '2023-05-01 21:32:50.585000', '2023-05-01 21:32:50.585000', NULL, NULL),
	(112, 'plugin::content-manager.explorer.create', 'api::product.product', '{"fields": ["title", "isNew", "price", "oldprice", "description", "coverImg", "secondImg", "categories", "sub_categories", "type", "desc"]}', '[]', '2023-05-01 21:33:37.747000', '2023-05-01 21:33:37.747000', NULL, NULL),
	(113, 'plugin::content-manager.explorer.read', 'api::product.product', '{"fields": ["title", "isNew", "price", "oldprice", "description", "coverImg", "secondImg", "categories", "sub_categories", "type", "desc"]}', '[]', '2023-05-01 21:33:37.756000', '2023-05-01 21:33:37.756000', NULL, NULL),
	(114, 'plugin::content-manager.explorer.update', 'api::product.product', '{"fields": ["title", "isNew", "price", "oldprice", "description", "coverImg", "secondImg", "categories", "sub_categories", "type", "desc"]}', '[]', '2023-05-01 21:33:37.762000', '2023-05-01 21:33:37.762000', NULL, NULL),
	(118, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2023-05-03 16:46:06.181000', '2023-05-03 16:46:06.181000', NULL, NULL),
	(119, 'plugin::content-manager.explorer.publish', 'api::order.order', '{}', '[]', '2023-05-03 16:46:06.191000', '2023-05-03 16:46:06.191000', NULL, NULL),
	(123, 'plugin::content-manager.explorer.create', 'api::order.order', '{"fields": ["email", "stripeid", "details"]}', '[]', '2023-07-18 15:49:23.621000', '2023-07-18 15:49:23.621000', NULL, NULL),
	(124, 'plugin::content-manager.explorer.read', 'api::order.order', '{"fields": ["email", "stripeid", "details"]}', '[]', '2023-07-18 15:49:23.631000', '2023-07-18 15:49:23.631000', NULL, NULL),
	(125, 'plugin::content-manager.explorer.update', 'api::order.order', '{"fields": ["email", "stripeid", "details"]}', '[]', '2023-07-18 15:49:23.638000', '2023-07-18 15:49:23.638000', NULL, NULL);

-- 傾印  資料表 shop.admin_permissions_role_links 結構
CREATE TABLE IF NOT EXISTS `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.admin_permissions_role_links 的資料：~89 rows (近似值)
DELETE FROM `admin_permissions_role_links`;
INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 1, 2, 1),
	(2, 2, 2, 2),
	(3, 3, 2, 3),
	(4, 4, 2, 4),
	(5, 5, 2, 5),
	(6, 6, 2, 6),
	(7, 7, 3, 1),
	(8, 8, 3, 2),
	(9, 9, 3, 3),
	(10, 10, 3, 4),
	(11, 11, 3, 5),
	(12, 12, 3, 6),
	(13, 13, 1, 1),
	(14, 14, 1, 2),
	(15, 15, 1, 3),
	(16, 16, 1, 4),
	(17, 17, 1, 5),
	(18, 18, 1, 6),
	(19, 19, 1, 7),
	(20, 20, 1, 8),
	(21, 21, 1, 9),
	(22, 22, 1, 10),
	(23, 23, 1, 11),
	(24, 24, 1, 12),
	(25, 25, 1, 13),
	(26, 26, 1, 14),
	(27, 27, 1, 15),
	(28, 28, 1, 16),
	(29, 29, 1, 17),
	(30, 30, 1, 18),
	(31, 31, 1, 19),
	(32, 32, 1, 20),
	(33, 33, 1, 21),
	(34, 34, 1, 22),
	(35, 35, 1, 23),
	(36, 36, 1, 24),
	(37, 37, 1, 25),
	(38, 38, 1, 26),
	(39, 39, 1, 27),
	(40, 40, 1, 28),
	(41, 41, 1, 29),
	(42, 42, 1, 30),
	(43, 43, 1, 31),
	(44, 44, 1, 32),
	(45, 45, 1, 33),
	(46, 46, 1, 34),
	(47, 47, 1, 35),
	(48, 48, 1, 36),
	(49, 49, 1, 37),
	(50, 50, 1, 38),
	(51, 51, 1, 39),
	(52, 52, 1, 40),
	(53, 53, 1, 41),
	(54, 54, 1, 42),
	(55, 55, 1, 43),
	(56, 56, 1, 44),
	(57, 57, 1, 45),
	(58, 58, 1, 46),
	(59, 59, 1, 47),
	(60, 60, 1, 48),
	(61, 61, 1, 49),
	(62, 62, 1, 50),
	(63, 63, 1, 51),
	(64, 64, 1, 52),
	(65, 65, 1, 53),
	(66, 66, 1, 54),
	(67, 67, 1, 55),
	(68, 68, 1, 56),
	(69, 69, 1, 57),
	(73, 73, 1, 61),
	(74, 74, 1, 62),
	(78, 78, 1, 66),
	(79, 79, 1, 67),
	(86, 86, 1, 74),
	(87, 87, 1, 75),
	(98, 98, 1, 85),
	(100, 100, 1, 87),
	(102, 102, 1, 89),
	(109, 109, 1, 93),
	(110, 110, 1, 94),
	(111, 111, 1, 95),
	(112, 112, 1, 96),
	(113, 113, 1, 97),
	(114, 114, 1, 98),
	(118, 118, 1, 102),
	(119, 119, 1, 103),
	(123, 123, 1, 104),
	(124, 124, 1, 105),
	(125, 125, 1, 106);

-- 傾印  資料表 shop.admin_roles 結構
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.admin_roles 的資料：~3 rows (近似值)
DELETE FROM `admin_roles`;
INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-04-18 22:21:31.559000', '2023-04-18 22:21:31.559000', NULL, NULL),
	(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-04-18 22:21:31.569000', '2023-04-18 22:21:31.569000', NULL, NULL),
	(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-04-18 22:21:31.573000', '2023-04-18 22:21:31.573000', NULL, NULL);

-- 傾印  資料表 shop.admin_users 結構
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.admin_users 的資料：~1 rows (近似值)
DELETE FROM `admin_users`;
INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'adam', 'Cheung', NULL, 'cheungkachun24@gmail.com', '$2a$10$US7yVY7Yl1jebkoSm6tNqOH085gehF35ZPem29Ifq2SwGPrnlydLK', NULL, NULL, 1, 0, NULL, '2023-04-18 22:22:30.034000', '2023-04-18 22:22:30.034000', NULL, NULL);

-- 傾印  資料表 shop.admin_users_roles_links 結構
CREATE TABLE IF NOT EXISTS `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` double unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.admin_users_roles_links 的資料：~1 rows (近似值)
DELETE FROM `admin_users_roles_links`;
INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
	(1, 1, 1, 1, 1);

-- 傾印  資料表 shop.categories 結構
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_created_by_id_fk` (`created_by_id`),
  KEY `categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.categories 的資料：~2 rows (近似值)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'men', 'men  outfit designed by adam', '2023-04-19 17:09:18.150000', '2023-07-27 14:47:28.653000', '2023-04-19 17:09:20.166000', 1, 1),
	(2, 'women', 'women outfit designed by Anna', '2023-04-19 17:10:48.301000', '2023-07-27 14:47:35.802000', '2023-04-19 17:10:49.222000', 1, 1);

-- 傾印  資料表 shop.files 結構
CREATE TABLE IF NOT EXISTS `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.files 的資料：~18 rows (近似值)
DELETE FROM `files`;
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(21, 'photo2.png', NULL, NULL, 464, 649, '{"small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_photo2_e64c3f1cbe.png", "hash": "small_photo2_e64c3f1cbe", "mime": "image/png", "name": "small_photo2.png", "path": null, "size": 25.06, "width": 357, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_photo2_e64c3f1cbe.png", "hash": "thumbnail_photo2_e64c3f1cbe", "mime": "image/png", "name": "thumbnail_photo2.png", "path": null, "size": 3.85, "width": 112, "height": 156}}', 'photo2_e64c3f1cbe', '.png', 'image/png', 38.81, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/photo2_e64c3f1cbe.png', NULL, 'aws-s3', NULL, '/', '2023-07-26 16:04:34.786000', '2023-07-26 16:12:38.381000', 1, 1),
	(22, 'accessories.jpg', NULL, NULL, 1280, 765, '{"large": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_accessories_4f632242d5.jpg", "hash": "large_accessories_4f632242d5", "mime": "image/jpeg", "name": "large_accessories.jpg", "path": null, "size": 122.59, "width": 1000, "height": 598}, "small": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_accessories_4f632242d5.jpg", "hash": "small_accessories_4f632242d5", "mime": "image/jpeg", "name": "small_accessories.jpg", "path": null, "size": 39.02, "width": 500, "height": 299}, "medium": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_accessories_4f632242d5.jpg", "hash": "medium_accessories_4f632242d5", "mime": "image/jpeg", "name": "medium_accessories.jpg", "path": null, "size": 74.91, "width": 750, "height": 448}, "thumbnail": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_accessories_4f632242d5.jpg", "hash": "thumbnail_accessories_4f632242d5", "mime": "image/jpeg", "name": "thumbnail_accessories.jpg", "path": null, "size": 11.82, "width": 245, "height": 146}}', 'accessories_4f632242d5', '.jpg', 'image/jpeg', 191.60, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/accessories_4f632242d5.jpg', NULL, 'aws-s3', NULL, '/', '2023-07-26 16:04:35.259000', '2023-07-26 16:04:35.259000', 1, 1),
	(23, 'gift (1).jpg', NULL, NULL, 6000, 3375, '{"large": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_gift_1_3a3c9d37c2.jpg", "hash": "large_gift_1_3a3c9d37c2", "mime": "image/jpeg", "name": "large_gift (1).jpg", "path": null, "size": 47.42, "width": 1000, "height": 562}, "small": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_gift_1_3a3c9d37c2.jpg", "hash": "small_gift_1_3a3c9d37c2", "mime": "image/jpeg", "name": "small_gift (1).jpg", "path": null, "size": 18.23, "width": 500, "height": 281}, "medium": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_gift_1_3a3c9d37c2.jpg", "hash": "medium_gift_1_3a3c9d37c2", "mime": "image/jpeg", "name": "medium_gift (1).jpg", "path": null, "size": 31.94, "width": 750, "height": 422}, "thumbnail": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_gift_1_3a3c9d37c2.jpg", "hash": "thumbnail_gift_1_3a3c9d37c2", "mime": "image/jpeg", "name": "thumbnail_gift (1).jpg", "path": null, "size": 6.71, "width": 245, "height": 138}}', 'gift_1_3a3c9d37c2', '.jpg', 'image/jpeg', 597.80, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/gift_1_3a3c9d37c2.jpg', NULL, 'aws-s3', NULL, '/', '2023-07-26 16:04:36.062000', '2023-07-26 16:04:36.062000', 1, 1),
	(24, 'sale (1).jpg', NULL, NULL, 1500, 1000, '{"large": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_sale_1_36733a361f.jpg", "hash": "large_sale_1_36733a361f", "mime": "image/jpeg", "name": "large_sale (1).jpg", "path": null, "size": 31.94, "width": 1000, "height": 667}, "small": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_sale_1_36733a361f.jpg", "hash": "small_sale_1_36733a361f", "mime": "image/jpeg", "name": "small_sale (1).jpg", "path": null, "size": 10.71, "width": 500, "height": 333}, "medium": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_sale_1_36733a361f.jpg", "hash": "medium_sale_1_36733a361f", "mime": "image/jpeg", "name": "medium_sale (1).jpg", "path": null, "size": 20.38, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpg", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_sale_1_36733a361f.jpg", "hash": "thumbnail_sale_1_36733a361f", "mime": "image/jpeg", "name": "thumbnail_sale (1).jpg", "path": null, "size": 3.43, "width": 234, "height": 156}}', 'sale_1_36733a361f', '.jpg', 'image/jpeg', 58.84, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/sale_1_36733a361f.jpg', NULL, 'aws-s3', NULL, '/', '2023-07-26 16:04:36.339000', '2023-07-26 16:04:36.339000', 1, 1),
	(25, 'male.png', NULL, NULL, 1367, 2048, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_male_54b7440a9c.png", "hash": "large_male_54b7440a9c", "mime": "image/png", "name": "large_male.png", "path": null, "size": 118.88, "width": 667, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_male_54b7440a9c.png", "hash": "small_male_54b7440a9c", "mime": "image/png", "name": "small_male.png", "path": null, "size": 38.47, "width": 334, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_male_54b7440a9c.png", "hash": "medium_male_54b7440a9c", "mime": "image/png", "name": "medium_male.png", "path": null, "size": 75.85, "width": 501, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_male_54b7440a9c.png", "hash": "thumbnail_male_54b7440a9c", "mime": "image/png", "name": "thumbnail_male.png", "path": null, "size": 4.79, "width": 104, "height": 156}}', 'male_54b7440a9c', '.png', 'image/png', 287.48, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/male_54b7440a9c.png', NULL, 'aws-s3', NULL, '/', '2023-07-26 16:04:36.580000', '2023-07-27 14:47:11.777000', 1, 1),
	(26, 'photo1.png', NULL, NULL, 464, 649, '{"small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_photo1_0fdae8611d.png", "hash": "small_photo1_0fdae8611d", "mime": "image/png", "name": "small_photo1.png", "path": null, "size": 18.67, "width": 357, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_photo1_0fdae8611d.png", "hash": "thumbnail_photo1_0fdae8611d", "mime": "image/png", "name": "thumbnail_photo1.png", "path": null, "size": 2.75, "width": 112, "height": 156}}', 'photo1_0fdae8611d', '.png', 'image/png', 30.99, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/photo1_0fdae8611d.png', NULL, 'aws-s3', NULL, '/', '2023-07-26 22:27:51.122000', '2023-07-26 22:27:51.122000', 1, 1),
	(27, 'photo1 (1).png', NULL, NULL, 464, 649, '{"small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_photo1_1_1db202f285.png", "hash": "small_photo1_1_1db202f285", "mime": "image/png", "name": "small_photo1 (1).png", "path": null, "size": 9.73, "width": 357, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_photo1_1_1db202f285.png", "hash": "thumbnail_photo1_1_1db202f285", "mime": "image/png", "name": "thumbnail_photo1 (1).png", "path": null, "size": 2.15, "width": 112, "height": 156}}', 'photo1_1_1db202f285', '.png', 'image/png', 14.58, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/photo1_1_1db202f285.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:33.487000', '2023-07-27 14:41:33.487000', 1, 1),
	(28, 'photo2 (1).png', NULL, NULL, 464, 649, '{"small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_photo2_1_fcdf641cbf.png", "hash": "small_photo2_1_fcdf641cbf", "mime": "image/png", "name": "small_photo2 (1).png", "path": null, "size": 8.78, "width": 357, "height": 500}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_photo2_1_fcdf641cbf.png", "hash": "thumbnail_photo2_1_fcdf641cbf", "mime": "image/png", "name": "thumbnail_photo2 (1).png", "path": null, "size": 1.9, "width": 112, "height": 156}}', 'photo2_1_fcdf641cbf', '.png', 'image/png', 18.71, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/photo2_1_fcdf641cbf.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:33.502000', '2023-07-27 14:41:33.502000', 1, 1),
	(29, 'electro-denim-lab-6949-2044746-1.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_electro_denim_lab_6949_2044746_1_d589ae1e05.png", "hash": "large_electro_denim_lab_6949_2044746_1_d589ae1e05", "mime": "image/png", "name": "large_electro-denim-lab-6949-2044746-1.png", "path": null, "size": 49.37, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_electro_denim_lab_6949_2044746_1_d589ae1e05.png", "hash": "small_electro_denim_lab_6949_2044746_1_d589ae1e05", "mime": "image/png", "name": "small_electro-denim-lab-6949-2044746-1.png", "path": null, "size": 12.41, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_electro_denim_lab_6949_2044746_1_d589ae1e05.png", "hash": "medium_electro_denim_lab_6949_2044746_1_d589ae1e05", "mime": "image/png", "name": "medium_electro-denim-lab-6949-2044746-1.png", "path": null, "size": 29.26, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_electro_denim_lab_6949_2044746_1_d589ae1e05.png", "hash": "thumbnail_electro_denim_lab_6949_2044746_1_d589ae1e05", "mime": "image/png", "name": "thumbnail_electro-denim-lab-6949-2044746-1.png", "path": null, "size": 1.97, "width": 108, "height": 156}}', 'electro_denim_lab_6949_2044746_1_d589ae1e05', '.png', 'image/png', 63.72, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/electro_denim_lab_6949_2044746_1_d589ae1e05.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:34.248000', '2023-07-27 14:41:34.248000', 1, 1),
	(30, 'dickies-1922-4985116-2.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_dickies_1922_4985116_2_5a1ca40dd2.png", "hash": "large_dickies_1922_4985116_2_5a1ca40dd2", "mime": "image/png", "name": "large_dickies-1922-4985116-2.png", "path": null, "size": 20.66, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_dickies_1922_4985116_2_5a1ca40dd2.png", "hash": "small_dickies_1922_4985116_2_5a1ca40dd2", "mime": "image/png", "name": "small_dickies-1922-4985116-2.png", "path": null, "size": 7.06, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_dickies_1922_4985116_2_5a1ca40dd2.png", "hash": "medium_dickies_1922_4985116_2_5a1ca40dd2", "mime": "image/png", "name": "medium_dickies-1922-4985116-2.png", "path": null, "size": 13.12, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_dickies_1922_4985116_2_5a1ca40dd2.png", "hash": "thumbnail_dickies_1922_4985116_2_5a1ca40dd2", "mime": "image/png", "name": "thumbnail_dickies-1922-4985116-2.png", "path": null, "size": 1.43, "width": 108, "height": 156}}', 'dickies_1922_4985116_2_5a1ca40dd2', '.png', 'image/png', 34.32, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/dickies_1922_4985116_2_5a1ca40dd2.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:36.243000', '2023-07-27 14:41:36.243000', 1, 1),
	(31, 'dickies-1922-4985116-1.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_dickies_1922_4985116_1_c62ea85c26.png", "hash": "large_dickies_1922_4985116_1_c62ea85c26", "mime": "image/png", "name": "large_dickies-1922-4985116-1.png", "path": null, "size": 8.23, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_dickies_1922_4985116_1_c62ea85c26.png", "hash": "small_dickies_1922_4985116_1_c62ea85c26", "mime": "image/png", "name": "small_dickies-1922-4985116-1.png", "path": null, "size": 3.47, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_dickies_1922_4985116_1_c62ea85c26.png", "hash": "medium_dickies_1922_4985116_1_c62ea85c26", "mime": "image/png", "name": "medium_dickies-1922-4985116-1.png", "path": null, "size": 5.65, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_dickies_1922_4985116_1_c62ea85c26.png", "hash": "thumbnail_dickies_1922_4985116_1_c62ea85c26", "mime": "image/png", "name": "thumbnail_dickies-1922-4985116-1.png", "path": null, "size": 0.92, "width": 108, "height": 156}}', 'dickies_1922_4985116_1_c62ea85c26', '.png', 'image/png', 8.73, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/dickies_1922_4985116_1_c62ea85c26.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:48.611000', '2023-07-27 14:41:48.611000', 1, 1),
	(32, 'electro-denim-lab-6949-2044746-2.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_electro_denim_lab_6949_2044746_2_a0a859c3d2.png", "hash": "large_electro_denim_lab_6949_2044746_2_a0a859c3d2", "mime": "image/png", "name": "large_electro-denim-lab-6949-2044746-2.png", "path": null, "size": 69.32, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_electro_denim_lab_6949_2044746_2_a0a859c3d2.png", "hash": "small_electro_denim_lab_6949_2044746_2_a0a859c3d2", "mime": "image/png", "name": "small_electro-denim-lab-6949-2044746-2.png", "path": null, "size": 14.55, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_electro_denim_lab_6949_2044746_2_a0a859c3d2.png", "hash": "medium_electro_denim_lab_6949_2044746_2_a0a859c3d2", "mime": "image/png", "name": "medium_electro-denim-lab-6949-2044746-2.png", "path": null, "size": 37.54, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_electro_denim_lab_6949_2044746_2_a0a859c3d2.png", "hash": "thumbnail_electro_denim_lab_6949_2044746_2_a0a859c3d2", "mime": "image/png", "name": "thumbnail_electro-denim-lab-6949-2044746-2.png", "path": null, "size": 1.76, "width": 108, "height": 156}}', 'electro_denim_lab_6949_2044746_2_a0a859c3d2', '.png', 'image/png', 88.84, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/electro_denim_lab_6949_2044746_2_a0a859c3d2.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:41:57.200000', '2023-07-27 14:41:57.200000', 1, 1),
	(33, 'under-armour-6592-2190536-3.webp', NULL, NULL, 762, 1100, '{"large": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_under_armour_6592_2190536_3_20267029ca.webp", "hash": "large_under_armour_6592_2190536_3_20267029ca", "mime": "image/webp", "name": "large_under-armour-6592-2190536-3.webp", "path": null, "size": 23, "width": 693, "height": 1000}, "small": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_under_armour_6592_2190536_3_20267029ca.webp", "hash": "small_under_armour_6592_2190536_3_20267029ca", "mime": "image/webp", "name": "small_under-armour-6592-2190536-3.webp", "path": null, "size": 10.76, "width": 346, "height": 500}, "medium": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_under_armour_6592_2190536_3_20267029ca.webp", "hash": "medium_under_armour_6592_2190536_3_20267029ca", "mime": "image/webp", "name": "medium_under-armour-6592-2190536-3.webp", "path": null, "size": 17.27, "width": 520, "height": 750}, "thumbnail": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_under_armour_6592_2190536_3_20267029ca.webp", "hash": "thumbnail_under_armour_6592_2190536_3_20267029ca", "mime": "image/webp", "name": "thumbnail_under-armour-6592-2190536-3.webp", "path": null, "size": 2.48, "width": 108, "height": 156}}', 'under_armour_6592_2190536_3_20267029ca', '.webp', 'image/webp', 26.94, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/under_armour_6592_2190536_3_20267029ca.webp', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:54:52.043000', '2023-07-27 14:54:52.043000', 1, 1),
	(34, 'urban-revivo-9417-5185836-1.webp', NULL, NULL, 762, 1100, '{"large": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_urban_revivo_9417_5185836_1_08d0e44cf8.webp", "hash": "large_urban_revivo_9417_5185836_1_08d0e44cf8", "mime": "image/webp", "name": "large_urban-revivo-9417-5185836-1.webp", "path": null, "size": 69.26, "width": 693, "height": 1000}, "small": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_urban_revivo_9417_5185836_1_08d0e44cf8.webp", "hash": "small_urban_revivo_9417_5185836_1_08d0e44cf8", "mime": "image/webp", "name": "small_urban-revivo-9417-5185836-1.webp", "path": null, "size": 22.21, "width": 346, "height": 500}, "medium": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_urban_revivo_9417_5185836_1_08d0e44cf8.webp", "hash": "medium_urban_revivo_9417_5185836_1_08d0e44cf8", "mime": "image/webp", "name": "medium_urban-revivo-9417-5185836-1.webp", "path": null, "size": 44.35, "width": 520, "height": 750}, "thumbnail": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_urban_revivo_9417_5185836_1_08d0e44cf8.webp", "hash": "thumbnail_urban_revivo_9417_5185836_1_08d0e44cf8", "mime": "image/webp", "name": "thumbnail_urban-revivo-9417-5185836-1.webp", "path": null, "size": 2.99, "width": 108, "height": 156}}', 'urban_revivo_9417_5185836_1_08d0e44cf8', '.webp', 'image/webp', 83.02, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/urban_revivo_9417_5185836_1_08d0e44cf8.webp', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:54:52.995000', '2023-07-27 14:54:52.995000', 1, 1),
	(35, 'urban-revivo-9418-5185836-3.webp', NULL, NULL, 762, 1100, '{"large": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_urban_revivo_9418_5185836_3_35816cd3a6.webp", "hash": "large_urban_revivo_9418_5185836_3_35816cd3a6", "mime": "image/webp", "name": "large_urban-revivo-9418-5185836-3.webp", "path": null, "size": 117.05, "width": 693, "height": 1000}, "small": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_urban_revivo_9418_5185836_3_35816cd3a6.webp", "hash": "small_urban_revivo_9418_5185836_3_35816cd3a6", "mime": "image/webp", "name": "small_urban-revivo-9418-5185836-3.webp", "path": null, "size": 39.86, "width": 346, "height": 500}, "medium": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_urban_revivo_9418_5185836_3_35816cd3a6.webp", "hash": "medium_urban_revivo_9418_5185836_3_35816cd3a6", "mime": "image/webp", "name": "medium_urban-revivo-9418-5185836-3.webp", "path": null, "size": 77.33, "width": 520, "height": 750}, "thumbnail": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_urban_revivo_9418_5185836_3_35816cd3a6.webp", "hash": "thumbnail_urban_revivo_9418_5185836_3_35816cd3a6", "mime": "image/webp", "name": "thumbnail_urban-revivo-9418-5185836-3.webp", "path": null, "size": 5.48, "width": 108, "height": 156}}', 'urban_revivo_9418_5185836_3_35816cd3a6', '.webp', 'image/webp', 134.95, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/urban_revivo_9418_5185836_3_35816cd3a6.webp', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:54:53.301000', '2023-07-27 14:54:53.301000', 1, 1),
	(36, 'under-armour-6592-2190536-1.webp', NULL, NULL, 762, 1100, '{"large": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_under_armour_6592_2190536_1_5f105025e4.webp", "hash": "large_under_armour_6592_2190536_1_5f105025e4", "mime": "image/webp", "name": "large_under-armour-6592-2190536-1.webp", "path": null, "size": 18.47, "width": 693, "height": 1000}, "small": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_under_armour_6592_2190536_1_5f105025e4.webp", "hash": "small_under_armour_6592_2190536_1_5f105025e4", "mime": "image/webp", "name": "small_under-armour-6592-2190536-1.webp", "path": null, "size": 8.29, "width": 346, "height": 500}, "medium": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_under_armour_6592_2190536_1_5f105025e4.webp", "hash": "medium_under_armour_6592_2190536_1_5f105025e4", "mime": "image/webp", "name": "medium_under-armour-6592-2190536-1.webp", "path": null, "size": 13.47, "width": 520, "height": 750}, "thumbnail": {"ext": ".webp", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_under_armour_6592_2190536_1_5f105025e4.webp", "hash": "thumbnail_under_armour_6592_2190536_1_5f105025e4", "mime": "image/webp", "name": "thumbnail_under-armour-6592-2190536-1.webp", "path": null, "size": 1.95, "width": 108, "height": 156}}', 'under_armour_6592_2190536_1_5f105025e4', '.webp', 'image/webp', 21.99, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/under_armour_6592_2190536_1_5f105025e4.webp', NULL, 'aws-s3', NULL, '/', '2023-07-27 14:55:34.855000', '2023-07-27 14:55:34.855000', 1, 1),
	(37, 'under-armour-6592-2190536-3.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_under_armour_6592_2190536_3_346d3ec1ac.png", "hash": "large_under_armour_6592_2190536_3_346d3ec1ac", "mime": "image/png", "name": "large_under-armour-6592-2190536-3.png", "path": null, "size": 23, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_under_armour_6592_2190536_3_346d3ec1ac.png", "hash": "small_under_armour_6592_2190536_3_346d3ec1ac", "mime": "image/png", "name": "small_under-armour-6592-2190536-3.png", "path": null, "size": 10.76, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_under_armour_6592_2190536_3_346d3ec1ac.png", "hash": "medium_under_armour_6592_2190536_3_346d3ec1ac", "mime": "image/png", "name": "medium_under-armour-6592-2190536-3.png", "path": null, "size": 17.27, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_under_armour_6592_2190536_3_346d3ec1ac.png", "hash": "thumbnail_under_armour_6592_2190536_3_346d3ec1ac", "mime": "image/png", "name": "thumbnail_under-armour-6592-2190536-3.png", "path": null, "size": 2.48, "width": 108, "height": 156}}', 'under_armour_6592_2190536_3_346d3ec1ac', '.png', 'image/png', 26.94, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/under_armour_6592_2190536_3_346d3ec1ac.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 15:09:34.959000', '2023-07-27 15:09:34.959000', 1, 1),
	(38, 'under-armour-6592-2190536-1.png', NULL, NULL, 762, 1100, '{"large": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/large_under_armour_6592_2190536_1_abae121f27.png", "hash": "large_under_armour_6592_2190536_1_abae121f27", "mime": "image/png", "name": "large_under-armour-6592-2190536-1.png", "path": null, "size": 18.47, "width": 693, "height": 1000}, "small": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/small_under_armour_6592_2190536_1_abae121f27.png", "hash": "small_under_armour_6592_2190536_1_abae121f27", "mime": "image/png", "name": "small_under-armour-6592-2190536-1.png", "path": null, "size": 8.29, "width": 346, "height": 500}, "medium": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/medium_under_armour_6592_2190536_1_abae121f27.png", "hash": "medium_under_armour_6592_2190536_1_abae121f27", "mime": "image/png", "name": "medium_under-armour-6592-2190536-1.png", "path": null, "size": 13.47, "width": 520, "height": 750}, "thumbnail": {"ext": ".png", "url": "https://strapi-aw3-image-bucket.s3.amazonaws.com/thumbnail_under_armour_6592_2190536_1_abae121f27.png", "hash": "thumbnail_under_armour_6592_2190536_1_abae121f27", "mime": "image/png", "name": "thumbnail_under-armour-6592-2190536-1.png", "path": null, "size": 1.95, "width": 108, "height": 156}}', 'under_armour_6592_2190536_1_abae121f27', '.png', 'image/png', 21.99, 'https://strapi-aw3-image-bucket.s3.amazonaws.com/under_armour_6592_2190536_1_abae121f27.png', NULL, 'aws-s3', NULL, '/', '2023-07-27 15:09:58.175000', '2023-07-27 15:09:58.175000', 1, 1);

-- 傾印  資料表 shop.files_folder_links 結構
CREATE TABLE IF NOT EXISTS `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.files_folder_links 的資料：~0 rows (近似值)
DELETE FROM `files_folder_links`;

-- 傾印  資料表 shop.files_related_morphs 結構
CREATE TABLE IF NOT EXISTS `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.files_related_morphs 的資料：~14 rows (近似值)
DELETE FROM `files_related_morphs`;
INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
	(35, 26, 2, 'api::product.product', 'coverImg', 1),
	(36, 21, 2, 'api::product.product', 'secondImg', 1),
	(37, 25, 1, 'api::category.category', 'img', 1),
	(38, 24, 2, 'api::category.category', 'img', 1),
	(39, 27, 1, 'api::product.product', 'coverImg', 1),
	(40, 28, 1, 'api::product.product', 'secondImg', 1),
	(43, 29, 3, 'api::product.product', 'coverImg', 1),
	(44, 32, 3, 'api::product.product', 'secondImg', 1),
	(47, 30, 4, 'api::product.product', 'coverImg', 1),
	(48, 31, 4, 'api::product.product', 'secondImg', 1),
	(49, 34, 5, 'api::product.product', 'coverImg', 1),
	(50, 35, 5, 'api::product.product', 'secondImg', 1),
	(53, 38, 6, 'api::product.product', 'coverImg', 1),
	(54, 37, 6, 'api::product.product', 'secondImg', 1);

-- 傾印  資料表 shop.i18n_locale 結構
CREATE TABLE IF NOT EXISTS `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.i18n_locale 的資料：~1 rows (近似值)
DELETE FROM `i18n_locale`;
INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'English (en)', 'en', '2023-04-18 22:21:31.518000', '2023-04-18 22:21:31.518000', NULL, NULL);

-- 傾印  資料表 shop.orders 結構
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `stripeid` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `details` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_created_by_id_fk` (`created_by_id`),
  KEY `orders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.orders 的資料：~2 rows (近似值)
DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `email`, `stripeid`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `details`) VALUES
	(76, 'chun2322@gmail.com', 'cs_test_a1eEz3UcGYp9AAcU1aY3su5OqWFTvBN6w6XJLSyBB5F5u64V8EdYrKLKZt', '2023-07-27 15:58:26.248000', '2023-07-27 15:58:26.248000', '2023-07-27 15:58:26.238000', NULL, NULL, '[{"id": 2, "img": "https://strapi-aw3-image-bucket.s3.amazonaws.com/photo1_0fdae8611d.png", "price": 40, "title": "women dress", "quantity": 1, "description": "pretty"}]'),
	(77, 'chun2322@gmail.com', 'cs_test_b1O3sKBJL9pi1GgHsHwLgVK8DYbAK3Lm7i2foPtY2lfsNGVwAsHQ9zAt3S', '2023-07-27 16:01:23.895000', '2023-07-27 16:01:23.895000', '2023-07-27 16:01:23.886000', NULL, NULL, '[{"id": 3, "img": "https://strapi-aw3-image-bucket.s3.amazonaws.com/electro_denim_lab_6949_2044746_1_d589ae1e05.png", "price": 70, "title": "blue shirt", "quantity": 2, "description": null}, {"id": 5, "img": "https://strapi-aw3-image-bucket.s3.amazonaws.com/urban_revivo_9417_5185836_1_08d0e44cf8.webp", "price": 70, "title": "Cami dress", "quantity": 1, "description": null}]');

-- 傾印  資料表 shop.products 結構
CREATE TABLE IF NOT EXISTS `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `oldprice` decimal(10,2) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `desc` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_created_by_id_fk` (`created_by_id`),
  KEY `products_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.products 的資料：~6 rows (近似值)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `title`, `is_new`, `price`, `oldprice`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `type`, `desc`) VALUES
	(1, ' test product', 0, 50.00, 30.00, 'test product', '2023-04-19 17:06:50.973000', '2023-07-27 14:48:06.188000', '2023-04-19 17:33:27.256000', 1, 1, 'featured', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "white", "hightlight": "BlackShoulder-to-shoulder taping Crew neck"}'),
	(2, 'women dress', 1, 40.00, NULL, 'pretty', '2023-04-19 17:38:50.965000', '2023-07-26 22:28:18.051000', '2023-04-19 17:38:52.513000', 1, 1, 'popular', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "white", "hightlight": "BlackShoulder-to-shoulder taping Crew neck"}'),
	(3, 'blue shirt', 1, 70.00, 80.00, NULL, '2023-07-27 14:49:25.591000', '2023-07-27 15:06:23.613000', '2023-07-27 15:06:23.609000', 1, 1, 'featured', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "blue", "hightlight": "BlackShoulder-to-shoulder taping Crew neck"}'),
	(4, 'black short', 0, 100.00, 120.00, NULL, '2023-07-27 14:51:13.510000', '2023-07-27 15:06:20.607000', '2023-07-27 15:06:20.604000', 1, 1, 'featured', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "black", "hightlight": "BlackShoulder-to-shoulder taping Crew neck"}'),
	(5, 'Cami dress', 1, 70.00, 80.00, NULL, '2023-07-27 15:00:28.582000', '2023-07-27 15:06:26.964000', '2023-07-27 15:06:26.961000', 1, 1, 'popular', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "blue, orange", "hightlight": "designed by Dr. LaLa"}'),
	(6, 'Logo Under Armor T-shirt', 0, 60.00, 50.00, NULL, '2023-07-27 15:01:43.688000', '2023-07-27 15:10:19.064000', '2023-07-27 15:07:00.523000', 1, 1, 'general ', '{"care": "Care label Washing instructions - Cold Water Machine Wash", "color": "pale blue", "hightlight": "anniversary t-shirt"}');

-- 傾印  資料表 shop.products_categories_links 結構
CREATE TABLE IF NOT EXISTS `products_categories_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `category_order` double unsigned DEFAULT NULL,
  `product_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_categories_links_unique` (`product_id`,`category_id`),
  KEY `products_categories_links_fk` (`product_id`),
  KEY `products_categories_links_inv_fk` (`category_id`),
  KEY `products_categories_links_order_fk` (`category_order`),
  KEY `products_categories_links_order_inv_fk` (`product_order`),
  CONSTRAINT `products_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.products_categories_links 的資料：~9 rows (近似值)
DELETE FROM `products_categories_links`;
INSERT INTO `products_categories_links` (`id`, `product_id`, `category_id`, `category_order`, `product_order`) VALUES
	(1, 1, 2, 2, 1),
	(2, 1, 1, 1, 1),
	(3, 2, 2, 0, 2),
	(4, 3, 1, 1, 2),
	(5, 4, 2, 2, 3),
	(6, 4, 1, 1, 3),
	(7, 5, 2, 0, 4),
	(8, 6, 2, 1, 5),
	(9, 6, 1, 0, 4);

-- 傾印  資料表 shop.products_sub_categories_links 結構
CREATE TABLE IF NOT EXISTS `products_sub_categories_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `sub_category_id` int unsigned DEFAULT NULL,
  `sub_category_order` double unsigned DEFAULT NULL,
  `product_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_sub_categories_links_unique` (`product_id`,`sub_category_id`),
  KEY `products_sub_categories_links_fk` (`product_id`),
  KEY `products_sub_categories_links_inv_fk` (`sub_category_id`),
  KEY `products_sub_categories_links_order_fk` (`sub_category_order`),
  KEY `products_sub_categories_links_order_inv_fk` (`product_order`),
  CONSTRAINT `products_sub_categories_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_sub_categories_links_inv_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.products_sub_categories_links 的資料：~6 rows (近似值)
DELETE FROM `products_sub_categories_links`;
INSERT INTO `products_sub_categories_links` (`id`, `product_id`, `sub_category_id`, `sub_category_order`, `product_order`) VALUES
	(1, 1, 4, 1, 1),
	(2, 2, 3, 0, 1),
	(3, 3, 1, 1, 1),
	(4, 4, 6, 1, 0),
	(5, 5, 3, 0, 2),
	(6, 6, 7, 0, 1);

-- 傾印  資料表 shop.strapi_api_tokens 結構
CREATE TABLE IF NOT EXISTS `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_api_tokens 的資料：~1 rows (近似值)
DELETE FROM `strapi_api_tokens`;
INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'myapi', '', 'custom', '48a96f10f1e211cd241d2699e82ede2fe169f9ca3405c9c61178fe3efe8dcfa41466ea36731e77e31bdf017b757fcebc4dec6c762cecaafd438a6ba3443f6909', '2023-07-27 16:01:48.383000', NULL, NULL, '2023-04-19 17:43:22.855000', '2023-07-27 16:01:48.383000', NULL, NULL);

-- 傾印  資料表 shop.strapi_api_token_permissions 結構
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_api_token_permissions 的資料：~16 rows (近似值)
DELETE FROM `strapi_api_token_permissions`;
INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'api::category.category.find', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(2, 'api::category.category.findOne', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(3, 'api::product.product.find', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(4, 'api::product.product.findOne', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(5, 'api::sub-category.sub-category.findOne', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(6, 'api::sub-category.sub-category.find', '2023-04-19 17:43:22.886000', '2023-04-19 17:43:22.886000', NULL, NULL),
	(7, 'api::order.order.create', '2023-05-05 21:43:18.327000', '2023-05-05 21:43:18.327000', NULL, NULL),
	(8, 'api::order.order.update', '2023-05-05 21:54:48.482000', '2023-05-05 21:54:48.482000', NULL, NULL),
	(9, 'plugin::users-permissions.user.create', '2023-05-05 22:34:38.121000', '2023-05-05 22:34:38.121000', NULL, NULL),
	(10, 'plugin::users-permissions.user.findOne', '2023-07-11 00:51:35.092000', '2023-07-11 00:51:35.092000', NULL, NULL),
	(11, 'plugin::users-permissions.user.find', '2023-07-11 00:51:35.092000', '2023-07-11 00:51:35.092000', NULL, NULL),
	(12, 'api::order.order.findOne', '2023-07-11 00:53:57.989000', '2023-07-11 00:53:57.989000', NULL, NULL),
	(13, 'api::order.order.find', '2023-07-11 00:53:57.989000', '2023-07-11 00:53:57.989000', NULL, NULL),
	(14, 'plugin::users-permissions.user.count', '2023-07-11 01:15:28.343000', '2023-07-11 01:15:28.343000', NULL, NULL),
	(15, 'plugin::users-permissions.role.findOne', '2023-07-11 01:15:28.343000', '2023-07-11 01:15:28.343000', NULL, NULL),
	(16, 'plugin::users-permissions.role.find', '2023-07-11 01:15:28.343000', '2023-07-11 01:15:28.343000', NULL, NULL);

-- 傾印  資料表 shop.strapi_api_token_permissions_token_links 結構
CREATE TABLE IF NOT EXISTS `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_api_token_permissions_token_links 的資料：~16 rows (近似值)
DELETE FROM `strapi_api_token_permissions_token_links`;
INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
	(1, 1, 1, 1),
	(2, 3, 1, 1),
	(3, 2, 1, 1),
	(4, 4, 1, 1),
	(5, 5, 1, 2),
	(6, 6, 1, 2),
	(7, 7, 1, 3),
	(8, 8, 1, 4),
	(9, 9, 1, 5),
	(10, 10, 1, 6),
	(11, 11, 1, 6),
	(12, 12, 1, 7),
	(13, 13, 1, 7),
	(14, 14, 1, 8),
	(15, 15, 1, 8),
	(16, 16, 1, 8);

-- 傾印  資料表 shop.strapi_core_store_settings 結構
CREATE TABLE IF NOT EXISTS `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_core_store_settings 的資料：~26 rows (近似值)
DELETE FROM `strapi_core_store_settings`;
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
	(1, 'strapi_content_types_schema', '{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"products":{"type":"relation","relation":"manyToMany","target":"api::product.product","mappedBy":"categories"},"sub_categories":{"type":"relation","relation":"manyToMany","target":"api::sub-category.sub-category","mappedBy":"categories"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"text"},"img":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"products":{"type":"relation","relation":"manyToMany","target":"api::product.product","mappedBy":"categories"},"sub_categories":{"type":"relation","relation":"manyToMany","target":"api::sub-category.sub-category","mappedBy":"categories"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"api::order.order":{"kind":"collectionType","collectionName":"orders","info":{"singularName":"order","pluralName":"orders","displayName":"order","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"email"},"stripeid":{"type":"string"},"details":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"orders","info":{"singularName":"order","pluralName":"orders","displayName":"order","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"email":{"type":"email"},"stripeid":{"type":"string"},"details":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"order","connection":"default","uid":"api::order.order","apiName":"order","globalId":"Order","actions":{},"lifecycles":{}},"api::product.product":{"kind":"collectionType","collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"isNew":{"type":"boolean","default":false},"price":{"type":"decimal"},"oldprice":{"type":"decimal"},"description":{"type":"text"},"coverImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"secondImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"products"},"sub_categories":{"type":"relation","relation":"manyToMany","target":"api::sub-category.sub-category","inversedBy":"products"},"type":{"type":"enumeration","enum":["general ","featured","popular"]},"desc":{"type":"json"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"products","info":{"singularName":"product","pluralName":"products","displayName":"product","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"isNew":{"type":"boolean","default":false},"price":{"type":"decimal"},"oldprice":{"type":"decimal"},"description":{"type":"text"},"coverImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"secondImg":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"products"},"sub_categories":{"type":"relation","relation":"manyToMany","target":"api::sub-category.sub-category","inversedBy":"products"},"type":{"type":"enumeration","enum":["general ","featured","popular"]},"desc":{"type":"json"}},"kind":"collectionType"},"modelType":"contentType","modelName":"product","connection":"default","uid":"api::product.product","apiName":"product","globalId":"Product","actions":{},"lifecycles":{}},"api::sub-category.sub-category":{"kind":"collectionType","collectionName":"sub_categories","info":{"singularName":"sub-category","pluralName":"sub-categories","displayName":"subCategory","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"products":{"type":"relation","relation":"manyToMany","target":"api::product.product","mappedBy":"sub_categories"},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"sub_categories"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sub_categories","info":{"singularName":"sub-category","pluralName":"sub-categories","displayName":"subCategory","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"products":{"type":"relation","relation":"manyToMany","target":"api::product.product","mappedBy":"sub_categories"},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"sub_categories"}},"kind":"collectionType"},"modelType":"contentType","modelName":"sub-category","connection":"default","uid":"api::sub-category.sub-category","apiName":"sub-category","globalId":"SubCategory","actions":{},"lifecycles":{}}}', 'object', NULL, NULL),
	(2, 'plugin_content_manager_configuration_content_types::admin::user', '{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}', 'object', NULL, NULL),
	(3, 'plugin_content_manager_configuration_content_types::admin::role', '{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}', 'object', NULL, NULL),
	(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}', 'object', NULL, NULL),
	(5, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}', 'object', NULL, NULL),
	(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}', 'object', NULL, NULL),
	(7, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}', 'object', NULL, NULL),
	(8, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}', 'object', NULL, NULL),
	(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}', 'object', NULL, NULL),
	(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}', 'object', NULL, NULL),
	(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}', 'object', NULL, NULL),
	(12, 'plugin_content_manager_configuration_content_types::admin::permission', '{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}', 'object', NULL, NULL),
	(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}', 'object', NULL, NULL),
	(14, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', NULL, NULL),
	(15, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}', 'object', NULL, NULL),
	(16, 'plugin_upload_view_configuration', '{"pageSize":10,"sort":"createdAt:DESC"}', 'object', NULL, NULL),
	(17, 'plugin_upload_metrics', '{"weeklySchedule":"24 52 15 * * 1","lastWeeklyUpdate":1690185144551}', 'object', NULL, NULL),
	(18, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}', 'object', NULL, NULL),
	(19, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}', 'object', NULL, NULL),
	(20, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', NULL, NULL),
	(21, 'plugin_i18n_default_locale', '"en"', 'string', NULL, NULL),
	(22, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', NULL, NULL),
	(23, 'plugin_content_manager_configuration_content_types::api::product.product', '{"uid":"api::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"isNew":{"edit":{"label":"isNew","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isNew","searchable":true,"sortable":true}},"price":{"edit":{"label":"price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"price","searchable":true,"sortable":true}},"oldprice":{"edit":{"label":"oldprice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"oldprice","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"coverImg":{"edit":{"label":"coverImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"coverImg","searchable":false,"sortable":false}},"secondImg":{"edit":{"label":"secondImg","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"secondImg","searchable":false,"sortable":false}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"categories","searchable":false,"sortable":false}},"sub_categories":{"edit":{"label":"sub_categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"sub_categories","searchable":false,"sortable":false}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"desc":{"edit":{"label":"desc","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"desc","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","isNew","price"],"edit":[[{"name":"title","size":6},{"name":"isNew","size":4}],[{"name":"price","size":4},{"name":"oldprice","size":4}],[{"name":"description","size":6},{"name":"coverImg","size":6}],[{"name":"secondImg","size":6},{"name":"categories","size":6}],[{"name":"sub_categories","size":6},{"name":"type","size":6}],[{"name":"desc","size":12}]]}}', 'object', NULL, NULL),
	(24, 'plugin_content_manager_configuration_content_types::api::category.category', '{"uid":"api::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":false,"sortable":false}},"products":{"edit":{"label":"products","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"products","searchable":false,"sortable":false}},"sub_categories":{"edit":{"label":"sub_categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"sub_categories","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","createdAt"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"img","size":6},{"name":"products","size":6}],[{"name":"sub_categories","size":6}]]}}', 'object', NULL, NULL),
	(25, 'plugin_content_manager_configuration_content_types::api::sub-category.sub-category', '{"uid":"api::sub-category.sub-category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"products":{"edit":{"label":"products","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"products","searchable":false,"sortable":false}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"categories","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","createdAt","updatedAt"],"edit":[[{"name":"title","size":6},{"name":"products","size":6}],[{"name":"categories","size":6}]]}}', 'object', NULL, NULL),
	(26, 'plugin_content_manager_configuration_content_types::api::order.order', '{"uid":"api::order.order","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"stripeid","defaultSortBy":"stripeid","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"stripeid":{"edit":{"label":"stripeid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"stripeid","searchable":true,"sortable":true}},"details":{"edit":{"label":"details","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"details","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","stripeid","createdAt"],"edit":[[{"name":"email","size":6},{"name":"stripeid","size":6}],[{"name":"details","size":12}]]}}', 'object', NULL, NULL);

-- 傾印  資料表 shop.strapi_database_schema 結構
CREATE TABLE IF NOT EXISTS `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_database_schema 的資料：~1 rows (近似值)
DELETE FROM `strapi_database_schema`;
INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
	(14, '{"tables": [{"name": "strapi_core_store_settings", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "value", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "environment", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "tag", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}], "indexes": [], "foreignKeys": []}, {"name": "strapi_webhooks", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "url", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "headers", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "events", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "enabled", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}], "indexes": [], "foreignKeys": []}, {"name": "admin_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "subject", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "properties", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "conditions", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_users", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "firstname", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lastname", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "username", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "email", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "password", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "reset_password_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "registration_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "is_active", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "blocked", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "prefered_language", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_users_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_users_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_users_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_users_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_roles", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "code", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_roles_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "admin_roles_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "admin_roles_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_roles_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_api_tokens", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "access_key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "last_used_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "expires_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lifespan", "type": "bigInteger", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_tokens_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_api_tokens_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_api_tokens_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_api_tokens_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_api_token_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_token_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_api_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_api_token_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_api_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_tokens", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "access_key", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "last_used_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "expires_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "lifespan", "type": "bigInteger", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_tokens_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_transfer_tokens_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_transfer_tokens_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_transfer_tokens_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_token_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_token_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "strapi_transfer_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "strapi_transfer_token_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "strapi_transfer_token_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "files", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "alternative_text", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "caption", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "width", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "height", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "formats", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "hash", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "ext", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "mime", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [10, 2], "name": "size", "type": "decimal", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "url", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "preview_url", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider_metadata", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_path", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_files_folder_path_index", "type": null, "columns": ["folder_path"]}, {"name": "upload_files_created_at_index", "type": null, "columns": ["created_at"]}, {"name": "upload_files_updated_at_index", "type": null, "columns": ["updated_at"]}, {"name": "upload_files_name_index", "type": null, "columns": ["name"]}, {"name": "upload_files_size_index", "type": null, "columns": ["size"]}, {"name": "upload_files_ext_index", "type": null, "columns": ["ext"]}, {"name": "files_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "files_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "files_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "files_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "upload_folders", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "path_id", "type": "integer", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "path", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_folders_path_id_index", "type": "unique", "columns": ["path_id"]}, {"name": "upload_folders_path_index", "type": "unique", "columns": ["path"]}, {"name": "upload_folders_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "upload_folders_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "upload_folders_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "upload_folders_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "i18n_locale", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "code", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "i18n_locale_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "i18n_locale_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "i18n_locale_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "i18n_locale_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_permissions", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "action", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_permissions_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_permissions_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_permissions_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_permissions_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_roles", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "name", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "description", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_roles_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_roles_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_roles_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_roles_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "up_users", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "username", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "email", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "provider", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "password", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "reset_password_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "confirmation_token", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "confirmed", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "blocked", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_users_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "up_users_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "up_users_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "up_users_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "categories", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "title", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "description", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "categories_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "categories_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "categories_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "categories_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "orders", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "email", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "stripeid", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "details", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "orders_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "orders_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "orders_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "orders_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "products", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "title", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "is_new", "type": "boolean", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [10, 2], "name": "price", "type": "decimal", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [10, 2], "name": "oldprice", "type": "decimal", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": ["longtext"], "name": "description", "type": "text", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "desc", "type": "jsonb", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "products_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "products_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "products_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "products_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "sub_categories", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "title", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "created_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "updated_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [{"useTz": false, "precision": 6}], "name": "published_at", "type": "datetime", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "created_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "updated_by_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "sub_categories_created_by_id_fk", "columns": ["created_by_id"]}, {"name": "sub_categories_updated_by_id_fk", "columns": ["updated_by_id"]}], "foreignKeys": [{"name": "sub_categories_created_by_id_fk", "columns": ["created_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "sub_categories_updated_by_id_fk", "columns": ["updated_by_id"], "onDelete": "SET NULL", "referencedTable": "admin_users", "referencedColumns": ["id"]}]}, {"name": "admin_permissions_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_permissions_role_links_fk", "columns": ["permission_id"]}, {"name": "admin_permissions_role_links_inv_fk", "columns": ["role_id"]}, {"name": "admin_permissions_role_links_unique", "type": "unique", "columns": ["permission_id", "role_id"]}, {"name": "admin_permissions_role_links_order_inv_fk", "columns": ["permission_order"]}], "foreignKeys": [{"name": "admin_permissions_role_links_fk", "columns": ["permission_id"], "onDelete": "CASCADE", "referencedTable": "admin_permissions", "referencedColumns": ["id"]}, {"name": "admin_permissions_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "admin_roles", "referencedColumns": ["id"]}]}, {"name": "admin_users_roles_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "user_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "user_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "admin_users_roles_links_fk", "columns": ["user_id"]}, {"name": "admin_users_roles_links_inv_fk", "columns": ["role_id"]}, {"name": "admin_users_roles_links_unique", "type": "unique", "columns": ["user_id", "role_id"]}, {"name": "admin_users_roles_links_order_fk", "columns": ["role_order"]}, {"name": "admin_users_roles_links_order_inv_fk", "columns": ["user_order"]}], "foreignKeys": [{"name": "admin_users_roles_links_fk", "columns": ["user_id"], "onDelete": "CASCADE", "referencedTable": "admin_users", "referencedColumns": ["id"]}, {"name": "admin_users_roles_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "admin_roles", "referencedColumns": ["id"]}]}, {"name": "strapi_api_token_permissions_token_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "api_token_permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "api_token_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "api_token_permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_api_token_permissions_token_links_fk", "columns": ["api_token_permission_id"]}, {"name": "strapi_api_token_permissions_token_links_inv_fk", "columns": ["api_token_id"]}, {"name": "strapi_api_token_permissions_token_links_unique", "type": "unique", "columns": ["api_token_permission_id", "api_token_id"]}, {"name": "strapi_api_token_permissions_token_links_order_inv_fk", "columns": ["api_token_permission_order"]}], "foreignKeys": [{"name": "strapi_api_token_permissions_token_links_fk", "columns": ["api_token_permission_id"], "onDelete": "CASCADE", "referencedTable": "strapi_api_token_permissions", "referencedColumns": ["id"]}, {"name": "strapi_api_token_permissions_token_links_inv_fk", "columns": ["api_token_id"], "onDelete": "CASCADE", "referencedTable": "strapi_api_tokens", "referencedColumns": ["id"]}]}, {"name": "strapi_transfer_token_permissions_token_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "transfer_token_permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "transfer_token_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "transfer_token_permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "strapi_transfer_token_permissions_token_links_fk", "columns": ["transfer_token_permission_id"]}, {"name": "strapi_transfer_token_permissions_token_links_inv_fk", "columns": ["transfer_token_id"]}, {"name": "strapi_transfer_token_permissions_token_links_unique", "type": "unique", "columns": ["transfer_token_permission_id", "transfer_token_id"]}, {"name": "strapi_transfer_token_permissions_token_links_order_inv_fk", "columns": ["transfer_token_permission_order"]}], "foreignKeys": [{"name": "strapi_transfer_token_permissions_token_links_fk", "columns": ["transfer_token_permission_id"], "onDelete": "CASCADE", "referencedTable": "strapi_transfer_token_permissions", "referencedColumns": ["id"]}, {"name": "strapi_transfer_token_permissions_token_links_inv_fk", "columns": ["transfer_token_id"], "onDelete": "CASCADE", "referencedTable": "strapi_transfer_tokens", "referencedColumns": ["id"]}]}, {"name": "files_related_morphs", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "file_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "related_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "related_type", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "field", "type": "string", "unsigned": false, "defaultTo": null, "notNullable": false}, {"args": [], "name": "order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "files_related_morphs_fk", "columns": ["file_id"]}], "foreignKeys": [{"name": "files_related_morphs_fk", "columns": ["file_id"], "onDelete": "CASCADE", "referencedTable": "files", "referencedColumns": ["id"]}]}, {"name": "files_folder_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "file_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "file_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "files_folder_links_fk", "columns": ["file_id"]}, {"name": "files_folder_links_inv_fk", "columns": ["folder_id"]}, {"name": "files_folder_links_unique", "type": "unique", "columns": ["file_id", "folder_id"]}, {"name": "files_folder_links_order_inv_fk", "columns": ["file_order"]}], "foreignKeys": [{"name": "files_folder_links_fk", "columns": ["file_id"], "onDelete": "CASCADE", "referencedTable": "files", "referencedColumns": ["id"]}, {"name": "files_folder_links_inv_fk", "columns": ["folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}]}, {"name": "upload_folders_parent_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "inv_folder_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "folder_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "upload_folders_parent_links_fk", "columns": ["folder_id"]}, {"name": "upload_folders_parent_links_inv_fk", "columns": ["inv_folder_id"]}, {"name": "upload_folders_parent_links_unique", "type": "unique", "columns": ["folder_id", "inv_folder_id"]}, {"name": "upload_folders_parent_links_order_inv_fk", "columns": ["folder_order"]}], "foreignKeys": [{"name": "upload_folders_parent_links_fk", "columns": ["folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}, {"name": "upload_folders_parent_links_inv_fk", "columns": ["inv_folder_id"], "onDelete": "CASCADE", "referencedTable": "upload_folders", "referencedColumns": ["id"]}]}, {"name": "up_permissions_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "permission_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "permission_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_permissions_role_links_fk", "columns": ["permission_id"]}, {"name": "up_permissions_role_links_inv_fk", "columns": ["role_id"]}, {"name": "up_permissions_role_links_unique", "type": "unique", "columns": ["permission_id", "role_id"]}, {"name": "up_permissions_role_links_order_inv_fk", "columns": ["permission_order"]}], "foreignKeys": [{"name": "up_permissions_role_links_fk", "columns": ["permission_id"], "onDelete": "CASCADE", "referencedTable": "up_permissions", "referencedColumns": ["id"]}, {"name": "up_permissions_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "up_roles", "referencedColumns": ["id"]}]}, {"name": "up_users_role_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "user_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "role_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "user_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "up_users_role_links_fk", "columns": ["user_id"]}, {"name": "up_users_role_links_inv_fk", "columns": ["role_id"]}, {"name": "up_users_role_links_unique", "type": "unique", "columns": ["user_id", "role_id"]}, {"name": "up_users_role_links_order_inv_fk", "columns": ["user_order"]}], "foreignKeys": [{"name": "up_users_role_links_fk", "columns": ["user_id"], "onDelete": "CASCADE", "referencedTable": "up_users", "referencedColumns": ["id"]}, {"name": "up_users_role_links_inv_fk", "columns": ["role_id"], "onDelete": "CASCADE", "referencedTable": "up_roles", "referencedColumns": ["id"]}]}, {"name": "products_categories_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "product_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "product_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "products_categories_links_fk", "columns": ["product_id"]}, {"name": "products_categories_links_inv_fk", "columns": ["category_id"]}, {"name": "products_categories_links_unique", "type": "unique", "columns": ["product_id", "category_id"]}, {"name": "products_categories_links_order_fk", "columns": ["category_order"]}, {"name": "products_categories_links_order_inv_fk", "columns": ["product_order"]}], "foreignKeys": [{"name": "products_categories_links_fk", "columns": ["product_id"], "onDelete": "CASCADE", "referencedTable": "products", "referencedColumns": ["id"]}, {"name": "products_categories_links_inv_fk", "columns": ["category_id"], "onDelete": "CASCADE", "referencedTable": "categories", "referencedColumns": ["id"]}]}, {"name": "products_sub_categories_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "product_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "sub_category_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "sub_category_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "product_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "products_sub_categories_links_fk", "columns": ["product_id"]}, {"name": "products_sub_categories_links_inv_fk", "columns": ["sub_category_id"]}, {"name": "products_sub_categories_links_unique", "type": "unique", "columns": ["product_id", "sub_category_id"]}, {"name": "products_sub_categories_links_order_fk", "columns": ["sub_category_order"]}, {"name": "products_sub_categories_links_order_inv_fk", "columns": ["product_order"]}], "foreignKeys": [{"name": "products_sub_categories_links_fk", "columns": ["product_id"], "onDelete": "CASCADE", "referencedTable": "products", "referencedColumns": ["id"]}, {"name": "products_sub_categories_links_inv_fk", "columns": ["sub_category_id"], "onDelete": "CASCADE", "referencedTable": "sub_categories", "referencedColumns": ["id"]}]}, {"name": "sub_categories_categories_links", "columns": [{"args": [{"primary": true, "primaryKey": true}], "name": "id", "type": "increments", "unsigned": false, "defaultTo": null, "notNullable": true}, {"args": [], "name": "sub_category_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_id", "type": "integer", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "category_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}, {"args": [], "name": "sub_category_order", "type": "double", "unsigned": true, "defaultTo": null, "notNullable": false}], "indexes": [{"name": "sub_categories_categories_links_fk", "columns": ["sub_category_id"]}, {"name": "sub_categories_categories_links_inv_fk", "columns": ["category_id"]}, {"name": "sub_categories_categories_links_unique", "type": "unique", "columns": ["sub_category_id", "category_id"]}, {"name": "sub_categories_categories_links_order_fk", "columns": ["category_order"]}, {"name": "sub_categories_categories_links_order_inv_fk", "columns": ["sub_category_order"]}], "foreignKeys": [{"name": "sub_categories_categories_links_fk", "columns": ["sub_category_id"], "onDelete": "CASCADE", "referencedTable": "sub_categories", "referencedColumns": ["id"]}, {"name": "sub_categories_categories_links_inv_fk", "columns": ["category_id"], "onDelete": "CASCADE", "referencedTable": "categories", "referencedColumns": ["id"]}]}]}', '2023-07-18 15:49:23', '3ec2739e0c7e0cb458a6356df009fdd8');

-- 傾印  資料表 shop.strapi_migrations 結構
CREATE TABLE IF NOT EXISTS `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_migrations 的資料：~0 rows (近似值)
DELETE FROM `strapi_migrations`;

-- 傾印  資料表 shop.strapi_transfer_tokens 結構
CREATE TABLE IF NOT EXISTS `strapi_transfer_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_transfer_tokens 的資料：~0 rows (近似值)
DELETE FROM `strapi_transfer_tokens`;

-- 傾印  資料表 shop.strapi_transfer_token_permissions 結構
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_transfer_token_permissions 的資料：~0 rows (近似值)
DELETE FROM `strapi_transfer_token_permissions`;

-- 傾印  資料表 shop.strapi_transfer_token_permissions_token_links 結構
CREATE TABLE IF NOT EXISTS `strapi_transfer_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `transfer_token_permission_id` int unsigned DEFAULT NULL,
  `transfer_token_id` int unsigned DEFAULT NULL,
  `transfer_token_permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`),
  CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_transfer_token_permissions_token_links 的資料：~0 rows (近似值)
DELETE FROM `strapi_transfer_token_permissions_token_links`;

-- 傾印  資料表 shop.strapi_webhooks 結構
CREATE TABLE IF NOT EXISTS `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.strapi_webhooks 的資料：~0 rows (近似值)
DELETE FROM `strapi_webhooks`;

-- 傾印  資料表 shop.sub_categories 結構
CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_created_by_id_fk` (`created_by_id`),
  KEY `sub_categories_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `sub_categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sub_categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.sub_categories 的資料：~6 rows (近似值)
DELETE FROM `sub_categories`;
INSERT INTO `sub_categories` (`id`, `title`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'suit', '2023-04-19 17:11:02.910000', '2023-04-19 17:11:13.552000', '2023-04-19 17:11:13.548000', 1, 1),
	(2, 'shoe', '2023-04-19 17:11:39.353000', '2023-04-19 17:14:57.966000', '2023-04-19 17:14:57.960000', 1, 1),
	(3, 'dress', '2023-04-19 17:15:22.924000', '2023-04-21 21:39:20.531000', '2023-04-21 21:39:20.529000', 1, 1),
	(4, 'hoodie', '2023-04-19 17:33:07.897000', '2023-04-21 22:04:14.335000', '2023-04-21 22:04:14.330000', 1, 1),
	(6, 'shorts', '2023-07-27 14:52:35.972000', '2023-07-27 15:06:50.670000', '2023-07-27 15:06:50.666000', 1, 1),
	(7, 'T-shirt', '2023-07-27 14:58:53.375000', '2023-07-27 15:06:56.489000', '2023-07-27 15:06:56.484000', 1, 1);

-- 傾印  資料表 shop.sub_categories_categories_links 結構
CREATE TABLE IF NOT EXISTS `sub_categories_categories_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sub_category_id` int unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `category_order` double unsigned DEFAULT NULL,
  `sub_category_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_categories_categories_links_unique` (`sub_category_id`,`category_id`),
  KEY `sub_categories_categories_links_fk` (`sub_category_id`),
  KEY `sub_categories_categories_links_inv_fk` (`category_id`),
  KEY `sub_categories_categories_links_order_fk` (`category_order`),
  KEY `sub_categories_categories_links_order_inv_fk` (`sub_category_order`),
  CONSTRAINT `sub_categories_categories_links_fk` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sub_categories_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.sub_categories_categories_links 的資料：~10 rows (近似值)
DELETE FROM `sub_categories_categories_links`;
INSERT INTO `sub_categories_categories_links` (`id`, `sub_category_id`, `category_id`, `category_order`, `sub_category_order`) VALUES
	(1, 1, 1, 1, 1),
	(2, 2, 2, 1, 1),
	(3, 2, 1, 1, 2),
	(4, 3, 2, 0, 2),
	(5, 4, 2, 1, 3),
	(6, 4, 1, 1, 3),
	(10, 6, 2, 1, 4),
	(11, 6, 1, 0, 4),
	(12, 7, 2, 1, 5),
	(13, 7, 1, 0, 5);

-- 傾印  資料表 shop.upload_folders 結構
CREATE TABLE IF NOT EXISTS `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.upload_folders 的資料：~0 rows (近似值)
DELETE FROM `upload_folders`;

-- 傾印  資料表 shop.upload_folders_parent_links 結構
CREATE TABLE IF NOT EXISTS `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.upload_folders_parent_links 的資料：~0 rows (近似值)
DELETE FROM `upload_folders_parent_links`;

-- 傾印  資料表 shop.up_permissions 結構
CREATE TABLE IF NOT EXISTS `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.up_permissions 的資料：~27 rows (近似值)
DELETE FROM `up_permissions`;
INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'plugin::users-permissions.user.me', '2023-04-18 22:21:31.472000', '2023-04-18 22:21:31.472000', NULL, NULL),
	(2, 'plugin::users-permissions.auth.changePassword', '2023-04-18 22:21:31.472000', '2023-04-18 22:21:31.472000', NULL, NULL),
	(11, 'plugin::users-permissions.user.find', '2023-05-29 21:37:14.830000', '2023-05-29 21:37:14.830000', NULL, NULL),
	(12, 'plugin::users-permissions.user.findOne', '2023-05-29 21:37:14.830000', '2023-05-29 21:37:14.830000', NULL, NULL),
	(13, 'plugin::users-permissions.user.count', '2023-05-29 21:37:14.830000', '2023-05-29 21:37:14.830000', NULL, NULL),
	(14, 'plugin::users-permissions.auth.callback', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(15, 'plugin::users-permissions.auth.resetPassword', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(16, 'plugin::users-permissions.auth.connect', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(17, 'plugin::users-permissions.auth.forgotPassword', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(18, 'plugin::users-permissions.auth.register', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(19, 'plugin::users-permissions.auth.emailConfirmation', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(20, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(21, 'plugin::users-permissions.user.create', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(22, 'plugin::users-permissions.user.update', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(23, 'plugin::users-permissions.user.find', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(24, 'plugin::users-permissions.user.findOne', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(25, 'plugin::users-permissions.user.count', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(26, 'plugin::users-permissions.user.destroy', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(27, 'plugin::users-permissions.permissions.getPermissions', '2023-05-29 21:46:02.918000', '2023-05-29 21:46:02.918000', NULL, NULL),
	(28, 'plugin::users-permissions.user.create', '2023-06-05 23:41:15.192000', '2023-06-05 23:41:15.192000', NULL, NULL),
	(29, 'plugin::users-permissions.user.me', '2023-06-05 23:42:42.535000', '2023-06-05 23:42:42.535000', NULL, NULL),
	(35, 'plugin::users-permissions.auth.register', '2023-06-06 00:17:15.200000', '2023-06-06 00:17:15.200000', NULL, NULL),
	(38, 'plugin::users-permissions.user.update', '2023-06-06 00:17:15.200000', '2023-06-06 00:17:15.200000', NULL, NULL),
	(39, 'plugin::users-permissions.user.destroy', '2023-06-06 00:17:15.200000', '2023-06-06 00:17:15.200000', NULL, NULL),
	(45, 'plugin::users-permissions.permissions.getPermissions', '2023-06-06 00:17:15.200000', '2023-06-06 00:17:15.200000', NULL, NULL),
	(46, 'plugin::users-permissions.auth.connect', '2023-06-29 20:39:02.012000', '2023-06-29 20:39:02.012000', NULL, NULL),
	(47, 'plugin::users-permissions.auth.callback', '2023-06-29 20:41:27.960000', '2023-06-29 20:41:27.960000', NULL, NULL);

-- 傾印  資料表 shop.up_permissions_role_links 結構
CREATE TABLE IF NOT EXISTS `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.up_permissions_role_links 的資料：~27 rows (近似值)
DELETE FROM `up_permissions_role_links`;
INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
	(1, 1, 1, 1),
	(2, 2, 1, 1),
	(10, 11, 2, 3),
	(12, 12, 2, 3),
	(13, 13, 2, 3),
	(14, 14, 1, 2),
	(15, 15, 1, 2),
	(16, 19, 1, 2),
	(17, 16, 1, 2),
	(18, 17, 1, 2),
	(19, 20, 1, 2),
	(20, 21, 1, 2),
	(21, 23, 1, 2),
	(22, 22, 1, 2),
	(23, 18, 1, 2),
	(24, 25, 1, 3),
	(25, 26, 1, 3),
	(26, 24, 1, 3),
	(27, 27, 1, 3),
	(28, 28, 2, 4),
	(29, 29, 2, 5),
	(36, 38, 2, 6),
	(37, 39, 2, 6),
	(40, 35, 2, 7),
	(45, 45, 2, 7),
	(46, 46, 2, 8),
	(47, 47, 2, 9);

-- 傾印  資料表 shop.up_roles 結構
CREATE TABLE IF NOT EXISTS `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.up_roles 的資料：~2 rows (近似值)
DELETE FROM `up_roles`;
INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-04-18 22:21:31.460000', '2023-05-29 21:46:02.910000', NULL, NULL),
	(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-04-18 22:21:31.464000', '2023-07-11 01:49:04.313000', NULL, NULL);

-- 傾印  資料表 shop.up_users 結構
CREATE TABLE IF NOT EXISTS `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.up_users 的資料：~3 rows (近似值)
DELETE FROM `up_users`;
INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
	(8, '1234567', 'cheungkachun24@outlook.com', 'local', '$2a$10$LmJCXzO/T/X8S8ywB4Y3je4XQfh0jUatoMhaD5Bokym2602RHFRLq', NULL, NULL, 1, 0, '2023-06-10 16:09:41.893000', '2023-06-10 16:09:41.893000', NULL, NULL),
	(14, 'adambone0', 'kachun2322@gmail.com', 'local', '$2a$10$V/Y34d8BseDLHqg4zlMGQuQ0Vb1.Yscvp0DL6DqaDhFOZ67XTnoiy', NULL, NULL, 1, 0, '2023-06-29 19:52:11.465000', '2023-06-29 19:52:11.465000', NULL, NULL),
	(15, 'adambone', 'chun2322@gmail.com', 'local', '$2a$10$ybY3aIDVcOMBmpJJOEDq1OfyvS5XCHh81hM9eDV8j6lfwy8XTsl.O', NULL, NULL, 1, 0, '2023-06-29 20:08:17.296000', '2023-06-29 20:08:17.296000', NULL, NULL);

-- 傾印  資料表 shop.up_users_role_links 結構
CREATE TABLE IF NOT EXISTS `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` double unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在傾印表格  shop.up_users_role_links 的資料：~3 rows (近似值)
DELETE FROM `up_users_role_links`;
INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
	(8, 8, 1, 1),
	(14, 14, 1, 2),
	(15, 15, 1, 3);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
