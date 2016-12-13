DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
  id CHAR(36) PRIMARY KEY NOT NULL ,
  username VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ,
  date_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL ,
  enabled BIT(1) DEFAULT 0 NOT NULL ,
  UNIQUE INDEX accounts_username_uindex (username)

) DEFAULT CHAR SET utf8;

CREATE TABLE authorities
(
  id        INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username  VARCHAR(255)        NOT NULL,
  authority VARCHAR(255)        NOT NULL,
  UNIQUE INDEX authorities_username_authority_uindex (username, authority),
  CONSTRAINT authorities_users_username_fk FOREIGN KEY (username) REFERENCES accounts (username)
)
  DEFAULT CHARSET = utf8;


