DROP TABLE IF EXISTS Destroyers
CREATE TABLE Destroyers
(
	ImagePath VARCHAR(100),
	Abbrev CHAR(4),
	Nation VARCHAR(4),
	Tier VARCHAR(4),
	[ship name] VARCHAR(60),
	Survivability INT,
	Artillery INT,
	Torpedoes VARCHAR(4),
	[AA Defense] VARCHAR(4),
	Maneuverability INT,
	Concealment INT
)

INSERT INTO Destroyers
VALUES
('https://wiki.gcdn.co/images/a/aa/Ship_PASD002_Sampson_1917.png','DD','USA', 'II', 'Sampson', 10, 11, 9, 3, 53, 91),('https://wiki.gcdn.co/images/6/67/Ship_PASD027_Wickes_1918.png','DD','USA', 'III', 'Wickes', 11, 11, 14, 3, 62, 88),('https://wiki.gcdn.co/images/3/3c/Ship_PASD019_Clemson_1920.png','DD','USA', 'IV', 'Clemson', 13, 10, 22, 3, 65, 86),
('https://wiki.gcdn.co/images/9/9c/Ship_PASD014_Leader_1919.png','DD','USA', 'V', 'Nicholas', 19, 18, 21, 7, 68, 88), ('https://wiki.gcdn.co/images/2/23/Ship_PASD005_Farragut_1944.png','DD','USA', 'VI', 'Farragut', 19, 27, 12, 27, 67, 83), ('https://wiki.gcdn.co/images/2/29/Ship_PASD006_Mahan_1936.png','DD','USA', 'VII', 'Mahan', 22, 27, 22, 27, 64, 82),
('https://wiki.gcdn.co/images/8/89/Ship_PASD008_Benson_1945.png','DD','USA', 'VIII', 'Benson', 24, 27, 17, 46, 70, 84), ('https://wiki.gcdn.co/images/c/cb/Ship_PASD021_Fletcher_1943.png','DD','USA', 'IX', 'Fletcher', 27, 28, 23, 51, 67, 83), ('https://wiki.gcdn.co/images/b/bb/Ship_PASD013_Gearing_1945.png','DD','USA', 'X', 'Gearing', 35, 28, 36, 52, 66, 82),
('https://wiki.gcdn.co/images/c/c3/Ship_PJSD002_Umikaze_1925.png','DD','IJN', 'II', 'Umikaze', 10, 10, 4, 0, 60, 92), ('https://wiki.gcdn.co/images/5/58/Ship_PJSD024_Wakatake_1923.png','DD','IJN', 'III', 'Wakatake', 11, 13, 8, 5, 71, 92), ('https://wiki.gcdn.co/images/6/61/Ship_PJSD003_Isokaze_1917.png','DD','IJN', 'IV', 'Isokaze', 14, 9, 12, 1, 62, 90),
('https://wiki.gcdn.co/images/e/e2/Ship_PJSD105_Mutsuki.png','DD','IJN', 'V', 'Mutsuki', 16, 12, 17, 9, 70, 89),('https://wiki.gcdn.co/images/5/5b/Ship_PJSD004_Minekadze_1920.png','DD','IJN', 'V', 'Minekaze', 16, 14, 14, 2, 73, 89),('https://wiki.gcdn.co/images/1/1a/Ship_PJSD106_Fubuki.png','DD','IJN', 'VI', 'Fubuki', 20, 25, 21, 9, 63, 85),
('https://wiki.gcdn.co/images/c/c2/Ship_PJSD206_Hatsuharu.png','DD','IJN', 'VI', 'Hatsuharu', 19, 25, 14, 31, 67, 87),('https://wiki.gcdn.co/images/e/e7/Ship_PJSD107_Akatsuki.png','DD', 'IJN', 'VII', 'Akatsuki', 21,26, 30, 37, 69, 83), ('https://wiki.gcdn.co/images/e/e7/Ship_PJSD207_Shiratsuyu.png','DD', 'IJN', 'VII', 'Shiratsuyu', 21, 25, 23, 6, 61, 87),
('https://wiki.gcdn.co/images/0/04/Ship_PJSD208_Kagero.png','DD', 'IJN', 'VIII', 'Kagero', 25, 25, 24, 10, 63, 85),('https://wiki.gcdn.co/images/9/91/Ship_PJSD108_Akizuki.png','DD', 'IJN', 'VIII', 'Akizuki', 33, 23, 15, 62, 61, 86), ('https://wiki.gcdn.co/images/d/df/Ship_PJSD209_Yugumo.png','DD', 'IJN', 'IX', 'Yugumo', 27, 27, 29, 37, 63, 85),
('https://wiki.gcdn.co/images/7/7d/Ship_PJSD219_Kitakaze.png','DD', 'IJN', 'IX', 'Kitakaze', 35, 23, 22, 66, 68, 86),('https://wiki.gcdn.co/images/7/7e/Ship_PJSD012_Shimakaze_1943.png','DD', 'IJN', 'X', 'Shimakaze', 33, 27, 63, 39, 76, 88),('https://wiki.gcdn.co/images/b/b4/Ship_PJSD210_Harugumo.png','DD', 'IJN', 'X', 'Harugumo', 45, 23, 22, 72, 65, 84),
('https://wiki.gcdn.co/images/f/fb/Ship_PGSD102_V_25.png','DD', 'KM', 'II', 'V-25', 8, 8, 9, 0, 69, 94),('https://wiki.gcdn.co/images/1/19/Ship_PGSD103_G_101.png','DD', 'KM', 'III', 'G-101', 11, 14, 12, 0, 61, 88),('https://wiki.gcdn.co/images/a/a6/Ship_PGSD104_V_170.png','DD', 'KM', 'IV', 'V-170', 14, 14, 14, 0, 66, 89),
('https://wiki.gcdn.co/images/8/8c/Ship_PGSD105_T_22.png','DD', 'KM', 'V', 'T-22', 16, 14, 15, 23, 63, 88),('https://wiki.gcdn.co/images/0/0f/Ship_PGSD106_Ernst_Gaede.png','DD', 'KM', 'VI', 'Gaede', 24, 25, 18, 12, 64, 82),('https://wiki.gcdn.co/images/2/2d/Ship_PGSD107_Leberecht_Maass.png','DD', 'KM', 'VII', 'Mass', 24, 25, 19, 12, 66, 81),
('https://wiki.gcdn.co/images/0/0f/Ship_PGSD108_Z_23.png','DD', 'KM', 'VIII', 'Z-23', 29, 25, 21, 11, 65, 80),('https://wiki.gcdn.co/images/c/cf/Ship_PGSD109_Z_46.png','DD','KM', 'IX', 'Z-46', 30, 27, 22, 48, 67, 81),('https://wiki.gcdn.co/images/2/20/Ship_PGSD110_Z_52.png','DD', 'KM', 'X', 'Z-52', 36, 28, 23, 58, 67, 80),
('https://wiki.gcdn.co/images/a/ad/Ship_PRSD102_SM_Storojevoy.png','DD', 'RUS', 'II', 'Storozhevoi', 8, 13, 8, 2, 66, 92),('https://wiki.gcdn.co/images/8/8d/Ship_PRSD103_Derzky.png','DD', 'RUS', 'III', 'Derzki', 12, 12, 11, 2, 63, 90),('https://wiki.gcdn.co/images/a/a0/Ship_PRSD104_Izyaslav.png','DD', 'RUS', 'IV', 'Izyaslav', 14, 14, 9, 3, 64, 87),
('https://wiki.gcdn.co/images/3/34/Ship_PRSD205_Podvoisky_pr_1929.png','DD', 'RUS', 'V', 'Podvoisky', 18, 26, 12, 6, 77, 81),('https://wiki.gcdn.co/images/0/03/Ship_PRSD206_Pr_7.png','DD', 'RUS', 'VI', 'Gnevny', 20, 28, 12, 9, 68, 85),('https://wiki.gcdn.co/images/4/49/Ship_PRSD207_Minsk.png','DD', 'RUS', 'VII', 'Minsk', 24, 28, 13, 10, 79, 81),
('https://wiki.gcdn.co/images/5/58/Ship_PRSD308_Pr_48.png','DD', 'RUS', 'VIII', 'Kiev', 28, 33, 19, 26, 83, 81),('https://wiki.gcdn.co/images/b/be/Ship_PRSD208_Pr_30.png','DD', 'RUS', 'VIII', 'Ognevoi', 25, 28, 21, 8, 66, 82),('https://wiki.gcdn.co/images/1/15/Ship_PRSD409_Pr_20i_Tashkent.png','DD', 'RUS', 'IX', 'Tashkent', 36, 32, 26, 48, 82, 79),
('https://wiki.gcdn.co/images/d/d4/Ship_PRSD107_Pr_35_Udaloy.png','DD', 'RUS', 'IX', 'Udaloi', 29, 32, 25, 44, 72, 78),('https://wiki.gcdn.co/images/2/20/Ship_PRSD110_Pr_24_Khabarovsk.png','DD', 'RUS', 'X', 'Khabarovsk', 38, 32, 20, 55, 78, 71),('https://wiki.gcdn.co/images/0/03/Ship_PRSD210_Grozovoy_pr_40N.png','DD', 'RUS', 'X', 'Grozovoi', 36, 35, 24, 58, 76, 89),
('https://wiki.gcdn.co/images/e/ef/Ship_PBSD102_Medea.png','DD', 'RN', 'II', 'Medea', 9, 7, 7, 0, 60, 94),('https://wiki.gcdn.co/images/7/74/Ship_PBSD103_Valkyrie.png','DD', 'RN', 'III', 'Valkyrie', 12, 12, 7, 4, 63, 89),('https://wiki.gcdn.co/images/a/a9/Ship_PBSD104_Wakeful.png','DD', 'RN', 'IV', 'Wakeful', 13, 12, 9, 2, 65, 89),
('https://wiki.gcdn.co/images/5/58/Ship_PBSD105_Acasta.png','DD', 'RN', 'V', 'Acasta', 16, 23, 13, 8, 64, 87),('https://wiki.gcdn.co/images/1/12/Ship_PBSD106_Icarus.png','DD', 'RN', 'VI', 'Icarus', 18, 24, 13, 6, 65, 86),('https://wiki.gcdn.co/images/0/0d/Ship_PBSD107_Jervis.png','DD', 'RN', 'VII', 'Jervis', 22, 25, 20, 12, 65, 84),
('https://wiki.gcdn.co/images/5/5b/Ship_PBSD108_Lightning.png','DD', 'RN', 'VIII', 'Lightning', 28, 30, 20, 28, 67, 89),('https://wiki.gcdn.co/images/a/ab/Ship_PBSD109_Jutland.png','DD', 'RN', 'IX', 'Jutland', 28, 20, 24, 44, 60, 83),('https://wiki.gcdn.co/images/2/2a/Ship_PBSD110_Daring.png','DD', 'RN', 'X', 'Daring', 40, 22, 26, 52, 67, 90)

ALTER TABLE [Destroyers]
ADD Id INT;

update [Destroyers] set Id=1 where [ship name] like 'Sampson'
update [Destroyers] set Id=2 where [ship name] like 'Wickes'
update [Destroyers] set Id=3 where [ship name] like 'Clemson'
update [Destroyers] set Id=4 where [ship name] like 'Nicholas'
update [Destroyers] set Id=5 where [ship name] like 'Farragut'
update [Destroyers] set Id=6 where [ship name] like 'Mahan'
update [Destroyers] set Id=7 where [ship name] like 'Benson'
update [Destroyers] set Id=8 where [ship name] like 'Fletcher'
update [Destroyers] set Id=9 where [ship name] like 'Gearing'
update [Destroyers] set Id=10 where [ship name] like 'Umikaze'
update [Destroyers] set Id=11 where [ship name] like 'Wakatake'
update [Destroyers] set Id=12 where [ship name] like 'Isokaze'
update [Destroyers] set Id=13 where [ship name] like 'Mutsuki'
update [Destroyers] set Id=14 where [ship name] like 'Minekaze'
update [Destroyers] set Id=15 where [ship name] like 'Fubuki'
update [Destroyers] set Id=16 where [ship name] like 'Hatsuharu'
update [Destroyers] set Id=17 where [ship name] like 'Akatsuki'
update [Destroyers] set Id=18 where [ship name] like 'Shiratsuyu'
update [Destroyers] set Id=19 where [ship name] like 'Kagero'
update [Destroyers] set Id=20 where [ship name] like 'Akizuki'
update [Destroyers] set Id=21 where [ship name] like 'Yugumo'
update [Destroyers] set Id=22 where [ship name] like 'Kitakaze'
update [Destroyers] set Id=23 where [ship name] like 'Shimakaze'
update [Destroyers] set Id=24 where [ship name] like 'Harugumo'
update [Destroyers] set Id=25 where [ship name] like 'V-25'
update [Destroyers] set Id=26 where [ship name] like 'G-101'
update [Destroyers] set Id=27 where [ship name] like 'V-170'
update [Destroyers] set Id=28 where [ship name] like 'T-22'
update [Destroyers] set Id=29 where [ship name] like 'Gaede'
update [Destroyers] set Id=30 where [ship name] like 'Mass'
update [Destroyers] set Id=31 where [ship name] like 'Z-23'
update [Destroyers] set Id=32 where [ship name] like 'Z-46'
update [Destroyers] set Id=33 where [ship name] like 'Z-52'
update [Destroyers] set Id=34 where [ship name] like 'Storozhevoi'
update [Destroyers] set Id=35 where [ship name] like 'Derzki'
update [Destroyers] set Id=36 where [ship name] like 'Izyaslav'
update [Destroyers] set Id=37 where [ship name] like 'Podvoisky'
update [Destroyers] set Id=38 where [ship name] like 'Gnevny'
update [Destroyers] set Id=39 where [ship name] like 'Minsk'
update [Destroyers] set Id=40 where [ship name] like 'Kiev'
update [Destroyers] set Id=41 where [ship name] like 'Ognevoi'
update [Destroyers] set Id=42 where [ship name] like 'Tashkent'
update [Destroyers] set Id=43 where [ship name] like 'Udaloi'
update [Destroyers] set Id=44 where [ship name] like 'Khabarovsk'
update [Destroyers] set Id=45 where [ship name] like 'Grozovoi'
update [Destroyers] set Id=46 where [ship name] like 'Medea'
update [Destroyers] set Id=47 where [ship name] like 'Valkyrie'
update [Destroyers] set Id=48 where [ship name] like 'Wakeful'
update [Destroyers] set Id=49 where [ship name] like 'Acasta'
update [Destroyers] set Id=50 where [ship name] like 'Icarus'
update [Destroyers] set Id=51 where [ship name] like 'Jervis'
update [Destroyers] set Id=52 where [ship name] like 'Lightning'
update [Destroyers] set Id=53 where [ship name] like 'Jutland'
update [Destroyers] set Id=54 where [ship name] like 'Daring'

ALTER TABLE [Destroyers]
ALTER COLUMN ID INT NOT NULL;

ALTER TABLE [Destroyers]
ADD PRIMARY KEY ([Id]);

-------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS [Heavy Cruisers]
CREATE TABLE [Heavy Cruisers]
(
	ImagePath VARCHAR(100),
	Abbrev CHAR(4),
	Nation VARCHAR(4),
	Tier VARCHAR(4),
	[Ship Name] VARCHAR(60),
	Survivability INT,
	Artillery INT,
	Torpedoes VARCHAR(4),
	[AA Defense] VARCHAR(4),
	Maneuverability INT,
	Concealment INT
)

INSERT INTO [Heavy Cruisers]
VALUES
('https://wiki.gcdn.co/images/f/f1/Ship_PASC106_Pensacola_1944.png','CA', 'USA', 'VI', 'Pensacola', 41, 65, 0, 44, 54, 47),('https://wiki.gcdn.co/images/1/19/Ship_PASC107_New_Orlean_1944.png','CA', 'USA', 'VII', 'New Orleans', 41, 69, 0, 53, 54, 55),('https://wiki.gcdn.co/images/7/72/Ship_PASC108_Baltimore_1944.png','CA', 'USA', 'VIII', 'Baltimore', 56, 78, 0, 77, 55, 60),
('https://wiki.gcdn.co/images/8/8a/Ship_PASC109_Buffalo.png','CA', 'USA', 'IX', 'Buffalo', 58, 76, 0, 76, 49, 46),('https://wiki.gcdn.co/images/7/7d/Ship_PASC020_Des_Moines_1948.png','CA', 'USA', 'X', 'Des Moines', 68, 84, 0, 83, 59, 61),('https://wiki.gcdn.co/images/3/36/Ship_PJSC037_Hashidate_1940.png','CA', 'IJN', 'I', 'Hashidate', 4, 1, 0, 7, 34, 76),
('https://wiki.gcdn.co/images/e/ea/Ship_PJSC035_Chikuma_1912.png','CA', 'IJN', 'II', 'Chikuma', 19, 27, 0, 1, 45, 73),('https://wiki.gcdn.co/images/d/d9/Ship_PJSC015_Tatsuta_1919.png','CA', 'IJN', 'III', 'Tenryu', 19, 30, 10, 4, 58, 78),('https://wiki.gcdn.co/images/e/e3/Ship_PJSC013_Kuma_1938.png','CA', 'IJN', 'IV', 'Kuma', 29, 32, 19, 5, 60, 62),
('https://wiki.gcdn.co/images/7/72/Ship_PJSC005_Furutaka_1926.png','CA', 'IJN', 'V', 'Furutaka', 36, 55, 14, 7, 57, 57),('https://wiki.gcdn.co/images/c/cd/Ship_PJSC007_Aoba_1943.png','CA', 'IJN', 'VI', 'Aoba', 42, 65, 22, 31, 65, 59),('https://wiki.gcdn.co/images/a/ab/Ship_PJSC008_Myoko_1945.png','CA', 'IJN', 'VII', 'Myoko',51, 67, 43, 47, 63, 53),
('https://wiki.gcdn.co/images/0/0d/Ship_PJSC009_Mogami_1935.png','CA', 'IJN','VIII', 'Mogami',53, 68, 49, 45, 62, 63),('https://wiki.gcdn.co/images/f/f8/Ship_PJSC012_Ibuki_1944.png','CA', 'IJN', 'IX', 'Ibuki', 54, 70, 58, 68, 63, 67),('https://wiki.gcdn.co/images/8/89/Ship_PJSC034_Zao_1944.png','CA', 'IJN', 'X', 'Zao', 58, 81, 61, 80, 62, 66),
('https://wiki.gcdn.co/images/3/3c/Ship_PRSC208_Tallin.png','CA', 'RUS', 'VIII', 'Tallinn', 59, 75, 17, 80, 56, 53),('https://wiki.gcdn.co/images/f/fb/Ship_PRSC209_Riga.png','CA', 'RUS', 'IX', 'Riga', 63, 78, 0, 65, 48, 39),('https://wiki.gcdn.co/images/1/10/Ship_PRSC310_Petropavlovsk.png','CA', 'RUS', 'X', 'Petropavlovsk', 74, 83, 0, 96, 53, 54),
('https://wiki.gcdn.co/images/8/8f/Ship_PBSC205_Hawkins.png','CA', 'RN', 'V', 'Hawkins', 36, 59, 13, 19, 46, 54),('https://wiki.gcdn.co/images/7/72/Ship_PBSC206_Devonshire.png','CA', 'RN', 'VI', 'Devonshire', 44, 66, 20, 48, 55, 63),('https://wiki.gcdn.co/images/0/0e/Ship_PBSC207_Surrey.png','CA', 'RN', 'VII', 'Surrey', 47, 67, 20, 58, 52, 62),
('https://wiki.gcdn.co/images/a/a6/Ship_PBSC208_Albemarle.png','CA', 'RN', 'VIII', 'Ablemarle', 58,68, 23, 75, 58, 60),('https://wiki.gcdn.co/images/e/e8/Ship_PBSC209_Drake.png','CA', 'RN', 'IX', 'Drake', 63, 85, 24, 73, 57, 55),('https://wiki.gcdn.co/images/8/88/Ship_PBSC210_Goliath.png','CA', 'RN', 'X', 'Goliath', 77, 88, 24, 82, 54, 59) 


ALTER TABLE [Heavy Cruisers]
ADD Id INT;

update [Heavy Cruisers] set Id=1 where [ship name] like 'Pensacola'
update [Heavy Cruisers] set Id=2 where [ship name] like 'New Orleans'
update [Heavy Cruisers] set Id=3 where [ship name] like 'Baltimore'
update [Heavy Cruisers] set Id=4 where [ship name] like 'Buffalo'
update [Heavy Cruisers] set Id=5 where [ship name] like 'Des Moines'
update [Heavy Cruisers] set Id=6 where [ship name] like 'Hashidate'
update [Heavy Cruisers] set Id=7 where [ship name] like 'Chikuma'
update [Heavy Cruisers] set Id=8 where [ship name] like 'Tenryu'
update [Heavy Cruisers] set Id=9 where [ship name] like 'Kuma'
update [Heavy Cruisers] set Id=10 where [ship name] like 'Furutaka'
update [Heavy Cruisers] set Id=11 where [ship name] like 'Aoba'
update [Heavy Cruisers] set Id=12 where [ship name] like 'Myoko'
update [Heavy Cruisers] set Id=13 where [ship name] like 'Mogami'
update [Heavy Cruisers] set Id=14 where [ship name] like 'Ibuki'
update [Heavy Cruisers] set Id=15 where [ship name] like 'Zao'
update [Heavy Cruisers] set Id=16 where [ship name] like 'Tallinn'
update [Heavy Cruisers] set Id=17 where [ship name] like 'Riga'
update [Heavy Cruisers] set Id=18 where [ship name] like 'Petropavlovsk'
update [Heavy Cruisers] set Id=19 where [ship name] like 'Hawkins'
update [Heavy Cruisers] set Id=20 where [ship name] like 'Devonshire'
update [Heavy Cruisers] set Id=21 where [ship name] like 'Surrey'
update [Heavy Cruisers] set Id=22 where [ship name] like 'Ablemarle'
update [Heavy Cruisers] set Id=23 where [ship name] like 'Drake'
update [Heavy Cruisers] set Id=24 where [ship name] like 'Goliath'

ALTER TABLE [Heavy Cruisers]
ALTER COLUMN ID INT NOT NULL;

ALTER TABLE [Heavy Cruisers]
ADD PRIMARY KEY ([Id]);

---------------------------------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS [Light Cruisers]
CREATE TABLE [Light Cruisers]
(
	ImagePath VARCHAR(100),
	Abbrev CHAR(4),
	Nation VARCHAR(4),
	Tier VARCHAR(4),
	[Ship Name] VARCHAR(60),
	Survivability INT,
	Artillery INT,
	Torpedoes VARCHAR(4),
	[AA Defense] VARCHAR(4),
	Maneuverability INT,
	Concealment INT
)

INSERT INTO [Light Cruisers]
VALUES
('https://wiki.gcdn.co/images/8/80/Ship_PASC001_Erie_1936.png','CL', 'USA', 'I', 'Erie', 4, 1, 0, 1, 35, 76),('https://wiki.gcdn.co/images/0/01/Ship_PASC002_Chester_1908.png','CL', 'USA', 'II', 'Chester', 17, 17, 0, 0, 41, 77),('https://wiki.gcdn.co/images/1/1c/Ship_PASC004_St_Louis_1906.png','CL', 'USA', 'III', 'St. Louis', 32, 36, 0, 0, 65, 63),('https://wiki.gcdn.co/images/d/d5/Ship_PASC024_Phoenix_1917.png','CL', 'USA', 'IV', 'Phoenix', 27, 35, 9, 6, 61, 53),
('https://wiki.gcdn.co/images/4/4e/Ship_PASC005_Omaha_1923.png','CL', 'USA', 'V', 'Omaha', 30, 39, 17, 11, 59, 52),('https://wiki.gcdn.co/images/9/9c/Ship_PASC206_Dallas.png','CL', 'USA', 'VI', 'Dallas', 38, 50, 0, 54, 56, 58),('https://wiki.gcdn.co/images/7/79/Ship_PASC207_Helena.png','CL', 'USA', 'VII', 'Helena', 40, 50, 0, 54, 51, 57),('https://wiki.gcdn.co/images/c/cd/Ship_PASC208_Cleveland.png','CL', 'USA', 'VIII', 'Cleveland', 44, 54, 0, 72, 55, 69),
('https://wiki.gcdn.co/images/1/1c/Ship_PASC209_Seattle.png','CL', 'USA', 'IX', 'Seattle', 57, 50, 0, 82, 52, 51),('https://wiki.gcdn.co/images/3/37/Ship_PASC210_Worcester.png','CL', 'USA', 'X', 'Worcester', 63, 59, 0, 96, 58, 65),('https://wiki.gcdn.co/images/5/56/Ship_PRSC101_Orlan.png','CL', 'RUS', 'I', 'Orlan', 4, 1, 0, 1, 46, 79),('https://wiki.gcdn.co/images/b/be/Ship_PRSC102_Novik.png','CL', 'RUS', 'II', 'Novik', 15, 13, 0, 2, 44, 76),  
('https://wiki.gcdn.co/images/2/20/Ship_PRSC103_Bogatyr.png','CL', 'RUS', 'III', 'Bogatyr', 24, 24, 0, 0, 39, 68),('https://wiki.gcdn.co/images/c/c1/Ship_PRSC104_Svetlana.png','CL', 'RUS', 'IV', 'Svietlana', 28, 24, 15, 6, 47, 69),('https://wiki.gcdn.co/images/f/f9/Ship_PRSC215_Kotovsky.png','CL', 'RUS', 'V', 'Kotovsky', 33, 47, 12, 26, 59, 56),('https://wiki.gcdn.co/images/d/d1/Ship_PRSC106_Pr_94_Budeny.png','CL', 'RUS', 'VI', 'Budyonny', 40, 53, 15, 43, 61, 53),
('https://wiki.gcdn.co/images/3/39/Ship_PRSC107_Schors.png','CL', 'RUS', 'VII', 'Schors', 39, 53, 12, 28, 55, 50),('https://wiki.gcdn.co/images/5/50/Ship_PRSC108_Pr_68_Chapaev.png','CL', 'RUS', 'VIII', 'Chapayev', 45, 55, 14, 50, 50, 49),('https://wiki.gcdn.co/images/c/cc/Ship_PRSC109_Dmitry_Donskoy.png','CL', 'RUS', 'IX', 'Dimitri Donskoi', 56, 69, 19, 64, 54, 36),('https://wiki.gcdn.co/images/8/8e/Ship_PRSC210_Pr_84_Alexander_Nevsky.png','CL', 'RUS', 'X', 'Alexander Nevsky', 69, 79, 19, 92, 62, 41),
('https://wiki.gcdn.co/images/1/18/Ship_PGSC001_Hermelin_1940.png','CL', 'KM', 'I', 'Hermelin', 4, 1, 0, 11, 43, 70),('https://wiki.gcdn.co/images/8/82/Ship_PGSC002_Drezden_1908.png','CL', 'KM', 'II', 'Dresden', 18, 15, 0, 2, 42, 73),('https://wiki.gcdn.co/images/0/09/Ship_PGSC103_Kolberg.png','CL','KM','III','Kolberg', 21, 16,0,0, 46,71),('https://wiki.gcdn.co/images/3/37/Ship_PGSC104_Karlsruhe.png','CL', 'KM', 'IV', 'Karlsruhe', 25, 40, 7, 10, 44, 65),('https://wiki.gcdn.co/images/2/26/Ship_PGSC105_Konigsberg.png','CL', 'KM', 'V', 'Konigsberg', 30, 46, 28, 13, 53, 57),
('https://wiki.gcdn.co/images/c/ce/Ship_PGSC106_Nurnberg.png','CL', 'KM', 'VI', 'Nurnberg', 33, 48, 28, 33, 51, 55),('https://wiki.gcdn.co/images/8/87/Ship_PGSC107_Yorck.png','CL', 'KM', 'VII', 'Yorck', 38, 69, 28, 40, 51, 49),('https://wiki.gcdn.co/images/3/3c/Ship_PGSC108_Hipper.png','CL', 'KM', 'VIII', 'Admiral Hipper', 51, 77, 28, 65, 48, 45),('https://wiki.gcdn.co/images/4/4e/Ship_PGSC109_Roon.png','CL', 'KM', 'IX', 'Roon', 59, 74, 16, 69, 48, 43),
('https://wiki.gcdn.co/images/2/2e/Ship_PGSC110_Hindenburg.png','CL', 'KM', 'X', 'Hindenburg', 70, 83, 32, 84, 48, 45),('https://wiki.gcdn.co/images/f/f6/Ship_PBSC101_Black_Swan.png','CL', 'RN', 'I', 'Black Swan', 6, 1, 0, 2, 33, 87),('https://wiki.gcdn.co/images/e/e7/Ship_PBSC102_Weymouth.png','CL', 'RN', 'II', 'Weymouth', 22, 18, 0, 6, 44, 75), ('https://wiki.gcdn.co/images/b/b6/Ship_PBSC103_Caledon.png','CL', 'RN', 'III', 'Caldeon', 23, 20, 15, 9, 50, 70),
('https://wiki.gcdn.co/images/3/3e/Ship_PBSC104_Danae.png','CL', 'RN', 'IV', 'Danae', 24, 20, 18, 9, 50, 67),('https://wiki.gcdn.co/images/9/92/Ship_PBSC105_Emerald.png','CL', 'RN', 'V', 'Emerald', 31, 26, 22, 15, 53, 66),('https://wiki.gcdn.co/images/1/11/Ship_PBSC106_Leander.png','CL', 'RN', 'VI', 'Leander', 38, 33, 20, 46, 55, 65),('https://wiki.gcdn.co/images/6/6b/Ship_PBSC107_Fiji.png','CL', 'RN', 'VII', 'Fiji', 43, 34, 17, 58, 59, 60),
('https://wiki.gcdn.co/images/6/69/Ship_PBSC108_Edinburgh.png','CL', 'RN', 'VIII', 'Edinburgh', 50, 34, 20, 69, 54, 70),('https://wiki.gcdn.co/images/b/be/Ship_PBSC109_Neptune.png','CL', 'RN', 'IX', 'Neptune', 55, 38, 45, 96, 50, 47),('https://wiki.gcdn.co/images/1/19/Ship_PBSC110_Minotaur.png','CL', 'RN', 'X', 'Minotaur', 61, 37, 49, 97, 59, 68) 

ALTER TABLE [Light Cruisers]
ADD Id INT;

update [Light Cruisers] set Id=1 where [ship name] like 'Erie'
update [Light Cruisers] set Id=2 where [ship name] like 'Chester'
update [Light Cruisers] set Id=3 where [ship name] like 'St. Louis'
update [Light Cruisers] set Id=4 where [ship name] like 'Phoenix'
update [Light Cruisers] set Id=5 where [ship name] like 'Omaha'
update [Light Cruisers] set Id=6 where [ship name] like 'Dallas'
update [Light Cruisers] set Id=7 where [ship name] like 'Helena'
update [Light Cruisers] set Id=8 where [ship name] like 'Cleveland'
update [Light Cruisers] set Id=9 where [ship name] like 'Seattle'
update [Light Cruisers] set Id=10 where [ship name] like 'Worcester'
update [Light Cruisers] set Id=11 where [ship name] like 'Orlan'
update [Light Cruisers] set Id=12 where [ship name] like 'Novik'
update [Light Cruisers] set Id=13 where [ship name] like 'Bogatyr'
update [Light Cruisers] set Id=14 where [ship name] like 'Svietlana'
update [Light Cruisers] set Id=15 where [ship name] like 'Kotovsky'
update [Light Cruisers] set Id=16 where [ship name] like 'Budyonny'
update [Light Cruisers] set Id=17 where [ship name] like 'Schors'
update [Light Cruisers] set Id=18 where [ship name] like 'Chapayev'
update [Light Cruisers] set Id=19 where [ship name] like 'Dimitri Donskoi'
update [Light Cruisers] set Id=20 where [ship name] like 'Alexander Nevsky'
update [Light Cruisers] set Id=21 where [ship name] like 'Hermelin'
update [Light Cruisers] set Id=22 where [ship name] like 'Dresden'
update [Light Cruisers] set Id=23 where [ship name] like 'Kolberg'
update [Light Cruisers] set Id=24 where [ship name] like 'Karlsruhe'
update [Light Cruisers] set Id=25 where [ship name] like 'Konigsberg'
update [Light Cruisers] set Id=26 where [ship name] like 'Nurnberg'
update [Light Cruisers] set Id=27 where [ship name] like 'Yorck'
update [Light Cruisers] set Id=28 where [ship name] like 'Admiral Hipper'
update [Light Cruisers] set Id=29 where [ship name] like 'Roon'
update [Light Cruisers] set Id=30 where [ship name] like 'Hindenburg'
update [Light Cruisers] set Id=31 where [ship name] like 'Black Swan'
update [Light Cruisers] set Id=32 where [ship name] like 'Weymouth'
update [Light Cruisers] set Id=33 where [ship name] like 'Caldeon'
update [Light Cruisers] set Id=34 where [ship name] like 'Danae'
update [Light Cruisers] set Id=35 where [ship name] like 'Emerald'
update [Light Cruisers] set Id=36 where [ship name] like 'Leander'
update [Light Cruisers] set Id=37 where [ship name] like 'Fiji'
update [Light Cruisers] set Id=38 where [ship name] like 'Edinburgh'
update [Light Cruisers] set Id=39 where [ship name] like 'Neptune'
update [Light Cruisers] set Id=40 where [ship name] like 'Minotaur'

ALTER TABLE [Light Cruisers]
ALTER COLUMN ID INT NOT NULL;

ALTER TABLE [Light Cruisers]
ADD PRIMARY KEY ([Id]);

-------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Battleships
CREATE TABLE Battleships
(
	ImagePath VARCHAR(100),
	Abbrev CHAR(4),
	Nation VARCHAR(4),
	Tier VARCHAR(4),
	[Ship Name] VARCHAR(60),
	Survivability INT,
	Artillery INT,
	Torpedoes VARCHAR(4),
	[AA Defense] VARCHAR(4),
	Maneuverability INT,
	Concealment INT
)

INSERT INTO Battleships
VALUES
('https://wiki.gcdn.co/images/5/54/Ship_PASB001_Michigan_1916.png','BB', 'USA', 'III', 'South Carolina', 36, 75, 0, 8, 27, 58),('https://wiki.gcdn.co/images/4/46/Ship_PASB004_Arkansas_1912.png','BB', 'USA', 'IV', 'Wyoming', 49, 74, 0, 11, 19, 45),('https://wiki.gcdn.co/images/5/5e/Ship_PASB006_New_York_1934.png','BB', 'USA', 'V', 'New York', 51, 77, 0, 17, 19, 35),('https://wiki.gcdn.co/images/3/3b/Ship_PASB034_New_Mexico_1941.png','BB', 'USA', 'VI', 'New Mexico', 59, 77, 0, 43, 18, 41),
('https://wiki.gcdn.co/images/a/ad/Ship_PASB008_Colorado_1945.png','BB', 'USA', 'VII', 'Colorado', 62, 84, 0, 48, 18, 30),('https://wiki.gcdn.co/images/5/5f/Ship_PASB012_North_Carolina_1945.png','BB', 'USA', 'VIII', 'North Carolina', 68, 87, 0, 88, 28, 33),('https://wiki.gcdn.co/images/e/ee/Ship_PASB018_Iowa_1944.png','BB', 'USA', 'IX', 'Iowa', 86, 88, 0, 89, 33, 28),('https://wiki.gcdn.co/images/7/77/Ship_PASB017_Montana_1945.png','BB', 'USA', 'X', 'Montana', 100, 91, 0, 96, 44, 20),
('https://wiki.gcdn.co/images/1/15/Ship_PJSB001_Kawachi_1912.png','BB', 'IJN', 'III', 'Kawachi', 41, 69, 0, 0, 22, 66),('https://wiki.gcdn.co/images/5/5c/Ship_PJSB003_Myogi_1912.png','BB', 'IJN', 'IV', 'Myogi', 50, 78, 0, 0, 31, 41),('https://wiki.gcdn.co/images/e/e5/Ship_PJSB007_Kongo_1942.png','BB', 'IJN', 'V', 'Kongo', 64, 83, 0, 43, 46, 43),('https://wiki.gcdn.co/images/6/6d/Ship_PJSB006_Fuso_1943.png','BB', 'IJN', 'VI', 'Fuso', 69, 85, 0, 45, 34, 22),
('https://wiki.gcdn.co/images/a/a2/Ship_PJSB010_Nagato_1944.png','BB', 'IJN', 'VII', 'Nagato', 62, 86, 0, 44, 26, 25),('https://wiki.gcdn.co/images/d/d5/Ship_PJSB013_Amagi_1942.png','BB', 'IJN', 'VIII', 'Amagi', 74, 87, 0, 62, 34, 24),('https://wiki.gcdn.co/images/f/f2/Ship_PJSB021_Izumo_1938.png','BB', 'IJN', 'IX', 'Izumo', 95, 88, 0, 53, 30, 21),('https://wiki.gcdn.co/images/2/2b/Ship_PJSB018_Yamato_1944.png','BB', 'IJN', 'X', 'Yamato', 100, 90, 0, 77, 33, 30),
('https://wiki.gcdn.co/images/e/ef/Ship_PGSB103_Nassau.png','BB', 'KM', 'III', 'Nassau', 38, 71, 0, 0, 22, 62),('https://wiki.gcdn.co/images/e/e3/Ship_PGSB104_Kaiser.png','BB', 'KM', 'IV', 'Kaiser', 54, 77, 0, 35, 34, 44),('https://wiki.gcdn.co/images/9/94/Ship_PGSB105_Koenig.png','BB', 'KM', 'V', 'Konig', 49, 76, 0, 17, 25, 41),('https://wiki.gcdn.co/images/a/af/Ship_PGSB106_Bayern.png','BB', 'KM', 'VI', 'Bayern', 63, 83, 0, 61, 38, 45),
('https://wiki.gcdn.co/images/d/dd/Ship_PGSB107_Gneisenau.png','BB', 'KM', 'VII', 'Gneisenau', 72, 88, 14, 82, 47, 34),('https://wiki.gcdn.co/images/6/6c/Ship_PGSB108_Bismarck.png','BB', 'KM', 'VIII', 'Bismarck', 85, 91, 0, 77, 49, 38),('https://wiki.gcdn.co/images/a/aa/Ship_PGSB109_Friedrich_der_Grosse.png','BB', 'KM', 'IX', 'Friedrich Der Grosse', 90, 92, 0, 71, 30, 20),('https://wiki.gcdn.co/images/e/ef/Ship_PGSB110_Grossdeutschland.png','BB', 'KM', 'X', 'Grosse Kurfurst', 100, 95, 0, 88, 40, 35),
('https://wiki.gcdn.co/images/2/2c/Ship_PRSB103_Knyaz_Suvorov.png','BB', 'RUS', 'III', 'Knyaz Suvorov', 41, 70, 0, 0, 28, 55),('https://wiki.gcdn.co/images/7/7a/Ship_PRSB104_Gangut.png','BB', 'RUS', 'IV', 'Gangut', 44, 71, 0, 11, 30, 44),('https://wiki.gcdn.co/images/6/6a/Ship_PRSB105_Pyotr_Velikiy.png','BB', 'RUS', 'V', 'Pyotr Velikiy', 61, 78, 0, 39, 41, 45),('https://wiki.gcdn.co/images/8/88/Ship_PRSB106_Izmail.png','BB', 'RUS', 'VI', 'Izmail', 67, 79, 0, 63, 44, 38),
('https://wiki.gcdn.co/images/7/7f/Ship_PRSB107_Sinop.png','BB', 'RUS', 'VII', 'Sinop', 79, 82, 0, 69, 39, 37),('https://wiki.gcdn.co/images/9/95/Ship_PRSB108_Vladivostok.png','BB', 'RUS', 'VIII', 'Vladivostok', 90, 85, 0, 74, 43, 42),('https://wiki.gcdn.co/images/f/fd/Ship_PRSB109_Sovetsky_Soyuz.png','BB', 'RUS', 'IX', 'Sovetsky Soyuz', 98, 89, 0, 74, 40, 42),('https://wiki.gcdn.co/images/4/40/Ship_PRSB110_Sovetskaya_Rossiya.png','BB', 'RUS', 'X', 'Kremlin', 100, 94, 0, 99, 40, 40),
('https://wiki.gcdn.co/images/f/fb/Ship_PBSB103_Bellerophon.png','BB', 'RN', 'III', 'Bellerophon', 38, 76, 0, 4, 24, 48),('https://wiki.gcdn.co/images/8/88/Ship_PBSB104_Orion.png','BB', 'RN', 'IV', 'Orion', 45, 78, 0, 31, 21, 43),('https://wiki.gcdn.co/images/8/83/Ship_PBSB105_Iron_Duke.png','BB', 'RN', 'V', 'Iron Duke', 50, 79, 0, 34, 23, 40), ('https://wiki.gcdn.co/images/3/3b/Ship_PBSB106_Queen_Elizabeth.png','BB', 'RN', 'VI', 'Queen Elizabeth', 64, 81, 0, 66, 24, 40),
('https://wiki.gcdn.co/images/6/68/Ship_PBSB107_King_George_V.png','BB', 'RN', 'VII', 'King George V', 67, 88, 0, 57, 31, 38),('https://wiki.gcdn.co/images/8/81/Ship_PBSB108_Monarch.png','BB', 'RN', 'VIII', 'Monarch', 69, 89, 0, 58, 31, 38),('https://wiki.gcdn.co/images/d/da/Ship_PBSB109_Lion.png','BB', 'RN', 'IX', 'Lion', 75, 90, 0, 65, 33, 34),('https://wiki.gcdn.co/images/2/2f/Ship_PBSB110_Conqueror.png','BB', 'RN', 'X', 'Conqueror', 100, 97, 0, 82, 41, 47)

ALTER TABLE [Battleships]
ADD Id INT;

update [Battleships] set Id=1 where [ship name] like 'South Carolina'
update [Battleships] set Id=2 where [ship name] like 'Wyoming'
update [Battleships] set Id=3 where [ship name] like 'New York'
update [Battleships] set Id=4 where [ship name] like 'New Mexico'
update [Battleships] set Id=5 where [ship name] like 'Colorado'
update [Battleships] set Id=6 where [ship name] like 'North Carolina'
update [Battleships] set Id=7 where [ship name] like 'Iowa'
update [Battleships] set Id=8 where [ship name] like 'Montana'
update [Battleships] set Id=9 where [ship name] like 'Kawachi'
update [Battleships] set Id=10 where [ship name] like 'Myogi'
update [Battleships] set Id=11 where [ship name] like 'Kongo'
update [Battleships] set Id=12 where [ship name] like 'Fuso'
update [Battleships] set Id=13 where [ship name] like 'Nagato'
update [Battleships] set Id=14 where [ship name] like 'Amagi'
update [Battleships] set Id=15 where [ship name] like 'Izumo'
update [Battleships] set Id=16 where [ship name] like 'Yamato'
update [Battleships] set Id=17 where [ship name] like 'Nassau'
update [Battleships] set Id=18 where [ship name] like 'Kaiser'
update [Battleships] set Id=19 where [ship name] like 'Konig'
update [Battleships] set Id=20 where [ship name] like 'Bayern'
update [Battleships] set Id=21 where [ship name] like 'Gneisenau'
update [Battleships] set Id=22 where [ship name] like 'Bismarck'
update [Battleships] set Id=23 where [ship name] like 'Friedrich Der Grosse'
update [Battleships] set Id=24 where [ship name] like 'Grosse Kurfurst'
update [Battleships] set Id=25 where [ship name] like 'Knyaz Suvorov'
update [Battleships] set Id=26 where [ship name] like 'Gangut'
update [Battleships] set Id=27 where [ship name] like 'Pyotr Velikiy'
update [Battleships] set Id=28 where [ship name] like 'Izmail'
update [Battleships] set Id=29 where [ship name] like 'Sinop'
update [Battleships] set Id=30 where [ship name] like 'Vladivostok'
update [Battleships] set Id=31 where [ship name] like 'Sovetsky Soyuz'
update [Battleships] set Id=32 where [ship name] like 'Kremlin'
update [Battleships] set Id=33 where [ship name] like 'Bellerophon'
update [Battleships] set Id=34 where [ship name] like 'Orion'
update [Battleships] set Id=35 where [ship name] like 'Iron Duke'
update [Battleships] set Id=36 where [ship name] like 'Queen Elizabeth'
update [Battleships] set Id=37 where [ship name] like 'King George V'
update [Battleships] set Id=38 where [ship name] like 'Monarch'
update [Battleships] set Id=39 where [ship name] like 'Lion'
update [Battleships] set Id=40 where [ship name] like 'Conqueror'

ALTER TABLE [Battleships]
ALTER COLUMN ID INT NOT NULL;

ALTER TABLE [Battleships]
ADD PRIMARY KEY ([Id]);

-------------------------------------------------------------------------------------------------------------------------------

DROP TABLE IF EXISTS [Aircraft Carriers]
CREATE TABLE [Aircraft Carriers]
(
	ImagePath VARCHAR(100),
	Abbrev CHAR(4),
	Nation VARCHAR(4),
	Tier VARCHAR(4),
	[Ship Name] VARCHAR(60),
	Survivability INT,
	Aircraft INT,
	Artillery INT,
	[AA Defense] INT,
	Maneuverability INT,
	Concealment INT
)

INSERT INTO [Aircraft Carriers]
VALUES
('https://wiki.gcdn.co/images/f/f8/Ship_PASA104_Langley.png','CV', 'USA', 'IV', 'Langley', 40, 35, 4, 0, 13, 66),('https://wiki.gcdn.co/images/c/cb/Ship_PASA106_Ranger.png','CV', 'USA', 'VI', 'Ranger', 56, 47, 6, 56, 42, 40),('https://wiki.gcdn.co/images/e/e6/Ship_PASA108_Lexington.png','CV', 'USA', 'VIII', 'Lexington', 72, 59, 7, 91, 48, 46),('https://wiki.gcdn.co/images/0/05/Ship_PASA110_Midway.png','CV', 'USA', 'X', 'Midway', 87, 69, 7, 98, 45, 29),
('https://wiki.gcdn.co/images/c/ca/Ship_PJSA104_Hosho.png','CV', 'IJN', 'IV', 'Hosho', 38, 33, 4, 9, 38, 71),('https://wiki.gcdn.co/images/1/13/Ship_PJSA106_Ryujo.png','CV', 'IJN', 'VI', 'Ryujo', 50, 46, 6, 54, 46, 67),('https://wiki.gcdn.co/images/7/70/Ship_PJSA108_Shokaku.png','CV', 'IJN', 'VIII', 'Shokaku', 64, 50, 7, 62, 45, 48),('https://wiki.gcdn.co/images/2/23/Ship_PJSA110_Hakuryu.png','CV', 'IJN', 'X', 'Hakuryu', 86, 71, 8, 99, 46, 41),
('https://wiki.gcdn.co/images/a/a4/Ship_PGSA104_Rhein.png','CV', 'KM', 'IV', 'Rhein', 38, 33, 4, 28, 37, 65),('https://wiki.gcdn.co/images/5/59/Ship_PGSA106_Weser.png','CV', 'KM', 'VI', 'Weser', 51, 42, 5, 57, 45, 50),('https://wiki.gcdn.co/images/0/09/Ship_PGSA108_Parseval.png','CV', 'KM', 'VIII', 'August Von Parseval', 66, 58, 6, 88, 47, 42),('https://wiki.gcdn.co/images/6/69/Ship_PGSA110_Manfred_Richthofen.png','CV', 'KM', 'X', 'Manfred Von Richtofen', 88, 72, 8, 95, 41, 42),
('https://wiki.gcdn.co/images/1/1a/Ship_PBSA204_Hermes.png','CV', 'RN', 'IV', 'Hermes', 39, 32, 5, 13, 34, 52),('https://wiki.gcdn.co/images/8/84/Ship_PBSA106_Furious.png','CV', 'RN', 'VI', 'Furious', 55, 45, 6, 57, 44, 45),('https://wiki.gcdn.co/images/5/52/Ship_PBSA108_Implacable.png','CV', 'RN', 'VIII', 'Implacable', 67, 55, 7, 80, 50, 35),('https://wiki.gcdn.co/images/2/20/Ship_PBSA210_Audacious.png','CV', 'RN', 'X', 'Audacious',  82, 64, 7, 75, 44, 34)
	
SELECT * FROM [Aircraft Carriers]
SELECT * FROM Battleships	
SELECT * FROM [Light Cruisers]
SELECT * FROM [Heavy Cruisers]
SELECT * FROM Destroyers

ALTER TABLE [Aircraft Carriers]
ADD Id INT;

update [Aircraft Carriers] set Id=1 where [ship name] like 'Langley'
update [Aircraft Carriers] set Id=2 where [ship name] like 'Ranger'
update [Aircraft Carriers] set Id=3 where [ship name] like 'Lexington'
update [Aircraft Carriers] set Id=4 where [ship name] like 'Midway'
update [Aircraft Carriers] set Id=5 where [ship name] like 'Hosho'
update [Aircraft Carriers] set Id=6 where [ship name] like 'Ryujo'
update [Aircraft Carriers] set Id=7 where [ship name] like 'Shokaku'
update [Aircraft Carriers] set Id=8 where [ship name] like 'Hakuryu'
update [Aircraft Carriers] set Id=9 where [ship name] like 'Rhein'
update [Aircraft Carriers] set Id=10 where [ship name] like 'Weser'
update [Aircraft Carriers] set Id=11 where [ship name] like 'August Von Parseval'
update [Aircraft Carriers] set Id=12 where [ship name] like 'Manfred Von Richtofen'
update [Aircraft Carriers] set Id=13 where [ship name] like 'Hermes'
update [Aircraft Carriers] set Id=14 where [ship name] like 'Furious'
update [Aircraft Carriers] set Id=15 where [ship name] like 'Implacable'
update [Aircraft Carriers] set Id=16 where [ship name] like 'Audacious'

ALTER TABLE [Aircraft Carriers]
ALTER COLUMN ID INT NOT NULL;

ALTER TABLE [Aircraft Carriers]
ADD PRIMARY KEY ([Id]);

------------------------------

