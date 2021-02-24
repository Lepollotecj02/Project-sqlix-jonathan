CREATE DATABASE sqlix_bdd;

-------------

use sqlix_bdd;

-------------

CREATE TABLE qualite(
    num_qualite INT PRIMARY KEY NOT NULL,
    lib_qualite VARCHAR(30)
)
ENGINE=INNODB ;

-------------

CREATE TABLE province(
    num_province INT PRIMARY KEY NOT NULL,
    nom_province VARCHAR(30),
    nom_gouverneur VARCHAR(30)
)
ENGINE=INNODB;

-------------

CREATE TABLE village(
  num_village INT PRIMARY KEY NOT NULL,
  nom_village VARCHAR(30),
  nb_huttes INT,
  num_province INT,
  FOREIGN KEY (num_province) REFERENCES province (num_province)
  )
  ENGINE=INNODB;

  -------------

  CREATE TABLE habitant(
      num_habitant INT PRIMARY KEY NOT NULL,
      nom VARCHAR(30),
      age INT,
      num_qualite INT,
      num_village INT,
      FOREIGN KEY (num_qualite) REFERENCES qualite (num_qualite),
      FOREIGN KEY (num_village) REFERENCES village (num_village)
  )
  ENGINE=INNODB;

-------------

  CREATE TABLE resserre(
      num_resserre INT PRIMARY KEY NOT NULL,
      nom_resserre VARCHAR(30),
      superficie INT,
      num_village INT,
      FOREIGN KEY (num_village) REFERENCES village (num_village)
  )
  ENGINE=INNODB;


-------------


  CREATE TABLE categorie(
      code_cat CHAR(3) PRIMARY KEY NOT NULL,
      nom_categ VARCHAR(50),
      nb_points INT
  )
  ENGINE=INNODB;

  -------------

  CREATE TABLE trophee(
      num_trophee INT PRIMARY KEY NOT NULL,
      date_prise DATETIME,
      code_cat CHAR(3),
      num_preneur INT,
      num_resserre INT,
      FOREIGN KEY (code_cat) REFERENCES categorie (code_cat),
      FOREIGN KEY (num_resserre) REFERENCES resserre (num_resserre),
      FOREIGN KEY (num_preneur) REFERENCES habitant (num_habitant)
  )
  ENGINE=INNODB;

  -------------

  CREATE TABLE potion(
      num_potion INT PRIMARY KEY NOT NULL,
      lib_potion VARCHAR (40),
      formule VARCHAR (30),
      constituant_principal VARCHAR (30)
  )
  ENGINE=INNODB;


  -------------


  CREATE TABLE fabriquer(
      num_potion INT NOT NULL,
      num_habitant INT NOT NULL ,
      PRIMARY KEY (num_potion,num_habitant),
      FOREIGN KEY (num_potion) REFERENCES potion (num_potion),
      FOREIGN KEY (num_habitant) REFERENCES habitant (num_habitant)
  )
  ENGINE=INNODB;

  -------------

  CREATE TABLE absorber(
      num_potion INT NOT NULL,
      date_a DATETIME NOT NULL,
      num_habitant INT NOT NULL,
      quantite INT,
      PRIMARY KEY (num_potion,date_a,num_habitant),
      FOREIGN KEY (num_habitant) REFERENCES habitant (num_habitant),
      FOREIGN KEY (quantite) REFERENCES potion (num_potion)
  )
  engine=INNODB;