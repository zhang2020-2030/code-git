--
-- Create model Activity
--
CREATE TABLE `activity_activity` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `activity` varchar(128) NOT NULL, `type` varchar(32) NOT NULL, `time` varchar(32) NOT NULL
, `city` varchar(32) NOT NULL, `addr` varchar(128) NOT NULL, `p_number` varchar(128) NOT NULL);
