CREATE USER 'sqlix_u'@'localhost' IDENTIFIED BY 'XXXX';

-------------

GRANT SELECT, INSERT, UPDATE, DELETE ON sqlix_bdd.* TO 'sqlix_u'@'localhost';

