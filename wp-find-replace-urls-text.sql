# SQL FIND AND REPLACE FOR WORDPRESS

/*

!!!!!! IMPORTANT NOTE !!!!!! 

If you're doing a find and replace for URLS:

- Leave off the trailing slash.
- Do a find and replace for both http and https
- Be cognizant of if the site is using www vs no www

*/


# WP CORE - LINKS
UPDATE wp_options SET option_value = replace(option_value, 'OLD_TEXT', 'NEW_TEXT') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET post_content = replace(post_content, 'OLD_TEXT', 'NEW_TEXT');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'OLD_TEXT','NEW_TEXT');
UPDATE wp_usermeta SET meta_value = replace(meta_value, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_links SET link_url = replace(link_url, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_comments SET comment_content = replace(comment_content , 'OLD_TEXT','NEW_TEXT');


# WP CORE - CONTENT
UPDATE wp_posts SET post_content = replace(post_content, 'OLD_TEXT', 'NEW_TEXT');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'OLD_TEXT','NEW_TEXT');
UPDATE wp_posts SET post_title = replace(post_title,'OLD_TEXT','NEW_TEXT');


# GRAVITY FORMS - NOTIFICATIONS / CONFIRMATIONS
UPDATE wp_gf_form_meta SET notifications = replace(notifications, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_gf_form_meta SET confirmations = replace(confirmations, 'OLD_TEXT','NEW_TEXT');


# YOAST
UPDATE wp_yoast_indexable SET title = replace(title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET breadcrumb_title = replace(breadcrumb_title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET description = replace(description, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET open_graph_title = replace(open_graph_title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET twitter_title = replace(twitter_title, 'OLD_TEXT','NEW_TEXT');
