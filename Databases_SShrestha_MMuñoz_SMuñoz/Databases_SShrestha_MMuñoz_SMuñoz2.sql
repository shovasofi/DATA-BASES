--A DATABASE ABOUT FILMS
--AUTHOR: Marta MUñoz San Román, Sara Muñoz, Shova Shrestha

DROP DATABASE IF EXISTS billboard;
CREATE DATABASE billboard;
USE billboard;


CREATE TABLE Films(

    film_id INT PRIMARY KEY,
    production_date DATE,
    producer_id VARCHAR(40),
    producer_name VARCHAR(40),
    title VARCHAR(50),
    genre VARCHAR(40)
);

CREATE TABLE Producer(

    producer_id VARCHAR(40) PRIMARY KEY,
    producer_name VARCHAR(50),
    country VARCHAR(40)
);

ALTER TABLE Films ADD CONSTRAINT FK_ProducertoFilm
FOREIGN KEY( producer_id ) REFERENCES Producer ( producer_id ) ON UPDATE CASCADE;

INSERT INTO Producer(producer_id,producer_name,country) VALUES
	('1','DreamWorks SKG','EEUU' ),
	('2','Walt Disney Pictures', 'EEUU'),
	('3','Studio Ghibli', 'Japan' ),
	('4','Illumination Entertainment', 'EEUU' ),
	('5','Marvel Studios', 'EEUU' ),
	('6','Pixar Animation Studios', 'EEUU' ),
	('7','Sony Pictures Releasing', 'EEUU' ),
	('8','Paramount Pictures', 'EEUU' ),
	('9','StudioCanal', 'France'),
	('10','Lazonafilms', 'Spain'),
	('11','The Weinstein Company', 'EEUU'),
	('12','PolyGram Filmed Entertainment', 'Great Britain'),
	('13','Green Hat Films', 'EEUU'),
	('14','TSG Entertainment', 'EEUU'),
	('15','Canal Plus', 'France'),
	('16','Columbia Pictures', 'EEUU'),
	('17','Universal Pictures', 'EEUU'),
	('18','Major Studio Partners', 'EEUU'),
	('19','20th Century Fox Film Corporation', 'EEUU'),
	('20','Black Label Media', 'EEUU'),
	('21','Epsilon Motion Pictures', 'EEUU'),
	('22','Rat Entertainment', 'EEUU'),
	('23','Warner Bros', 'EEUU'),
	('24','New Century', 'EEUU'),
	('25','Bluegrass Films', 'EEUU'),
	('26','Make Movies', 'EEUU'),
	('27','Tapestry Films', 'EEUU'),
	('28','Mandeville Films', 'EEUU'),
	('29','Blue Light', 'EEUU'),
	('30','1492 Pictures', 'EEUU'),
	('31','Big Screen Productions', 'EEUU'),
	('32','Saturn Films', 'EEUU'),
	('33','United Artists', 'EEUU'),
	('34','Summit Entertainment', 'EEUU'),
	('35','Zide-Perry', 'EEUU'),
	('36','Kingsgate', 'EEUU'),
	('37','Relativity Media', 'EEUU'),
	('38','Apatow Productions', 'EEUU'),
	('39','Rimfire Productions', 'Australia'),
	('40','Conundrum Entertainment', 'EEUU'),
	('41','Big Talk Pictures', 'EEUU'),
	('42','Shamley', 'EEUU'),
	('43','Vortex', 'EEUU'),
	('44','New Line', 'EEUU'),
	('45','United Artists', 'EEUU'),
	('46','TriStar', 'EEUU')
;

INSERT INTO Films( film_id, production_date,producer_id,producer_name,title,genre ) VALUES
	(1,'2010/03/27', '1' ,'DreamWorks SKG','How to train your dragon', 'animation'),
	(2,'2014/10/03','2','Walt Disney Pictures','Frozen','animation'),
	(3,'2010/10/08','4' ,'Illumination Entertainment','Minions','animation'),
	(4,'2018/12/21','5' ,'Marvel Studios','Spider-Man: Into the Spider-Verse','animation'),
	(5,'2004/03/03','3' ,'Studio Ghibli','Hauru no ugoku shiro','animation'),
	(6,'2010/10/08','3' ,'Studio Ghibli','Sen to Chihiro no kamikakushi','animation'),
	(7,'2011/12/17','3' ,'Studio Ghibli','Kokuriko-zaka kara','animation'),
	(8,'2010/10/08','1' ,'DreamWorks SKG','Kung Fu Panda','animation'),
	(9,'2011/03/04','4','Illumination Entertainment','Rango','animation'),
	(10,'2016/04/12','2','Walt Disney Pictures','Zootopia','animation'),
	(11,'2010/10/08','4','Illumination Entertainment','The Lorax','animation'),
	(12,'2018/10/30','4','Illumination Entertainment','The Grinch','animation'),
	(13,'2021/12/22','4','Illumination Entertainment','Sing 2','animation'),
	(14,'2016/12/22','4','Illumination Entertainment','Sing','animation'),
	(15,'2017/04/12','1','DreamWorks SKG','The Boss Baby','animation'),
	(16,'2019/01/04','3','Studio Ghibli','Tonari no Totoro','animation'),
	(17,'2020/09/23','1','DreamWorks SKG','Trolls: World Tour','animation'),
	(18,'2016/10/28','1','DreamWorks SKG','Trolls','animation'),
	(19,'2021/10/25','1','DreamWorks SKG','Spirit Untamed','animation'),
	(20,'2015/10/19','1','DreamWorks SKG','Home','animation'),
	(21,'2014/08/01','1','DreamWorks SKG','How to Train your Dragon 2','animation'),
	(22,'2010/10/08','1','DreamWorks SKG','Shrek','animation'),
	(23,'2009/04/03','1','DreamWorks SKG','Monsters vs. Aliens','animation'),
	(24,'208/10/28','1','DreamWorks SKG','Madagascar','animation'),
	(25,'2000/10/16','1','DreamWorks SKG','The Road to El Dorado','animation'),
	(26,'2015/07/16','6','Pixar Animation Studios','Inside Outo','animation'),
	(27,'2009/10/16','6','Pixar Animation Studios','Up','animation'),
	(28,'2022/06/17','6','Pixar Animation Studios','Lightyear','animation'),
	(29,'2022/03/11','6','Pixar Animation Studios','Turning Red','animation'),
	(30,'2020/03/06','6','Pixar Animation Studios','Luca','animation'),
	(31,'2020/03/06','6','Pixar Animation Studios','Onward','animation'),
	(32,'2020/12/25','6','Pixar Animation Studios','Soul','animation'),
	(33,'2018/09/02','6','Pixar Animation Studios','Incredibles 2','animation'),
	(34,'2017/07/14','6','Pixar Animation Studios','Cars 3','animation'),
	(35,'2017/12/01','6','Pixar Animation Studios','Coco','animation'),
	(36,'2015/10/22','6','Pixar Animation Studios','Finding Dory','animation'),
	(37,'2015/09/27','6','Pixar Animation Studios','The Good Dinosaur','animation'),
	(38,'2013/06/21','6','Pixar Animation Studios','Monsters University','animation'),
	(39,'2012/09/10','6','Pixar Animation Studios','Brave','animation'),
	(40,'2008/10/06','6','Pixar Animation Studios','WALL-E','animation'),
	(41,'2007/09/03','6','Pixar Animation Studios','Ratatouille','animation'),
	(42,'2008/10/06','6','Pixar Animation Studios','WALL-E','animation'),
	(43,'2003/10/28','6','Pixar Animation Studios','Finding Nemo','animation'),
	(44,'2002/04/08','6','Pixar Animation Studios','Monsters, Inc.','animation'),
	(45,'1999/04/05','6','Pixar Animation Studios','A Bugs Life','animation'),
	(46,'1996/03/14','6','Pixar Animation Studios','Toy Story','animation'),
	(47,'2021/04/05','2','Walt Disney Pictures','Raya and the Last Dragon','animation'),
	(48,'2021/10/26','2','Walt Disney Pictures','Encanto','animation'),
	(49,'2018/12/05','2','Walt Disney Pictures','Ralph Breaks the Internet: Wreck-It Ralph 2','animation'),
	(50,'2016/12/02','2','Walt Disney Pictures','Moana','animation'),
	(51,'2016/04/12','2','Walt Disney Pictures','Ozzy','animation'),
	(52,'2014/12/19','2','Walt Disney Pictures','Big Hero 6','animation'),
	(53,'2012/10/09','2','Walt Disney Pictures','Tinkerbell and the Secret of the Wings','animation'),
	(54,'2012/12/25','2','Walt Disney Pictures','Rompe Ralph','animation'),
	(55,'2010/04/05','2','Walt Disney Pictures','The Princess and the Frog','animation'),
	(56,'2002/07/05','2','Walt Disney Pictures','Lilo & Stitch','animation'),
	(57,'1998/10/20','2','Walt Disney Pictures','Mulan','animation'),
	(58,'2012/10/26','7','Sony Pictures Releasing','Hotel Transilvania','animation'),
	(59,'2017/09/11','7','Sony Pictures Releasing','Emojimovie: Express Yourself','animation'),
	(60,'2013/12/20','7','Sony Pictures Releasing','Cloudy with a Chance of Meatballs 2','animation'),
	(61,'2007/10/20','7','Sony Pictures Releasing','Surfs Up','animation'),
	(62,'2002/09/14','7','Sony Pictures Releasing','Stuart Little 2','animation'),
	(63,'2016/05/13','7','Sony Pictures Releasing','Angry Birds','animation'),
	(64,'2015/10/20','7','Sony Pictures Releasing','Barbie','animation'),
	(65,'2013/10/20','7','Sony Pictures Releasing','Justin and the Knights of Valour','animation'),
	(66,'2009/10/04','7','Sony Pictures Releasing','Cloudy with a Chance of Meatballs','animation'),
	(67,'2021/07/16','7','Sony Pictures Releasing','Peter Rabbit 2','animation'),
	(68,'1994/07/06','8','Paramount Pictures','Forrest Gump','comedy'),
	(69,'2014/03/14','9','Gaumont','Intouchables','comedy'),
	(70,'2012/11/21','10','Lazonafilms','Silver Linings Playbook','comedy'),
	(71,'2009/10/02','11','The Weinstein Company','Peter Rabbit 2','comedy'),
	(72,'1998/03/06','12','PolyGram Filmed Entertainment','The Big Lebowski','comedy'),
	(73,'2009/06/05','13','PolyGram Filmed Entertainment','The Hangover','comedy'),
	(74,'2016/02/19','14','TSG Entertainment','Deadpool','comedy'),
	(75,'2001/11/02','15','Canal Plus','Amelie','comedy'),
	(76,'2007/08/17','16','Columbia Pictures','Superbad','comedy'),
	(77,'2004/09/24','17','Universal Pictures','Shaun of the Dead','comedy'),
	(78,'1997/06/02','16','Columbia Pictures','Men in Black','comedy'),
	(79,'2006/11/03','18','Major Studio Partners','Borat','comedy'),
	(80,'2007/04/20','16','Columbia Pictures','Hot Fuzz','comedy'),
	(81,'1998/06/03','19','20th Century Fox Film Corporation','Big','comedy'),
	(82,'2016/12/16','20','Black Label Media','La La Land','comedy'),
	(83,'2005/06/10','21','Epsilon Motion Pictures','Mr. & Mrs. Smith','comedy'),
	(84,'2011/07/08','22','Rat Entertainment','Horrible Bosses','comedy'),
	(85,'1984/06/08','23','Warner Bros','Gremlins','comedy'),
	(86,'1994/02/04','23','Warner Bros','Ace Ventura: Pet Detective','comedy'),
	(87,'2003/10/03','24','New Century','School of Rock','comedy'),
	(88,'2012/06/29','25','Bluegrass Films','Ted','comedy'),
	(89,'2013/04/12','26','Make Movies','Warm Bodies','comedy'),
	(90,'2007/07/27','19','20th Century Fox Film Corporation','The Simpsons Movie','comedy'),
	(91,'2005/07/15','27','Tapestry Films','Wedding Crashers','comedy'),
	(92,'2009/06/19','28','Mandeville Films','The Proposal','comedy'),
	(93,'2008/07/02','29','Blue Light','Hancock','comedy'),
	(94,'2006/12/22','30','1492 Pictures','Night at the Museum','comedy'),
	(95,'2010/12/25','31','Big Screen Productions','Gulliver´s Travels','comedy'),
	(96,'2002/07/03','16','Columbia Pictures','Men in Black II','comedy'),
	(97,'1997/03/21','17','Universal Pictures','Liar Liar','comedy'),
	(98,'2012/03/09','32','Saturn Films','A Thousand Words','comedy'),
	(99,'2010/11/05','13','Green Hat Films','Due Date','comedy'),
	(100,'2003/02/07','8','Paramount Pictures','How to Lose a Guy in 10 Days','comedy'),
	(101,'1971/04/28','33','United Artists','Bananas','comedy'),
	(102,'1999/07/09','34','Summit Entertainment','American Pie','comedy'),
	(103,'2001/08/10','35','Zide-Perry','American Pie 2','comedy'),
	(104,'1997/08/13','19','20th Century Fox Film Corporation','The Full Monty','comedy'),
	(105,'2004/07/30','36','Kingsgate','Harold & Kumar Go to White Castle','comedy'),
	(106,'2008/11/07','37','Relativity Media','Role Models','comedy'),
	(107,'2008/02/14','9','StudioCanal','Definitely, Maybe','comedy'),
	(108,'2012/04/27','38','Apatow Productions','The Five-Year Engagement','comedy'),
	(109,'1997/06/20','7','Sony Pictures Releasing','My Best Friend´s Wedding','comedy'),
	(110,'1995/11/10','23','Warner Bros','Ace Ventura: When Nature Calls','comedy'),
	(111,'1986/09/26','39','Rimfire Productions','"Crocodile" Dundee','comedy'),
	(112,'2000/06/15','40','Conundrum Entertainment','Me, Myself & Irene','comedy'),
	(113,'2011/03/18','41','Sony Pictures Releasing','Paul','comedy'),
	(114,'2012/12/24','38','Apatow Productions','Wanderlust','comedy'),
	(115,'2011/01/14','7','Sony Pictures Releasing','The Green Hornet','comedy'),
	(116,'2006/09/01','19','20th Century Fox Film Corporation','Idiocracy','comedy'),
	(117,'1985/08/02','17','Universal Pictures','Weird Science','comedy'),
	(118,'2003/08/06','2','Walt Disney Pictures','Freaky Friday','comedy'),
	(119,'1941/01/17','8','Paramount Pictures','The Lady Eve','comedy'),
	(120,'2014/12/19','19','20th Century Fox Film Corporation','Night at the Museum: Secret of the Tomb','comedy'),
	(121,'1937/10/21','16','Columbia Pictures','The Awful Truth','comedy'),
	(122,'2009/05/22','30','1492 Pictures','Night at the Museum: Battle of the Smithsonian','comedy'),
	(123,'2008/12/19','37','Relativity Media','Yes Man','comedy'),
	(124,'1992/09/09','17','Universal Pictures','Sneakers','comedy'),
	(125,'1990/06/15','23','Warner Bros','Gremlins 2: The New Batch','comedy'),
	(126,'2012/02/25','40','Conundrum Entertainment','Hall Pass','comedy'),
	(127,'1990/04/06','17','Universal Pictures','Cry-Baby','comedy'),
	(128,'2000/08/25','17','Universal Pictures','Bring It On','comedy'),
	(129,'1990/12/21','17','Universal Pictures','Kindergarten Cop','comedy'),
	(130,'2012/03/02','13','Green Hat Films','Project X','comedy'),
	(131,'1983/02/18','23','Warner Bros','Local Hero','comedy'),
	(132,'2006/05/23','16','Columbia Pictures','Click','comedy'),
	(133,'2006/07/28','19','20th Century Fox Film Corporation','John Tucker Must Die','comedy'),
	(134,'2001/10/05','27','Tapestry Films','Serendipity','comedy'),
	(135,'2003/12/12','16','Columbia Pictures','Something´s Gotta Give','comedy'),
	(136,'2005/03/04','2','Walt Disney Pictures','The Pacifier','comedy'),
	(137,'1996/06/28','17','Universal Pictures','The Nutty Professor','comedy'),
	(138,'1931/02/14','17','Universal Pictures','Dracula','terror'),
	(139,'1931/11/21','17','Universal Pictures','Frankenstein','terror'),
	(140,'1932/12/22','17','Universal Pictures','The Mummy','terror'),
	(141,'1933/02/14','17','Universal Pictures','The Invisible Man','terror'),
	(142,'1934/05/07','17','Universal Pictures','Satan','terror'),
	(143,'1935/02/14','17','Universal Pictures','The Crow','terror'),
	(144,'1941/10/20','17','Universal Pictures','Wolfman','terror'),
	(145,'1933/01/30','17','Universal Pictures','The Ghost of Opera','terror'),
	(146,'1955/11/23','17','Universal Pictures','Spider','terror'),
	(147,'1957/03/15','17','Universal Pictures','Land Unknow','terror'),
	(148,'1960/08/01','42','Shamley','Psycho','terror'),
	(149,'1974/02/14','43','Vortex','The Texas Chain Saw Massacre','terror'),
	(150,'1978/10/30','17','Universal Pictures','Halloween','terror'),
	(151,'1978/04/14','23','Warner Bross','Friday the 13th','terror'),
	(152,'1980/02/14','17','Universal Pictures','Maniac','terror'),
	(153,'1984/11/09','44','New Line','A Nightmare on Elm Street','terror'),
	(154,'1988/11/09','45','United Artists','Childs Play','terror'),
	(155,'1988/04/12','17','Universal Pictures','Maniac Cop','terror'),
	(156,'1992/01/15','46','TriStar','Candyman','terror'),
	(157,'1974/05/25','17','Universal Pictures','Black Christmas','terror'),
	(158,'1980/12/22','17','Universal Pictures','Prom Night','terror'),
	(159,'1980/10/03','17','Universal Pictures','Terror Train','terror'),
	(160,'1981/06/16','8','Paramount Pictures','My Bloody Valentine','terror'),
	(161,'1981/05/15','16','Columbia Pictures','Happy Birthday to Me','terror'),
	(162,'1959/03/23','8','Universal Pictures','Plan 9 from Outer Space','terror'),
	(163,'1968/07/14','42','Shamley','Night of the living dead','terror'),
	(164,'1986/05/16','44','New Line','Night of the Creeps','terror'),
	(165,'1931/01/03','46','TriStar','Doghouse','terror'),
	(166,'2004/06/22','17','Universal Pictures','Dawn of the dead','terror'),
	(167,'1980/04/06','23','Warner Bros','Creepy Show','terror'),
	(168,'2002/02/14','44','New Line','28 Days Later','terror'),
	(169,'2012/08/31','45','United Artists','Abraham Lincoln: Vampire Hunter','terror'),
	(170,'1992/07/18','15','Paramount Pictures','Braindead','terror'),
	(171,'1992/10/09','42','Shamley','Army of Darkness','terror'),
	(172,'2016/06/10','43','Vortex','Cell','terror'),
	(173,'2008/06/07','42','Shamley','Dead Set','terror'),
	(174,'2007/08/22','17','Universal Pictures','I Am Legend','terror'),
	(175,'2010/10/30','42','Shamley','La Horde','terror'),
	(176,'2007/02/14','45','United Artists','Planet Terror','terror'),
	(177,'2008/11/04','17','Universal Pictures','Quarentine','terror'),
	(178,'1931/02/19','44','New Line','Rec','terror'),
	(179,'2002/01/05','17','Universal Pictures','Resident Evil','terror'),
	(180,'2013/11/26','44','New Line','The Conjuring','terror'),
	(181,'2013/08/29','43','Vortex','The 4th Reich','terror'),
	(182,'1980/10/10','42','Shamley','Virus','terror'),
	(183,'2007/12/14','17','Universal Pictures','Wasting Away','terror'),
	(184,'1932/09/01','23','Warner Bros','White Zombie','terror'),
	(185,'2013/10/08','23','Warner Bros','World War Z','terror'),
	(186,'2012/09/13','23','Warner Bros','Insidious','terror'),
	(187,'1997/01/20','17','Universal Pictures','Castlevania','terror'),
	(188,'2017/08/07','8','Paramount Pictures','The Ring','terror'),
	(189,'1958/07/09','16','Columbia Pictures','Angel Heart','terror'),
	(190,'1931/02/14','44','New Line','Bug','terror'),
	(191,'1931/05/19','46','TriStar','Carnival of Souls','terror'),
	(192,'1998/10/09','8','Paramount Pictures','Carrie','terror'),
	(193,'2019/09/10','23','Warner Bros','Scape Room','terror'),
	(194,'2015/07/21','23','Warner Bross','Knock Knock','terror'),
	(195,'2020/06/17','17','Universal Pictures','Possessor','terror'),
	(196,'2002/05/05','16','Columbia Pictures','Red Dragon','terror'),
	(197,'2017/03/19','43','Vortex','Flatliners','terror'),
	(198,'2000/09/13','15','Paramount Pictures','Ghostland','terror'),
	(199,'1963/02/14','17','Universal Pictures','The Haunting','terror'),
	(200,'1931/02/14','23','Warner Bros','The Crudge','terror'),
	(201,'1931/10/06','42','Shamley','Under the Shadow','terror'),
	(202,'2005/09/29','16','Columbia Pictures','Wounds','terror'),
	(203,'1997/12/29','44','New Line','The Woods','terror')
;

--We have measured the time with EXPLAIN ANALYZE query

EXPLAIN ANALYZE SELECT producer_name, title FROM Films
	WHERE title='The Boss Baby';

EXPLAIN ANALYZE SELECT producer_name, title
	FROM Films WHERE title = 'Red Dragon';

EXPLAIN ANALYZE SELECT producer_id, title 
	FROM Films
	WHERE producer_id='5'
	ORDER BY title ASC;
	
	
	
	--RESULTS COMPARATING BEFORE/AFTER creating the index (they may vary due to your local machine/computer):

--QUERY I >>
--********************** WITHOUT INDEX

-- -> Filter: (Films.title = 'The Boss Baby')  (cost=20.65 rows=20) (actual time=0.060..0.140 rows=1 loops=1)
-- -> Table scan on Films  (cost=20.65 rows=204) (actual time=0.049..0.098 rows=203 loops=1)



--QUERY II >>

--********************** WITHOUT INDEX

-- -> Filter: (Films.title = 'Red Dragon')  (cost=20.65 rows=20) (actual time=0.258..0.268 rows=1 loops=1)
-- -> Table scan on Films  (cost=20.65 rows=204) (actual time=0.084..0.190 rows=203 loops=1)

--QUERY III >>

--********************** WITHOUT INDEX

-- -> Sort: Films.title  (cost=0.35 rows=1) (actual time=0.039..0.039 rows=1 loops=1)
-- -> Index lookup on Films using FK_ProducertoFilm (producer_id='5')  (actual time=0.026..0.028 rows=1 loops=1)
