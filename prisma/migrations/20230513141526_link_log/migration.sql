-- CreateTable
CREATE TABLE `LinkLog` (
	`link_id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	`session_id` VARCHAR(256) NOT NULL,
	`ip_address` VARCHAR(128) NULL,
	`user_agent` VARCHAR(256) NULL,
	`referrer` VARCHAR(256) NULL,
	`country` VARCHAR(128) NULL,
	`city` VARCHAR(128) NULL,
	`region` VARCHAR(128) NULL,
	`latitude` FLOAT NULL,
	`longitude` FLOAT NULL,
	`updated` DATETIME(3) NOT NULL,
	`created` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
	`deleted` DATETIME(3) NULL,
	UNIQUE INDEX `LinkLog_session_id_key`(`session_id`),
	PRIMARY KEY (`link_id`, `session_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE
	`LinkLog`
ADD
	CONSTRAINT `LinkLog_link_id_fkey` FOREIGN KEY (`link_id`) REFERENCES `Link`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;