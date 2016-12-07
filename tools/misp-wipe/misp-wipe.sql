-- Clear tables that should be empty
TRUNCATE `attributes`;
TRUNCATE `correlations`;
TRUNCATE `events`;
TRUNCATE `event_delegations`;
TRUNCATE `event_tags`;
TRUNCATE `favourite_tags`;
TRUNCATE `jobs`;
TRUNCATE `logs`;
TRUNCATE `posts`;
TRUNCATE `servers`;
TRUNCATE `shadow_attributes`;
TRUNCATE `shadow_attribute_correlations`;
TRUNCATE `sharing_groups`;
TRUNCATE `sharing_group_orgs`;
TRUNCATE `sharing_group_servers`;
TRUNCATE `sightings`;
TRUNCATE `threads`;

-- Clear tables that have defaults
TRUNCATE `feeds`;
TRUNCATE `regexp`;
TRUNCATE `roles`;
TRUNCATE `threat_levels`;
TRUNCATE `templates`;
TRUNCATE `template_elements`;
TRUNCATE `template_element_attributes`;
TRUNCATE `template_element_files`;
TRUNCATE `template_element_texts`;

-- Remove entries from tables and reset index
DELETE FROM `users` WHERE id > 3;
ALTER TABLE `users` AUTO_INCREMENT = 4;
DELETE FROM `organisations` WHERE id > 2;
ALTER TABLE `organisations` AUTO_INCREMENT = 3;
