INSERT INTO accounts (id, username, first_name, last_name, password, enabled)
VALUES (UUID(), 'ovovchuk', 'Oleksandr', 'Vovchuk', '$2a$10$wucp8jvkoe7Y2921zcNtiO6geszMKF1ZbVtvpfIoEOS47oX/mRrQi', 1);

INSERT INTO authorities (username, authority) VALUES ('ovovchuk', 'ROLE_ADMIN');
INSERT INTO authorities (username, authority) VALUES ('ovovchuk', 'ROLE_USER');