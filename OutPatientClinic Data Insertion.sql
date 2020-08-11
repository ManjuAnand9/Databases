-- Records for speciality
insert into speciality values(1,'Express Care');
insert into speciality values(2,"Family Medicine");
insert into speciality values(3,"General Surgery");
insert into speciality values(4,"Internal Medicine");
insert into speciality values(5,"Nurse Practitioner");
insert into speciality values(6,"Podiatry");
insert into speciality values(7,"Urology");
insert into speciality values(8,"Pediatrics");
insert into speciality values(9,"Lactation Consultants");
insert into speciality values(10,"Allergies");
insert into speciality values(11,"Diabetes Education");
insert into speciality values(12,"Radiology");
insert into speciality values(13,"Rehabilitation");
insert into speciality values(14,"Child care");

-- Records for Doctor
ALTER TABLE doctors AUTO_INCREMENT=100;
insert into doctors values(default,1,'Pata','Jonathan','7049041111',"Pata.Jonathan@gmail.com");
insert into doctors values(default,2,'James','Darakjy','7049041112',"James.Darakjy@gmail.com");
insert into doctors values(default,9,'Josephine','Venere','7049041113',"Josephine.Venere@gmail.com");
insert into doctors values(default,12,'Art','Paprocki','7049041114',"Art.Paprocki@gmail.com");
insert into doctors values(default,14,'Lenna','Foller','7049041115',"Lenna.Foller@gmail.com");
insert into doctors values(default,5,'Donette','Morasca','7049041116',"Donette.Morasca@gmail.com");
insert into doctors values(default,6,'Simona','Tollner','7049041117',"Simona.Tollner@gmail.com");
insert into doctors values(default,7,'Mitsue','Dilliard','7049041118',"Mitsue.Dilliard@gmail.com");
insert into doctors values(default,8,'Leota','Wieser','7049041119',"Leota.Wieser@gmail.com");
insert into doctors values(default,3,'Sage','Marrier','7049041120',"Sage.Marrier@gmail.com");
insert into doctors values(default,4,'Kris','Amigon','7049041121',"Kris.Amigon@gmail.com");
insert into doctors values(default,11,'Minna','Maclead','7049041122',"Minna.Maclead@gmail.com");
insert into doctors values(default,10,'Abel','Caldarera','7049041123',"Abel.Caldarera@gmail.com");
insert into doctors values(default,13,'Kiley','Ruta','7049041124',"Kiley.Ruta@gmail.com");
insert into doctors values(default,9,'Graciela','Albares','7049041125',"Graciela.Albares@gmail.com");
insert into doctors values(default,2,'Cammy','Poquette','7049041126',"Cammy.Poquette@gmail.com");
insert into doctors values(default,4,'Mattie','Garufi','7049041127',"Mattie.Garufi@gmail.com");
insert into doctors values(default,5,'Meaghan','Rim','7049041128',"Meaghan.Rim@gmail.com");
insert into doctors values(default,7,'Gladys','Whobrey','7049041129',"Gladys.Whobrey@gmail.com");
insert into doctors values(default,8,'Daniel','Montaya','7049041130',"Daniel.Montaya@gmail.com");


-- Records for Insurance Company
ALTER TABLE insurance_company AUTO_INCREMENT=1000;
insert into insurance_company values (default,'UHC','Boston',1111111111,'UHC.Boston@gmail.com');
insert into insurance_company values (default,'BCBS','Charlotte',2222222222,'BCBS.Charlotte@gmail.com');
insert into insurance_company values (default,'Wellcare','Newyork',3333333333,'Wellcare.Newyork@gmail.com');
insert into insurance_company values (default,'Highmark','Kansas',4444444444,'Highmark.Kansas@gmail.com');
insert into insurance_company values (default,'UNCH','Hartford',5555555555,'UNCH.Hartford@gmail.com');
insert into insurance_company values (default,'Anthem','Durham',6666666666,'Anthem.Durham@gmail.com');
insert into insurance_company values (default,'Metropolitan ','Raleigh',7777777777,'Metropolitan .Raleigh@gmail.com');
insert into insurance_company values (default,'Aetna','Sanjose',8888888888,'Aetna.Sanjose@gmail.com');
insert into insurance_company values (default,'Humana ','Sunnyvale',9999999999,'Humana .Sunnyvale@gmail.com');
insert into insurance_company values (default,'Kaiser ','Phoneix',1234567897,'Kaiser .Phoneix@gmail.com');

-- Records for patients
ALTER TABLE patients AUTO_INCREMENT=10000;
insert into patients values (default,1000,'Deb','Formica','1994-06-05','Female',5000,'2020-06-01');
insert into patients values (default,1001,'Flosi','James','1994-06-06','Female',5001,'2020-09-01');
insert into patients values (default,1002,'Nicka','Josephine','1984-09-01','Female',5002,'2019-06-17');
insert into patients values (default,1003,'Inouye','Art','1974-06-17','Female',5003,'2019-09-10');
insert into patients values (default,1004,'Kolmetz','Lenna','1974-09-10','Female',5004,'2019-11-17');
insert into patients values (default,1005,'Royster','Donette','1974-11-17','Female',5005,'2019-10-31');
insert into patients values (default,1006,'Slusarski','Simona','1974-10-31','Female',5006,'2020-02-26');
insert into patients values (default,1007,'Iturbide','Mitsue','1984-02-26','Female',5007,'2020-10-05');
insert into patients values (default,1008,'Caudy','Leota','1984-10-05','Female',5008,'2019-12-21');
insert into patients values (default,1009,'Chui','Sage','1974-12-21','Female',5009,'2020-02-09');
insert into patients values (default,1000,'Kusko','Kris','1984-02-09','Female',5010,'2019-08-07');
insert into patients values (default,1001,'Figeroa','Minna','1974-08-07','Female',5011,'2019-01-15');
insert into patients values (default,1002,'Corrio','Abel','1974-01-15','Female',5012,'2020-01-23');
insert into patients values (default,1003,'Vocelka','Kiley','1984-01-23','Female',5013,'2019-03-24');
insert into patients values (default,1004,'Stenseth','Graciela','1974-03-24','Female',5014,'2019-05-14');
insert into patients values (default,1005,'Glick','Cammy','1974-05-14','Female',5015,'2019-07-21');
insert into patients values (default,1006,'Sergi','Mattie','1974-07-21','Female',5016,'2019-04-10');
insert into patients values (default,1007,'Shinko','Meaghan','1974-04-10','Female',5017,'2020-12-12');
insert into patients values (default,1008,'Stockham','Gladys','1984-12-12','Female',5018,'2020-04-18');
insert into patients values (default,1009,'Ostrosky','Yuki','1984-04-18','Female',5019,'2019-05-31');
insert into patients values (default,1000,'Gillian','Fletcher','1974-05-31','Female',5020,'2019-02-01');
insert into patients values (default,1001,'Rulapaugh','Bette','1974-02-01','Female',5021,'2020-05-05');
insert into patients values (default,1002,'Schemmer','Veronika','1984-05-05','Female',5022,'2020-06-25');
insert into patients values (default,1003,'Oldroyd','Willard','1984-06-25','Female',5023,'2019-12-04');
insert into patients values (default,1004,'Campain','Maryann','1974-12-04','Female',5024,'2020-11-25');
insert into patients values (default,1005,'Perin','Alisha','1984-11-25','Female',5025,'2019-02-18');
insert into patients values (default,1006,'Ferencz','Allene','1974-02-18','Female',5026,'2020-11-08');
insert into patients values (default,1007,'Saylors','Chanel','1984-11-08','Female',5027,'2020-09-18');
insert into patients values (default,1008,'Briddick','Ezekiel','1984-09-18','Female',5028,'2020-07-12');
insert into patients values (default,1009,'Waycott','Willow','1984-07-12','Female',5029,'2020-08-15');
insert into patients values (default,1000,'Bowley','Bernardo','1984-08-15','Female',5030,'2020-04-01');
insert into patients values (default,1001,'Malet','Ammie','1984-04-01','Female',5031,'2020-06-08');
insert into patients values (default,1002,'Bolognia','Francine','1984-06-08','Female',5032,'2019-07-04');
insert into patients values (default,1003,'Nestle','Ernie','1974-07-04','Female',5033,'2020-10-22');
insert into patients values (default,1004,'Uyetake','Albina','1984-10-22','Female',5034,'2020-12-29');
insert into patients values (default,1005,'Mastella','Alishia','1984-12-29','Female',5035,'2020-07-29');
insert into patients values (default,1006,'Klonowski','Solange','1984-07-29','Female',5036,'2020-01-06');
insert into patients values (default,1007,'Wenner','Jose','1984-01-06','Female',5037,'2019-04-27');
insert into patients values (default,1008,'Monarrez','Rozella','1974-04-27','Female',5038,'2019-08-24');
insert into patients values (default,1009,'Seewald','Valentine','1974-08-24','Female',5039,'2019-03-07');
insert into patients values (default,1000,'Ahle','Kati','1974-03-07','Female',5040,'2020-05-22');
insert into patients values (default,1001,'Juhas','Youlanda','1984-05-22','Female',5041,'2020-03-15');
insert into patients values (default,1002,'Pugh','Dyan','1984-03-15','Female',5042,'2019-10-14');
insert into patients values (default,1003,'Vanausdal','Roxane','1974-10-14','Female',5043,'2019-09-27');
insert into patients values (default,1004,'Hollack','Lavera','1974-09-27','Female',5044,'2020-04-01');
insert into patients values (default,1005,'Lindall','Erick','1977-09-01','Female',5045,'2020-06-08');
insert into patients values (default,1006,'Yglesias','Fatima','1979-06-17','Female',5046,'2019-07-04');
insert into patients values (default,1007,'Buvens','Jina','1979-09-10','Female',5047,'2020-10-22');
insert into patients values (default,1008,'Weight','Kanisha','1979-11-17','Female',5048,'2020-12-29');
insert into patients values (default,1009,'Morocco','Emerson','1979-10-31','Female',5049,'2020-07-29');
insert into patients values (default,1000,'Eroman','Blair','1977-02-26','Male',5050,'2020-01-06');
insert into patients values (default,1001,'Mondella','Brock','1977-10-05','Male',5051,'2019-04-27');
insert into patients values (default,1002,'Blackwood','Lorrie','1979-12-21','Male',5052,'2019-08-24');
insert into patients values (default,1003,'Abdallah','Sabra','1977-02-09','Male',5053,'2019-03-07');
insert into patients values (default,1004,'Rhym','Marjory','1979-08-07','Male',5054,'2020-05-22');
insert into patients values (default,1005,'Rhymes','Karl','1979-01-15','Male',5055,'2020-03-15');
insert into patients values (default,1006,'Hoogland','Tonette','1977-01-23','Male',5056,'2019-10-14');
insert into patients values (default,1007,'Parlato','Amber','1979-03-24','Male',5057,'2020-04-01');
insert into patients values (default,1008,'Reitler','Shenika','1979-05-14','Male',5058,'2020-06-08');
insert into patients values (default,1009,'Crupi','Delmy','1979-07-21','Male',5059,'2019-07-04');
insert into patients values (default,1000,'Toelkes','Deeanna','1979-04-10','Male',5060,'2020-10-22');
insert into patients values (default,1001,'Lipke','Blondell','1977-12-12','Male',5061,'2020-12-29');
insert into patients values (default,1002,'Chickering','Jamal','1977-04-18','Male',5062,'2020-07-29');
insert into patients values (default,1003,'Mulqueen','Cecily','1979-05-31','Male',5063,'2020-01-06');
insert into patients values (default,1004,'Honeywell','Carmelina','1979-02-01','Male',5064,'2019-04-27');
insert into patients values (default,1005,'Dickerson','Maurine','1977-05-05','Male',5065,'2019-08-24');
insert into patients values (default,1006,'Isenhower','Tawna','1977-06-25','Male',5066,'2019-03-07');
insert into patients values (default,1007,'Munns','Penney','1979-12-04','Male',5067,'2020-05-22');
insert into patients values (default,1008,'Barfield','Elly','1977-11-25','Male',5068,'2020-03-15');
insert into patients values (default,1009,'Gato','Ilene','1979-02-18','Male',5069,'2019-10-14');
insert into patients values (default,1000,'Emigh','Vallie','1977-11-08','Male',5070,'2019-11-17');
insert into patients values (default,1001,'Shields','Kallie','1977-09-18','Male',5071,'2019-10-31');
insert into patients values (default,1002,'Wardrip','Johnetta','1977-07-12','Male',5072,'2020-02-26');
insert into patients values (default,1003,'Gibes','Bobbye','1977-08-15','Male',5073,'2020-10-05');
insert into patients values (default,1004,'Bruschke','Micaela','1977-04-01','Male',5074,'2019-12-21');
insert into patients values (default,1005,'Giguere','Tamar','1977-06-08','Male',5075,'2020-02-09');
insert into patients values (default,1006,'Benimadho','Moon','1979-07-04','Male',5076,'2019-08-07');
insert into patients values (default,1007,'Vanheusen','Laurel','1977-10-22','Male',5077,'2019-01-15');
insert into patients values (default,1008,'Hochard','Delisa','1977-12-29','Male',5078,'2020-01-23');
insert into patients values (default,1009,'Fern','Viva','1977-07-29','Male',5079,'2019-03-24');
insert into patients values (default,1000,'Centini','Elza','1977-01-06','Male',5080,'2019-05-14');
insert into patients values (default,1001,'Klusman','Devorah','1979-04-27','Male',5081,'2019-07-21');
insert into patients values (default,1002,'Buemi','Timothy','1979-08-24','Male',5082,'2019-04-10');
insert into patients values (default,1003,'Cronauer','Arlette','1979-03-07','Male',5083,'2020-06-08');
insert into patients values (default,1004,'Cetta','Dominque','1977-05-22','Male',5084,'2019-07-04');
insert into patients values (default,1005,'Goldammer','Lettie','1977-03-15','Male',5085,'2020-10-22');
insert into patients values (default,1006,'Cork','Myra','1979-10-14','Male',5086,'2020-12-29');
insert into patients values (default,1007,'Korando','Stephaine','1979-09-27','Male',5087,'2020-07-29');
insert into patients values (default,1008,'Felger','Lai','1990-09-01','Male',5088,'2020-01-06');
insert into patients values (default,1009,'Samu','Stephen','1988-06-17','Male',5089,'2019-04-27');
insert into patients values (default,1000,'Kines','Tyra','1988-09-10','Male',5090,'2019-08-24');
insert into patients values (default,1001,'Steffensmeier','Tammara','1988-11-17','Male',5091,'2019-03-07');
insert into patients values (default,1002,'Miceli','Cory','1988-10-31','Male',5092,'2020-05-22');
insert into patients values (default,1003,'Kownacki','Danica','1990-02-26','Male',5093,'2020-03-15');
insert into patients values (default,1004,'Shin','Wilda','1990-10-05','Male',5094,'2020-06-08');
insert into patients values (default,1005,'Francescon','Elvera','1988-12-21','Male',5095,'2019-07-04');
insert into patients values (default,1006,'Schmierer','Carma','1990-02-09','Male',5096,'2020-10-22');
insert into patients values (default,1007,'Kulzer','Malinda','1988-08-07','Male',5097,'2020-12-29');
insert into patients values (default,1008,'Palaspas','Natalie','1988-01-15','Male',5098,'2020-07-29');
insert into patients values (default,1009,'Callaro','Lisha','1986-08-07','Male',5099,'2020-01-06');
insert into patients values (default,1001,'Cartan','Arlene','1985-01-15','Male',5100,'2019-04-27');


-- Records for contact_details
ALTER TABLE contact_details AUTO_INCREMENT=10000;
insert into contact_details values (default,'4252 N Washington Ave #9','New Orleans','973-354-2040','jbutt@gmail.com','LA','New Orleans',70116);
insert into contact_details values (default,'42754 S Ash Ave','Brighton','773-446-5569','josephine_darakjy@darakjy.org','MI','Brighton',48116);
insert into contact_details values (default,'703 Beville Rd','Bridgeport','973-927-3447','art@venere.org','NJ','Bridgeport',8014);
insert into contact_details values (default,'5 Harrison Rd','Anchorage','505-975-8559','lpaprocki@hotmail.com','AK','Anchorage',99501);
insert into contact_details values (default,'73 Southern Blvd','Hamilton','718-332-6527','donette.foller@cox.net','OH','Hamilton',45011);
insert into contact_details values (default,'189 Village Park Rd','Ashland','904-775-4480','simona@morasca.com','OH','Ashland',44805);
insert into contact_details values (default,'6 Middlegate Rd #106','Chicago','510-993-3758','mitsue_tollner@yahoo.com','IL','Chicago',60632);
insert into contact_details values (default,'1128 Delaware St','San Jose','216-657-7668','leota@hotmail.com','CA','San Jose',95111);
insert into contact_details values (default,'577 Parade St','Sioux Falls','817-914-7518','sage_wieser@cox.net','SD','Sioux Falls',57105);
insert into contact_details values (default,'70 Mechanic St','Baltimore','310-774-7643','kris@gmail.com','MD','Baltimore',21224);
insert into contact_details values (default,'4379 Highway 116','Kulpsville','847-728-7286','minna_amigon@yahoo.com','PA','Kulpsville',19443);
insert into contact_details values (default,'55 Hawthorne Blvd','Middle Island','330-537-5358','amaclead@gmail.com','NY','Middle Island',11953);
insert into contact_details values (default,'7116 Western Ave','Los Angeles','215-255-1641','kiley.caldarera@aol.com','CA','Los Angeles',90034);
insert into contact_details values (default,'2026 N Plankinton Ave #3','Chagrin Falls','650-803-1936','gruta@cox.net','OH','Chagrin Falls',44023);
insert into contact_details values (default,'99586 Main St','Laredo','626-572-1096','calbares@gmail.com','TX','Laredo',78045);
insert into contact_details values (default,'8739 Hudson St','Phoenix','254-782-8569','mattie@aol.com','AZ','Phoenix',85013);
insert into contact_details values (default,'383 Gunderman Rd #197','Mc Minnville','907-870-5536','meaghan@hotmail.com','TN','Mc Minnville',37110);
insert into contact_details values (default,'4441 Point Term Mkt','Milwaukee','408-703-8505','gladys.rim@rim.org','WI','Milwaukee',53207);
insert into contact_details values (default,'2972 Lafayette Ave','Taylor','510-503-7169','yuki_whobrey@aol.com','MI','Taylor',48180);
insert into contact_details values (default,'2140 Diamond Blvd','Rockford','317-722-5066','fletcher.flosi@yahoo.com','IL','Rockford',61109);
insert into contact_details values (default,'93 Redmond Rd #492','Aston','307-704-8713','bette_nicka@cox.net','PA','Aston',19014);
insert into contact_details values (default,'3989 Portage Tr','San Jose','703-235-3937','vinouye@aol.com','CA','San Jose',95111);
insert into contact_details values (default,'1 Midway Rd','Irving','504-710-5840','willard@hotmail.com','TX','Irving',75062);
insert into contact_details values (default,'77132 Coon Rapids Blvd Nw','Albany','303-301-4946','mroyster@royster.com','NY','Albany',12204);
insert into contact_details values (default,'755 Harbor Way','Middlesex','510-828-7047','alisha@slusarski.com','NJ','Middlesex',8846);
insert into contact_details values (default,'87 Sierra Rd','Stevens Point','808-892-7943','allene_iturbide@cox.net','WI','Stevens Point',54481);
insert into contact_details values (default,'7667 S Hulen St #42','Shawnee','952-334-9408','chanel.caudy@caudy.org','KS','Shawnee',66218);
insert into contact_details values (default,'75684 S Withlapopka Dr #32','Easton','336-243-5659','ezekiel@chui.com','MD','Easton',21601);
insert into contact_details values (default,'5 Elmwood Park Blvd','New York','516-509-2347','wkusko@yahoo.com','NY','New York',10011);
insert into contact_details values (default,'23 Palo Alto Sq','Conroe','503-939-3153','bfigeroa@aol.com','TX','Conroe',77301);
insert into contact_details values (default,'38062 E Main St','Columbus','608-976-7199','ammie@corrio.com','OH','Columbus',43215);
insert into contact_details values (default,'3958 S Dupont Hwy #7','Las Cruces','508-429-8576','francine_vocelka@vocelka.com','NM','Las Cruces',88011);
insert into contact_details values (default,'560 Civic Center Dr','Ridgefield Park','305-385-9695','ernie_stenseth@aol.com','NJ','Ridgefield Park',7660);
insert into contact_details values (default,'3270 Dequindre Rd','Dunellen','814-460-2655','albina@glick.com','NJ','Dunellen',8812);
insert into contact_details values (default,'1 Garfield Ave #7','New York','972-666-3413','asergi@gmail.com','NY','New York',10025);
insert into contact_details values (default,'9122 Carpenter Ave','Metairie','931-273-8709','solange@shinko.com','LA','Metairie',70002);
insert into contact_details values (default,'48 Lenox St','New York','973-649-2922','jose@yahoo.com','NY','New York',10011);
insert into contact_details values (default,'5 Little River Tpke','Camarillo','305-420-8970','rozella.ostrosky@ostrosky.com','CA','Camarillo',93012);
insert into contact_details values (default,'3 N Groesbeck Hwy','San Antonio','410-224-9462','valentine_gillian@gmail.com','TX','San Antonio',78204);
insert into contact_details values (default,'37 N Elm St #916','Abilene','805-275-3566','kati.rulapaugh@hotmail.com','KS','Abilene',67410);
insert into contact_details values (default,'433 Westminster Blvd #590','Prineville','808-215-6832','youlanda@aol.com','OR','Prineville',97754);
insert into contact_details values (default,'66697 Park Pl #3224','Overland Park','229-735-3378','doldroyd@aol.com','KS','Overland Park',66204);
insert into contact_details values (default,'96263 Greenwood Pl','Fairbanks','617-418-5043','roxane@hotmail.com','AK','Fairbanks',99708);
insert into contact_details values (default,'8 Mcarthur Ln','Miami','201-672-1553','lperin@perin.org','FL','Miami',33196);
insert into contact_details values (default,'8 Fair Lawn Ave','Fairbanks','650-933-5072','erick.ferencz@aol.com','AK','Fairbanks',99712);
insert into contact_details values (default,'9 N 14th St','Hopkins','909-639-9887','fsaylors@saylors.org','MN','Hopkins',55343);
insert into contact_details values (default,'9 Vanowen St','Boston','510-955-3016','jina_briddick@briddick.com','MA','Boston',2128);
insert into contact_details values (default,'18 Waterloo Geneva Rd','Los Angeles','518-497-2940','kanisha_waycott@yahoo.com','CA','Los Angeles',90006);
insert into contact_details values (default,'506 S Hacienda Dr','Madison','570-867-7489','emerson.bowley@bowley.org','WI','Madison',53711);
insert into contact_details values (default,'3732 Sherman Ave','Philadelphia','973-245-2133','bmalet@yahoo.com','PA','Philadelphia',19132);
insert into contact_details values (default,'25657 Live Oak St','New York','908-409-2890','bbolognia@yahoo.com','NY','New York',10003);
insert into contact_details values (default,'4923 Carey Ave','Tullahoma','321-749-4981','lnestle@hotmail.com','TN','Tullahoma',37388);
insert into contact_details values (default,'3196 S Rider Trl','Columbia','718-809-3762','sabra@uyetake.org','SC','Columbia',29201);
insert into contact_details values (default,'3 Railway Ave #75','Wayne','808-315-3077','mmastella@mastella.com','PA','Wayne',19087);
insert into contact_details values (default,'87393 E Highland Rd','Flemington','303-623-4241','karl_klonowski@yahoo.com','NJ','Flemington',8822);
insert into contact_details values (default,'67 E Chestnut Hill Rd','Westbury','973-310-1634','twenner@aol.com','NY','Westbury',11590);
insert into contact_details values (default,'33 Lewis Rd #46','Jenkintown','609-524-3586','amber_monarrez@monarrez.org','PA','Jenkintown',19046);
insert into contact_details values (default,'8100 Jacksonville Rd #7','Van Nuys','908-877-8409','shenika@gmail.com','CA','Van Nuys',91405);
insert into contact_details values (default,'7 W Wabansia Ave #227','Providence','508-584-4279','delmy.ahle@hotmail.com','RI','Providence',2909);
insert into contact_details values (default,'25 Minters Chapel Rd #9','Huntingdon Valley','773-775-4522','deeanna_juhas@gmail.com','PA','Huntingdon Valley',19006);
insert into contact_details values (default,'6882 Torresdale Ave','Providence','503-527-5274','bpugh@aol.com','RI','Providence',2904);
insert into contact_details values (default,'985 E 6th Ave','Monroe Township','214-339-1809','jamal@vanausdal.org','NJ','Monroe Township',8831);
insert into contact_details values (default,'7 West Ave #1','Austin','312-303-5453','cecily@hollack.org','TX','Austin',78731);
insert into contact_details values (default,'26659 N 13th St','Littleton','419-939-3613','carmelina_lindall@lindall.com','CO','Littleton',80126);
insert into contact_details values (default,'669 Packerland Dr #1438','Milwaukee','951-645-3605','maurine_yglesias@yglesias.com','WI','Milwaukee',53214);
insert into contact_details values (default,'759 Eldora St','New York','254-463-4368','tawna@gmail.com','NY','New York',10009);
insert into contact_details values (default,'5 S Colorado Blvd #449','Anchorage','615-406-7854','penney_weight@aol.com','AK','Anchorage',99515);
insert into contact_details values (default,'944 Gaither Dr','Erie','414-959-2540','elly_morocco@gmail.com','PA','Erie',16502);
insert into contact_details values (default,'66552 Malone Rd','Glen Burnie','410-387-5260','ilene.eroman@hotmail.com','MD','Glen Burnie',21061);
insert into contact_details values (default,'77 Massillon Rd #822','Boise','972-934-6914','vmondella@mondella.com','ID','Boise',83707);
insert into contact_details values (default,'25346 New Rd','San Francisco','310-560-8022','kallie.blackwood@gmail.com','CA','San Francisco',94104);
insert into contact_details values (default,'60 Fillmore Ave','Chapel Hill','516-948-5768','johnetta_abdallah@aol.com','NC','Chapel Hill',27514);
insert into contact_details values (default,'57 Haven Ave #90','San Carlos','609-518-7697','brhym@rhym.com','CA','San Carlos',94070);
insert into contact_details values (default,'6538 E Pomona St #60','Concord','513-508-7371','micaela_rhymes@gmail.com','CA','Concord',94520);
insert into contact_details values (default,'6535 Joyce St','London','541-326-4074','tamar@hotmail.com','OH','London',43140);
insert into contact_details values (default,'78112 Morris Ave','Wellsville','919-533-3762','moon@yahoo.com','NY','Wellsville',14895);
insert into contact_details values (default,'96950 Hidden Ln','Baltimore','212-332-8435','laurel_reitler@reitler.com','MD','Baltimore',21215);
insert into contact_details values (default,'3718 S Main St','Newark','602-906-9419','delisa.crupi@crupi.com','NJ','Newark',7105);
insert into contact_details values (default,'9677 Commerce Dr','Chicago','317-234-1135','viva.toelkes@gmail.com','IL','Chicago',60647);
insert into contact_details values (default,'5 Green Pond Rd #4','Newark','315-304-4759','elza@yahoo.com','NJ','Newark',7104);
insert into contact_details values (default,'636 Commerce Dr #42','Clovis','856-487-5412','devorah@hotmail.com','NM','Clovis',88101);
insert into contact_details values (default,'42744 Hamann Industrial Pky #82','Staten Island','516-212-1915','timothy_mulqueen@mulqueen.org','NY','Staten Island',10309);
insert into contact_details values (default,'1950 5th Ave','Jacksonville','501-308-1040','ahoneywell@honeywell.com','FL','Jacksonville',32254);
insert into contact_details values (default,'61304 N French Rd','Hayward','651-591-2583','dominque.dickerson@dickerson.org','CA','Hayward',94545);
insert into contact_details values (default,'87 Imperial Ct #79','Beachwood','215-325-3042','lettie_isenhower@yahoo.com','OH','Beachwood',44122);
insert into contact_details values (default,'94 W Dodge Rd','Euless','985-890-7262','mmunns@cox.net','TX','Euless',76040);
insert into contact_details values (default,'4 58th St #3519','Gardena','631-957-7624','stephaine@barfield.com','CA','Gardena',90247);
insert into contact_details values (default,'5221 Bear Valley Rd','Evanston','916-591-3277','lai.gato@gato.org','IL','Evanston',60201);
insert into contact_details values (default,'9648 S Main','Akron','208-649-2373','stephen_emigh@hotmail.com','OH','Akron',44302);
insert into contact_details values (default,'7 S San Marcos Rd','Philadelphia','512-587-5746','tshields@gmail.com','PA','Philadelphia',19106);
insert into contact_details values (default,'812 S Haven St','Burlingame','215-964-3284','twardrip@cox.net','CA','Burlingame',94010);
insert into contact_details values (default,'3882 W Congress St #799','San Gabriel','808-477-4775','cory.gibes@gmail.com','CA','San Gabriel',91776);
insert into contact_details values (default,'4 E Colonial Dr','Waco','775-501-8109','danica_bruschke@gmail.com','TX','Waco',76708);
insert into contact_details values (default,'45 2nd Ave #9759','Anchorage','847-979-9545','wilda@cox.net','AK','Anchorage',99501);
insert into contact_details values (default,'57254 Brickell Ave #372','San Jose','973-545-7355','elvera.benimadho@cox.net','CA','San Jose',95110);
insert into contact_details values (default,'8977 Connecticut Ave Nw #3','San Leandro','864-256-3620','carma@cox.net','CA','San Leandro',94577);
insert into contact_details values (default,'9 Waydell St','Indianapolis','410-209-9545','malinda.hochard@yahoo.com','IN','Indianapolis',46202);
insert into contact_details values (default,'43 Huey P Long Ave','Rock Springs','914-855-2115','natalie.fern@hotmail.com','WY','Rock Springs',82901);
insert into contact_details values (default,'7563 Cornwall Rd #4462','Mc Lean','212-260-3151','lisha@centini.org','VA','Mc Lean',22102);
insert into contact_details values (default,'22 Bridle Ln','Florida','510-677-9785','abc@gmail.com','LA','Florida',29708);
insert into contact_details values (default,'9721 Grove Crest Lane','Charlotte','777-888-4849','def@yahoo.com','CO','Charlotte',28262);

-- Records for visits
ALTER TABLE visits AUTO_INCREMENT=9001;
insert into visits values (default,10010,101,'Charlotte Clinic',current_time(),NULL);
insert into visits values (default,10015,102,'Charlotte Clinic','2019-11-2 12:49:30','2019-11-2 15:49:30');
insert into visits values (default,10020,103,'Charlotte Clinic','2019-10-4 11:00:30','2019-10-4 16:40:30');
insert into visits values (default,10025,105,'Charlotte Clinic','2019-10-1 13:00:30','2019-10-1 16:40:30');
insert into visits values (default,10026,106,'Charlotte Clinic','2019-11-6 11:00:30','2019-11-6 16:40:30');
insert into visits values (default,10027,107,'Charlotte Clinic','2019-11-6 14:00:30','2019-11-6 16:40:30');
insert into visits values (default,10030,108,'Uptown Clinic','2019-11-8 11:00:30','2019-11-8 16:40:30');
insert into visits values (default,10031,109,'Uptown Clinic','2019-11-10 17:00:30','2019-11-10 16:40:30');
insert into visits values (default,10032,111,'Uptown Clinic','2019-11-15 11:00:30','2019-11-15 17:40:30');
insert into visits values (default,10020,104,'Uptown Clinic','2019-11-11 11:00:30','2019-11-11 16:40:30');
insert into visits values (default,10025,105,'Charlotte Clinic','2019-11-25 10:00:30','2019-11-25 16:40:30');

-- Records for symptom_sheet
ALTER TABLE symptom_sheet AUTO_INCREMENT=1901;
-- Flu symptom
insert into symptom_sheet values (default,9001,'fever','Fever above 104°F',4,'high');
insert into symptom_sheet values (default,9001,'cough','hacking cough Mild to moderate',3,'medium');
insert into symptom_sheet values (default,9001,'sore throat','scratchiness or irritation of the throat',2,'low');
insert into symptom_sheet values (default,9001,'stuffy nose','clogged nose during night',3,'medium');
insert into symptom_sheet values (default,9001,'muscle aches','Severe muscle pain, not able walk',3,'medium');

-- diarrhea 
insert into symptom_sheet values (default,9002,'watery stools','watery stools after eating',2,'high');
insert into symptom_sheet values (default,9002,'Abdominal pain','have severe abdominal or rectal pain',2,'high');
insert into symptom_sheet values (default,9002,'Bloating',' excess gas builds up in the stomach',4,'medium');
insert into symptom_sheet values (default,9002,'Hearing','Trouble with hearing',3,'medium');

-- Earaches
insert into symptom_sheet values (default,9003,'Fussiness','slight discomfort in the ear canal',4,'medium');
insert into symptom_sheet values (default,9003,'Headache','pain in the back part',3,'low');
insert into symptom_sheet values (default,9003,'Loss of appetite','Not hungry at all',4,'high');
insert into symptom_sheet values (default,9003,'Trouble sleeping','Gets ear pain during sleep',3,'medium');

-- Chicken pox
insert into symptom_sheet values (default,9004,'fatigue','extreme tiredness',4,'high');
insert into symptom_sheet values (default,9004,'rashes','red rashes on body',4,'high');
insert into symptom_sheet values (default,9004,'Blisters','Blisters on hands and legs',3,'medium');
insert into symptom_sheet values (default,9004,'itching','itching all over body',2,'low');

-- Sprains, strains & joint pain
insert into symptom_sheet values (default,9005,'back pain',' not able to sleep on bed',3,'medium');
insert into symptom_sheet values (default,9005,'numbness','numbness of the hands or legs',1,'low');
insert into symptom_sheet values (default,9005,'arm pain','pain in the arm muscles',2,'medium');
insert into symptom_sheet values (default,9005,'Weakness','Not able to lift anything',3,'medium');

-- Pink eye & styes - conjunctivitis
insert into symptom_sheet values (default,9006,'Itching','sensation of Itching',1,'high');
insert into symptom_sheet values (default,9006,'tears','Excessive tearing many times in a day',2,'medium');
insert into symptom_sheet values (default,9006,'Swollen Eyes','sqollen eyelids',1,'low');
insert into symptom_sheet values (default,9006,'Blurry vision','Increased sensitivity to light',1,'high');

-- High Blood Pressure
insert into symptom_sheet values (default,9007,'breathing','shortness of breath',1,'high');
insert into symptom_sheet values (default,9007,'heartbeat','feeling of heart works too hard',2,'high');
insert into symptom_sheet values (default,9007,'tension','Getting tensed for small things',3,'high');

-- Hypo Thyroid 
insert into symptom_sheet values (default,9008,'Weight','More Weight gain in a short time',30,'high');
insert into symptom_sheet values (default,9008,'swollen legs',' not able to walk for long distance',10,'medium');
insert into symptom_sheet values (default,9008,'Muscle','Muscle aches, tenderness and stiffness',5,'medium');
insert into symptom_sheet values (default,9008,'cold','Feeling cold even in 60F',40,'low');

-- Diabetes 
insert into symptom_sheet values (default,9009,'Urinating Often','urinating frequently many times in a day',10,'medium');
insert into symptom_sheet values (default,9009,'Blurry vision','Eyes get blurred too often',8,'high');
insert into symptom_sheet values (default,9009,'slow to heal','Cuts/bruises that are slow to heal',50,'low');
insert into symptom_sheet values (default,9009,'numbness','numbness in the hands/feet',10,'medium');

-- Asthma
insert into symptom_sheet values (default,9010,'breathing','breathing trouble many times a day',15,'high');
insert into symptom_sheet values (default,9010,'Chest tightness','Frequent colds settle in the chest',25,'medium');
insert into symptom_sheet values (default,9010,'Wheezing','whistling sound when breathing,',15,'medium');
insert into symptom_sheet values (default,9010,'Coughing,','excessive coughing during nights,',10,'low');

-- flu
insert into symptom_sheet values (default,9011,'fever','Fever above 104°F',4,'high');
insert into symptom_sheet values (default,9011,'cough','hacking cough Mild to moderate',3,'medium');
insert into symptom_sheet values (default,9011,'sore throat','scratchiness or irritation of the throat',2,'low');
insert into symptom_sheet values (default,9011,'stuffy nose','clogged nose during night',3,'medium');
insert into symptom_sheet values (default,9011,'muscle aches','Severe muscle pain, not able walk',3,'medium');


-- Records for diagnosis
ALTER TABLE diagnosis AUTO_INCREMENT=2901;
insert into diagnosis values (default,9001,'flu');
insert into diagnosis values (default,9002,'Diarrhea');
insert into diagnosis values (default,9003,'Earaches');
insert into diagnosis values (default,9004,'Chicken pox');
insert into diagnosis values (default,9005,'Sprains, strains & joint pain');
insert into diagnosis values (default,9006,'conjunctivitis');
insert into diagnosis values (default,9007,'High Blood Pressure');
insert into diagnosis values (default,9008,'Hypo Thyroid');
insert into diagnosis values (default,9009,'Diabetes');
insert into diagnosis values (default,9010,'Asthma');
insert into diagnosis values (default,9011,'flu');

ALTER TABLE tests AUTO_INCREMENT=1201;
-- flu
insert into tests values (default,2901,'rapid influenza diagnostic','postive');
insert into tests values (default,2901,'rapid molecular assays','postive');

-- Diarrhea
insert into tests values (default,2902,'blood test','negative');
insert into tests values (default,2902,'Stool test','postive');
insert into tests values (default,2902,'colonoscopy','postive');

-- Earaches
insert into tests values (default,2903,'Tympanometry','postive');
insert into tests values (default,2903,'Acoustic reflectometry','postive');
insert into tests values (default,2903,'Tympanocentesis','negative');

-- Chicken pox
insert into tests values (default,2904,'IgM serologic','postive');
insert into tests values (default,2904,'PCR testing','postive');

-- Sprains, strains & joint pain'
insert into tests values (default,2905,'MRI','Report');
insert into tests values (default,2905,'X-ray','Report');

-- conjunctivitis
insert into tests values (default,2906,'eye fluid','postive');
insert into tests values (default,2906,'eye cells observation','postive');

-- High Blood Pressure
insert into tests values (default,2907,'urine test','postive');
insert into tests values (default,2907,'cholesterol','postive');
insert into tests values (default,2907,'bloodtest','postive');
insert into tests values (default,2907,'echocardiogram','postive');

-- Hypo Thyroid
insert into tests values (default,2908,'bloodtest','postive');
insert into tests values (default,2908,'TSH','postive');
insert into tests values (default,2908,'thyroxine','postive');

-- Diabetes
insert into tests values (default,2909,'FPG','postive');
insert into tests values (default,2909,'bloodtest','postive');
insert into tests values (default,2909,'A1C','postive');
insert into tests values (default,2909,'RPG','postive');

-- Asthma
insert into tests values (default,2910,'Spirometry','postive');
insert into tests values (default,2910,'Exhaled nitric oxide','postive');
insert into tests values (default,2910,'X-ray','Report');

-- Flu
insert into tests values (default,2911,'rapid influenza diagnostic','negative');
insert into tests values (default,2911,'rapid molecular assays','positive');

-- Records for prescription
ALTER TABLE prescription AUTO_INCREMENT=3901;
insert into prescription values (default,9001,'Baloxavir marboxil',30,'2 tabelts a day');
insert into prescription values (default,9002,'sulfamethoxazole',10,'1 tablet a day');
insert into prescription values (default,9003,'amoxicillin',50,'2 tabelts a day');
insert into prescription values (default,9004,' acyclovir',50,'2 tablets a day');
insert into prescription values (default,9005,'RT Capsin Cream',2,'Apply twice daily');
insert into prescription values (default,9006,'Moxeza Drops',2,'3 times a day');
insert into prescription values (default,9007,'felodipine',20,'2 tablets a day');
insert into prescription values (default,9008,'levothyroxine',30,'2 tablets a day');
insert into prescription values (default,9009,'glimepiride',40,'2 tablets a day');
insert into prescription values (default,9010,'Albuterol Inhaler',10,'2 times day');
insert into prescription values (default,9011,'Baloxavir marboxil',30,'2 tabelts a day');

-- Records for billing
ALTER TABLE billing AUTO_INCREMENT=4901;
insert into billing values (default,9001,456.75,146.00,310.75,'medicince expenses');
insert into billing values (default,9001,300.00,200.00,100.00,'x-ray charges');
insert into billing values (default,9002,56.75,0.00,56.75,'X-ray charges');
insert into billing values (default,9003,400.25,300.00,100.75,'consulting fees');
insert into billing values (default,9003,500.00,300.00,200.00,'medicine expenses');
insert into billing values (default,9004,200.95,50.00,150.95,'medicince expenses');
insert into billing values (default,9005,150.95,50.00,100.95,'X-ray charges');
insert into billing values (default,9006,150.95,50.00,100.95,'consulting fees');
insert into billing values (default,9007,310.95,10.90,300,'medicince expenses');
insert into billing values (default,9007,600.00,400.00,200,'consulting fees');
insert into billing values (default,9008,430.50,130.50,300,'X-ray charges');
insert into billing values (default,9009,430.50,130.50,300,'consulting fees');
insert into billing values (default,9010,53.50,20.50,33.50,'medicince expenses');
insert into billing values (default,9011,250.00,150.00,100.00,'X-ray charges');



-- Records for users
insert into users values ('doctor1','123','doctor');
insert into users values ('doctor2','123','doctor');
insert into users values ('doctor3','123','doctor');
insert into users values ('nurse1','123','nurse');
insert into users values ('nurse2','123','nurse');
insert into users values ('nurse3','123','nurse');
insert into users values ('clerk1','123','clerk');
insert into users values ('clerk2','123','clerk');
insert into users values ('clerk3','123','clerk');
insert into users values('XXXX','CURRENT','CURRENT');


select * from patients;
select * from doctors;
select * from speciality;
select * from contact_details;
select * from insurance_company;
select * from visits;
select * from symptom_sheet;
select * from diagnosis;
select * from tests;
select * from prescription;
select * from billing;
select * from users;


