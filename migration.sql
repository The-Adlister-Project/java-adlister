USE adlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS cat_ads;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;

CREATE TABLE users
(
    id       INT UNSIGNED        NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) UNIQUE NOT NULL,
    email    VARCHAR(240) UNIQUE NOT NULL,
    password VARCHAR(255)        NOT NULL,
    url VARCHAR(50)              NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(240) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE categories
(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)

);

INSERT INTO categories (name) VALUES ('For Sale'),
                                     ('Jobs'),
                                     ('Antiques'),
                                     ('Automotive'),
                                     ('Looking For');


CREATE TABLE cat_ads
(
    id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_id  INT UNSIGNED,
    cat_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id) REFERENCES ads (id) ON DELETE CASCADE ON UPDATE CASCADE ,
    FOREIGN KEY (cat_id) REFERENCES categories (id) ON DELETE CASCADE ON UPDATE CASCADE ,
    UNIQUE (ad_id, cat_id)

);
