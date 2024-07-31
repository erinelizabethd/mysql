# FIND AND REPLACE

# WP CORE - LINKS
UPDATE wp_options SET option_value = replace(option_value, 'Existing URL', 'New URL') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET post_content = replace(post_content, 'Existing URL', 'New URL');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'Existing URL','New URL');
UPDATE wp_usermeta SET meta_value = replace(meta_value, 'Existing URL','New URL');
UPDATE wp_links SET link_url = replace(link_url, 'Existing URL','New URL');
UPDATE wp_comments SET comment_content = replace(comment_content , 'Existing URL','New URL');


# WP CORE - TEXT
UPDATE wp_posts SET post_content = replace(post_content, 'EXISTING TEXT', 'NEW TEXT');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'EXISTING TEXT','NEW TEXT');


# GRAVITY FORMS - NOTIFICATIONS / CONFIRMATIONS
UPDATE wp_gf_form_meta SET notifications = replace(notifications, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_gf_form_meta SET confirmations = replace(confirmations, 'OLD_TEXT','NEW_TEXT');


# YOAST
UPDATE wp_yoast_indexable SET title = replace(title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET breadcrumb_title = replace(breadcrumb_title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET description = replace(description, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET open_graph_title = replace(open_graph_title, 'OLD_TEXT','NEW_TEXT');
UPDATE wp_yoast_indexable SET twitter_title = replace(twitter_title, 'OLD_TEXT','NEW_TEXT');


# DELETE POST REVISIONS OLDER THAN A YEAR

DELETE FROM wp_posts WHERE post_type = "revision" AND post_modified < DATE_SUB(CURDATE(), INTERVAL 1 YEAR)


# MOVE POSTS TO CUSTOM POST TYPES


UPDATE
    wp_posts
    LEFT JOIN wp_term_relationships ON wp_posts.ID = wp_term_relationships.object_id
    LEFT JOIN wp_term_taxonomy ON wp_term_relationships.term_taxonomy_id = wp_term_taxonomy.term_taxonomy_id
SET
    wp_posts.post_type = 'CUSTOM_POST_TYPE_NAME'
WHERE
    wp_posts.post_type = 'post' AND
    wp_term_taxonomy.taxonomy = 'category' AND
    wp_term_taxonomy.term_id = TERM_ID_HERE



