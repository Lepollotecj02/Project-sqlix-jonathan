INSERT INTO qualite (num_qualite,lib_qualite) VALUES ("1","Chef"),
("2","Druide"),
("3","Barde"),
("4","Guerrier"),
("5","Chasseur"),
("6","Livreur de menhirs"),
("7","Facteur"),
("8","Poissonnière"),
("9","Serveuse");

---------

INSERT INTO province (num_province,nom_province,nom_gouverneur) VALUES ("1","Armorique","Garovirus"),
("2","Averne","Nenpeuplus"),
("3","Aquitaine","Yenapus");


---------

INSERT INTO village (num_village,nom_village,nb_huttes,num_province) VALUES ("1","Aquilona","52","1"),
("2","Lutèce","25","2"),
("3","Aginum","33","3"),
("4","Calendes Aquae","42","2"),
("5","Condate","38","1"),
("6","Gergovie","55","3"),
("7","Aquae Calidae","35","2");


----------


INSERT INTO habitant (num_habitant,nom,age,num_qualite,num_village) VALUES ("1","Abraracourcix","65","1","1"),
("2","Amnésix","56","2","7"),
("3","Barometrix","68","2","3"),
("4","Panoramix","79","2","1"),
("5","Assurancetourix","53","3","1"),
("6","Zérozérosix","75","2","4"),
("7","Astérix","35","4","1"),
("8","Bellodalix","32","4","7"),
("9","Cétyounix","32","4","4"),
("10","Homéopatix","48","5","6"),
("11","Obélix","38","6","1"),
("12","Plantaquatix","30","5","5"),
("13","Moralélastix","67","1","2"),
("14","Pneumatix","26","7","1"),
("15","Pronostix","35","4","5"),
("16","Goudurix","38","4","2"),
("17","Océanix","40","5","5"),
("18","Asdepix","53","1","5"),
("19","Eponine","48","8","2"),
("20","Falbala","26","9","1"),
("21","Gélatine","65",NULL,"6"),
("22","Fanzine","21",NULL,"3");


------------

INSERT INTO resserre (num_resserre,nom_resserre,superficie,num_village) VALUES ("1","Albinus","720","4"),
("2","Vercingetorix","500","6"),
("3","Sintrof","895","1");


--------------

INSERT INTO categorie (code_cat,nom_categ,nb_points) VALUES ("BCN","Bouclier de Centurion","6"),
("BDN","Bouclier de Décurion","4"),
("BLE","Bouclier de Légionnaire","3"),
("BLT","Bouclier de Légat","10"),
("CCN","Casque de Centurion","3"),
("CDN","Casque de Décurion","2"),
("CLE","Casque de Légionnaire","1"),
("CLT","Casque de Légat","4");


--------------


INSERT INTO trophee (num_trophee,date_prise,code_cat,num_preneur,num_resserre) VALUES ("1","2052-04-03 00:00:00","BLE","7","3"),
("2","2052-04-03 00:00:00","BLT","11","3"),
("3","2052-05-05 00:00:00","CDN","15","1"),
("4","2052-05-05 00:00:00","CLE","16","2"),
("5","2052-06-06 00:00:00","CCN","16","2"),
("6","2052-06-06 00:00:00","BLT","8","1"),
("7","2052-08-18 00:00:00","CCN","8","1"),
("8","2052-09-20 00:00:00","CLT","1","3"),
("9","2052-10-23 00:00:00","CDN","7","2"),
("10","2052-10-23 00:00:00","CLE","16","1");


-------------


INSERT INTO potion (num_potion,lib_potion,formule,constituant_principal) VALUES ("1","Potion magique n°1",NULL,"Gui"),
("2","Potion magique n°2","4V3C2VA","Vin"),
("3","Potion magique n°3","2C1B","Calva"),
("4","Potion Zen",NULL,"Jus de Betterave"),
("5","Potion Anti Douleur","5C3J1T","Calva");


-------------


INSERT INTO fabriquer (num_potion,num_habitant) VALUES ("1","4"),
("2","2"),
("3","3"),
("4","4"),
("4","6"),
("5","2"),
("5","4");


-------------


INSERT INTO absorber (num_potion,date_a,num_habitant,quantite) VALUES ("1","2052-02-18 00:00:00","7","3"),
("2","2052-02-18 00:00:00","12","4"),
("1","2052-02-20 00:00:00","2","2"),
("1","2052-02-20 00:00:00","8","2"),
("3","2052-02-20 00:00:00","7","1"),
("1","2052-04-03 00:00:00","7","1"),
("1","2052-04-03 00:00:00","15","2"),
("2","2052-04-03 00:00:00","13","5"),
("3","2052-04-03 00:00:00","10","4"),
("4","2052-05-05 00:00:00","15","2"),
("5","2052-05-10 00:00:00","1","4"),
("5","2052-05-10 00:00:00","2","1"),
("1","2052-06-06 00:00:00","13","2"),
("2","2052-06-06 00:00:00","7","1"),
("3","2052-06-06 00:00:00","8","4"),
("5","2052-06-07 00:00:00","1","2"),
("5","2052-07-17 00:00:00","7","1"),
("2","2052-07-18 00:00:00","7","3"),
("1","2052-08-18 00:00:00","8","3"),
("1","2052-08-18 00:00:00","16","1"),
("3","2052-08-18 00:00:00","10","2"),
("4","2052-08-18 00:00:00","7","2"),
("3","2052-09-20 00:00:00","7","5"),
("4","2052-09-20 00:00:00","1","2"),
("2","2052-10-23 00:00:00","7","4"),
("3","2052-10-23 00:00:00","13","1"),
("4","2052-10-23 00:00:00","13","3"),
("1","2052-11-26 00:00:00","10","2"),
("2","2052-11-26 00:00:00","8","2"),
("5","2052-11-26 00:00:00","13","2"),
("5","2052-11-26 00:00:00","16","2");
