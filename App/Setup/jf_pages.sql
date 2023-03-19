--

    --  Table strukture for table 'jf_pages'
    --

 DROP TABLE
    `jf_pages`; 
   
     CREATE TABLE IF NOT EXISTS jf_pages (
    id INT(11) NOT NULL,
    title VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    alias VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
    content LONGTEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci,
    metadesc VARCHAR(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
    metakey VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
    metarobot VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
    metaauthor VARCHAR(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
    cdate INT(11) DEFAULT NULL,
    mdate INT(11) DEFAULT NULL,
    createdBy INT(11) DEFAULT NULL,
    modifiedBy INT(11) DEFAULT NULL,
    ordering INT(11) DEFAULT NULL,
    enabled TINYINT(1) NOT NULL,
    user_id INT(11) NOT NULL,
    is_default TINYINT(1) NOT NULL,
    category_id INT(11) NOT NULL DEFAULT '0',
    tags VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL) ENGINE = InnoDB AUTO_INCREMENT = 45 DEFAULT CHARSET = utf8;
--
--
INSERT INTO jf_pages(
    id,
    title,
    alias,
    content,
    metadesc,
    metakey,
    metarobot,
    metaauthor,
    cdate,
    mdate,
    createdBy,
    modifiedBy,
     ordering,
    enabled,
    user_id,
    is_default,
    category_id,
    tags
)
VALUES(
    39,
    'About',
    'about',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam.Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
),(
    40,
    'Test Page',
    'test-page',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam.

Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
),(
    41,
    'Another Test Page',
    'another-test-page',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam.

Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
),(
    42,
    'Info Page',
    'info-page',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam.

Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
),(
    43,
    'Help/FAQ',
    'help-faq',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam.Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
),(
    44,
    'Contact',
    'contact',
    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis, dolor id eleifend ultrices, nisl ante aliquet lectus, at luctus velit ante in risus. Pellentesque sagittis, orci nec pretium posuere, justo dolor aliquam risus, ac cursus ex nulla a libero. Etiam id turpis tempor, tincidunt tortor eget, ornare orci. Sed vel lacus nec metus posuere accumsan. Curabitur rutrum egestas nisi, id aliquam massa fringilla id. Donec augue velit, tincidunt id blandit ac, porta vel sem. Praesent finibus viverra ex sit amet lacinia. Suspendisse tincidunt ornare ante, ac consectetur dui sodales in. Vivamus eget fermentum diam. Duis scelerisque ligula dapibus eros ornare blandit. Mauris mattis imperdiet nulla quis sodales. Nunc ornare commodo diam, eu congue justo congue sed. Pellentesque rhoncus vehicula justo. Donec mauris libero, hendrerit et porttitor in, cursus eu erat. Fusce bibendum fringilla lobortis. Donec nisi est, posuere eget volutpat vitae, dapibus vel lectus. Interdum et malesuada fames ac ante mi',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    ''
);
ALTER TABLE
    jf_pages ADD PRIMARY KEY('id'),
    ADD KEY 'PageIndex'('id', 'alias'(255));