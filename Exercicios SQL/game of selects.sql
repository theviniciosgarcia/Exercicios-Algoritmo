create database game_of_select;
use game_of_select;

create table pescador(
idPescador int primary key auto_increment,
nome varchar(45),
dataNasc date,
registro varchar(45),
fkInstrutor int, foreign key(fkInstrutor) references pescador(idPescador)
);

insert into Pescador values 
(null,'Denise Germano Junior','1949-11-12','01',null),
(null,'Nara Xavier Morais','1971-01-15','02',null),
(null,'Mauro Corrêa Grilo','1960-08-10','03',null),
(null,'Nathalia Braz de Rodrigues','1996-06-11','04',null),
(null,'Rogério Gomes Baesso','1970-03-02','05',null),
(null,'Neiva Carmo Barroso','1987-08-12','06',null),
(null,'Júlio Luiz Albenaz Pessoa','1940-10-11','07',null),
(null,'Guilherme Rodrigues Sodre','1968-02-05','08',null),
(null,'Lidia Uchôa Antonio','1944-08-12','09',null),
(null,'Isabela Coimbra Felizardo','1999-12-01','10',null),
(null,'Jander Sena Carmoriz','1955-06-16','11',null),
(null,'Islayne Schuenck Feitosa','1998-04-12','12',1),
(null,'Waleska Celestino Venancio','1939-08-18','13',null),
(null,'Argina Santos Borges','1938-04-29','14',2),
(null,'Rachel Diniz Barsosa','1978-11-12','15',null),
(null,'Juzelina Xavier Amorim','1951-03-30','16',3),
(null,'Aurélio Limeira Feitosa','1965-04-11','17',null),
(null,'Marlene Schuenck Valente','1997-03-09','18',6),
(null,'Everaldo Barrada Lucio','1974-12-12','19',11),
(null,'Anthony Salles da Sousa','1959-08-12','20',null),
(null,'Simeia Macário Neves','1999-06-25','21',10),
(null,'Lucca Fonseca Almeida','1969-05-12','22',null);

create table barco(
idBarco int auto_increment,
tipo varchar(45),
fkPescador int, foreign key (fkPescador) references Pescador(idPescador),
primary key (idBarco,fkPescador)
);

insert into Barco values 
(1,'Chato',1),
(2,'Convencional',2),
(3,'Chato',3),
(4,'Semi-chatos',4),
(5,'Caiaque',5),
(6,'Canoa',6),
(7,'Lancha','7'),
(8,'Barco de alumínio',8),
(9,'Lancha',9),
(10,'Chato',10),
(12,'Caiaque',11),
(13,'Chato',12),
(14,'Canoa',14),
(15,'Semi-chatos',15),
(16,'Lancha',16),
(17,'Canoa',17),
(18,'Convencional',18),
(19,'Chato',19),
(20,'Canoa',20),
(21,'Convencional',21),
(22,'Convencional',22);

create table material(
    idMaterial int primary key auto_increment,
    nome varchar(45),
    resistencia varchar(45),
    tipo varchar(45)
);

insert into material values
(null, 'Obsidiana', 'Minério', 'Choque'),
(null, 'Volts', 'Energia', 'Fogo'),
(null, 'Nanotecnologia', 'Tecnologia avançada', 'Choque'),
(null, 'Uraniio', 'Minério', 'Ferro'),
(null, 'Ferro', 'Minério', 'Água'),
(null, 'Solar', 'Energia', 'UniResistente'),
(null, 'Rocha da lua', 'Minério', 'Choque'),
(null, 'Diamante', 'Minério', 'Fogo'),
(null, 'Lava', 'Fogo', 'Ar'),
(null, 'Pilares da Criação', 'Gás Fragmentado', 'Uniresistente'),
(null, 'Redstone', 'Minério', 'Fogo'),
(null, 'Rochas de marte', 'Minério', 'Gelo'),
(null, 'Ferro UltraResistente', 'Minério Refinado', 'Fogo e Água'),
(null, 'Coçada', 'Atômo', 'UniResisstente'),
(null, 'Raposa', 'Gaiato', 'UniResistente'),
(null, 'Concat', 'Workbench', 'UniRessistente'),
(null, 'Lapis-lazuli', 'Minério', 'Fogo'),
(null, 'Rocha do fim', 'Minério', 'Agua e Gelo');

create table trajes(
idTrajes int,
tipo varchar(45),
apropriadaPara varchar(45),
fkPescador int, foreign key (fkPescador) references Pescador(idPescador),
fkMaterial int, foreign key (fkMaterial) references Pescador(idPescador),
primary key (idTrajes,fkPescador,fkMaterial)
); 


insert into trajes values
(1,'Macacão Térmico','Pesca Esportiva',1,7),
(2,'Casaco de Elastano','Pesca Alternativa',2,2),
(3,'Bombeta','Pesca em Pesqueiro',3,17),
(4,'Luvas de Borracha','Pesca Profissional',4,7),
(5,'Óculos de Proteção','Pesca de arremesso',1,11),
(6,'Calça Térmica','Pesca Oceânica',5,9),
(7,'Camisa Poteção UV','Pesca Esportiva',11,15),
(8,'Bandana','Pesca Esportiva',12,4),
(9,'Bota Emborrachada','Pesca Esportiva',13,2),
(10,'Colete','Pesca Oceânica',11,3),
(11,'Macacão Térmico','Pesca Esportiva',10,6),
(12,'Luvas de Borracha','Pesca Esportiva',15,16),
(13,'Macacão Térmico','Pesca Esportiva',9,10),
(14,'Óculos de Proteção','Pesca Esportiva',6,17),
(15,'Macacão Térmico','Pesca em Pesqueiro',8,14),
(16,'Bota Emborrachada','Pesca Oceânica',18,15),
(17,'Luvas de Borracha','Pesca em Pesqueiro',10,6),
(18,'Macacão Térmico','Pesca Esportiva',3,5),
(19,'Óculos de Proteção',' Pesca Oceânica',2,11),
(20,'Macacão Térmico','Pesca Esportiva',1,13),
(21,'Bombeta','Pesca em Pesqueiro',10,2),
(22,'Colete','Pesca Esportiva',9,12);

create table localizacao(
idLocalizacao int primary key auto_increment,
nome varchar(45),
complemento varchar(45)
);

insert into localizacao values
(null,'Lago Olho do Furacão','Centro Miguelópolis'),
(null,'Vulcão De Urânio','Perto da Rodovia'),
(null,'Lago de Fogo','Chacaras Sossego'),
(null,'Represa do Mortos Vivos','São João do Outeiro (Outeiro)'),
(null,'Represa 3 Marias','Anchieta'),
(null,'Lago Owen da Lua 5 de Netuno','nas proximidades da Itacoatiara'),
(null,'Rio do Can','nas proximidades da Parnamirim'),
(null,'Oceano De Sangue','nas proximidades de Fortaleza'),
(null,'Rio Das Serpentes','nas proximidades de Campo Grande'),
(null,'Mar de Júpter','nas proximidades da Macapá'),
(null,'Lagoa Da imortalidade','nas proximidades da Timon'),
(null,'Vullkannis','nas proximidades da cidade do Rio de Janeiro'),
(null,'Lagoa RM76-998 do Setor 3 Da lua terrestre','nas proximidades do São Luís'),
(null,'Oceano De óleo','nas proximidades da Teresina'),
(null,'Mar Leventado','nas proximidades de Contagem'),
(null,'Lagoa Das Lagostas Elétricas','nas proximidades do sitio do Joao'),
(null,'3 Oceano Vulcanico de Marte','nas proximidades de Salvador'),
(null,'Plutão','lua do planeta'),
(null,'Jacarei','no topo da montanha'),
(null,'Pico do himalaia','montanha nevada'),
(null,'Monte Everest','Asia'),
(null,'Konoha','Aldeia da folha');

create table pescador_has_Local(
idPescador_has_Local int auto_increment,
fkPescador int, foreign key (fkPescador) references pescador(idPescador),
fkLocalizacao int, foreign key (fkLocalizacao) references localizacao(idLocalizacao),
dtHorario datetime,
primary key (idPescador_has_Local,fkPescador,fkLocalizacao)
);

insert into pescador_has_Local values
(null,1,3,'2022-08-22 06:19:35'),
(null,2,4,'2022-06-22 09:13:07'),
(null,3,1,'2038-07-19 08:45:07'),
(null,4,2,'2022-08-21 09:23:32'),
(null,5,10,'2022-01-19 22:19:00'),
(null,6,6,'2021-12-11 02:04:10'),
(null,7,7,'2022-08-11 06:44:15'),
(null,8,8,'2022-09-19 05:14:42'),
(null,9,9,'2022-10-26 08:30:58'),
(null,10,10,'2022-11-19 09:22:15'),
(null,11,11,'2022-11-22 07:11:08'),
(null,12,12,'2022-09-03 06:08:09'),
(null,13,13,'2022-11-29 05:59:00'),
(null,14,14,'2022-11-22 06:37:19'),
(null,15,16,'2022-12-01 05:30:00'),
(null,17,1,'2022-11-13 05:14:07'),
(null,18,4,'2022-10-01 05:00:00'),
(null,19,5,'2022-11-04 05:45:07'),
(null,20,10,'2038-01-19 07:50:54'),
(null,21,4,'2038-01-19 07:00:00'),
(null,22,9,'2038-01-19 06:45:32');

create table clima(
idClima int primary key auto_increment,
clima varchar(45),
fkLocalizacao int, foreign key (fkLocalizacao) references Localizacao(idLocalizacao)
);


insert into clima values
(null,'Chuva de Lava',1),
(null,'Chuva de Urânio',2),
(null,'Chuva de Água tóxica',3),
(null,'Furacão de Fogo',4),
(null,'Terremoto de Terra',5),
(null,'Tsuname Do Lava',6),
(null,'Chuva de Lama',7),
(null,'Furacão de Diamante',8),
(null,'Tempestade de Areia',9),
(null,'Chuva de Cristal',10),
(null,'Tsuname de Lama',11),
(null,'Chuva de Raios',12),
(null,'Nevoeiro dos Mortos',13),
(null,'Chuva de Prata',14),
(null,'Chuva de Mercúrio',15),
(null,'Tempestado de Adamantium',16),
(null,'Chuva de Lava na Neve',17);
-- (null,'Nevoeiro dos Mortos',18),
-- (null,'Chuva Das Bruxas',19),
-- (null,'Tempestades de Morcegos',20),
-- (null,'Chuva de Lingua de Cobra',21),
-- (null,'Chuva de Pedra de ferro',22);

create table peixe(
idPeixe int auto_increment,
nome varchar(45),
tipo varchar(45),
tamanho decimal(10,2),
fkLocalizacao int, foreign key (fkLocalizacao) references localizacao(idLocalizacao),
fkPredador int, foreign key (fkPredador) references peixe(idPeixe),
primary key(idPeixe, fkLocalizacao)
);

insert into peixe values
(null,'Peixe-cofre riscado','fogo',2.10,1, null),
(null,'Cirurgião','medicinal',0.30,2, null),
(null,'Barbeiro comum','normal',1.10,3, null),
(null,'Barbeiro azul','gelo',3.40,4, null),
(null,'Aramaçá','raio',2.50,5, 4),
(null,'Garoupa-gato','fogo',2.10,6, 3),
(null,'Raquete laranja','fogo',3.10,7, null),
(null,'Raquete riscado','fogo',3.25,8, 1),
(null,'Peixe-gavião','ar',1.00,9, null),
(null,'Sargo-de-beiço','agua',2.00,10, 4),
(null,'Salema','agua',1.25,11, null),
(null,'Peixe-pescador riscado','fogo',3.00,12, 5),
(null,'Apogon','raio',1.50,13, null),
(null,'Apogon-de-duas-manchas','raio',2.50,14, null),
(null,'Canhanha','ar',1.00,15, 6),
(null,'Peixe-trompete','ar',1.50,11, null),
(null,'Emborê','raio',2.10,12, null),
(null,'Pacamão','fogo',2.20,13, null),
(null,'Bodião vermelho','fogo',2.30,4, 5),
(null,'Paru branco','ar',0.8,2, null),
(null,'Borboleta dos recifes','ar',1.10,1, 10),
(null,'Baiacú espinho antenado','veneno',3.10,5, null);

create table peixe_Pescado(
idPeixe_Pescado int,
qtd_peixes varchar(45),
fkPescador int, foreign key (fkPescador) references pescador(idPescador),
fkPeixe int, foreign key (fkPeixe) references peixe(idPeixe),
primary key(idPeixe_Pescado, fkPescador, fkPeixe)
);

insert into peixe_Pescado values
(1,8,1,1),
(2,14,2,2),
(3,25,3,3),
(4,18,4,4),
(5,9,5,5),
(6,33,6,6),
(7,14,7,7),
(8,8,8,8),
(9,25,9,9),
(10,30,10,10),
(11,6,11,11),
(12,0,12,12),
(13,2,13,13),
(14,7,14,14),
(15,21,15,15),
(16,45,16,16),
(17,250,17,17),
(18,3,18,18),
(19,9,19,19),
(20,12,20,20),
(21,2,21,21),
(22,1,22,22);


create table venda(
idVenda int primary key auto_increment,
dtVenda date,
total decimal(10,2),
fkPeixe_Pescado int, foreign key (fkPeixe_Pescado) references peixe_Pescado(idPeixe_Pescado)
);

insert into venda values
(null,'2022-01-22',32.56,1),
(null,'2022-10-24',29.50,3),
(null,'2022-05-04',19.90,18),
(null,'2022-12-12',16.50,20),
(null,'2022-08-30',25.80,4),
(null,'2022-07-02',59.80,9),
(null,'2022-02-24',29.50,10),
(null,'2022-06-04',44.50 ,13),
(null,'2022-11-11',56.00,16),
(null,'2022-03-14',44.50,18),
(null,'2022-09-30',49.50,19),
(null,'2022-11-28',44.85,17),
(null,'2022-12-25',79.90,12),
(null,'2022-01-01',69.90,6),
(null,'2022-04-01',16.60,2),
(null,'2022-05-24',58.80,7),
(null,'2022-09-07',29.50,15),
(null,'2022-12-17',69.00,5),
(null,'2022-08-14',19.90,14),
(null,'2022-10-05',48.50,8),
(null,'2022-11-13',24.90,21),
(null,'2022-01-15',39.80,11),
(null,'2022-03-03',59.90,22);


create table boia(
idBoia int primary key auto_increment,
tipo varchar(45),
marca varchar(45)
);

insert into Boia values
(null, 'Flamejante', 'FireBoil'),
(null, 'Gelo', 'King Ice'),
(null, 'Raposa', 'Gaiatos da pesca'),
(null, 'Universal', 'UniverPesca'),
(null, 'Boia de teleporte', 'Nasa da Pesca'),
(null, 'Disco Voador para pesca', 'Área 51'),
(null, 'Suepr Veloz', 'Velocipesca'),
(null, 'Radioativa', 'RadioSports'),
(null, 'Comum', 'BoiasBrasil'),
(null, 'Boia HipHop', 'StylePesca'),
(null, 'Robotica', 'Robot Pescaria'),
(null, 'Cyberpunk', 'Punk of Pesca'),
(null, 'Power', 'PowerFish'),
(null, 'Blindada', 'Security of pesca'),
(null, 'Titanic', 'Pescaria dos reis'),
(null, 'Boia Mel', 'Gaiatos da pesca'),
(null, 'Boia de criptonita', 'Cripiton Pesca'),
(null, 'Boia Motorizada', 'BestPesca'),
(null, 'Boia coça', 'CoçaBoia'),
(null, 'Boia de borracha', 'BoilPesc'),
(null, 'Boia Eletrica', 'ElectroBoil'),
(null, 'Boia Submarino', 'SubmaPesca'),
(null, 'Boia Solar', 'UniverPesca'),
(null, 'Boia Atraente', 'HipnoPesca'),
(null, 'Hipnotizante', 'HipnoPesca'),
(null, 'BatBoia', 'Batman na Pesca'),
(null, 'BoiaRacer', 'SpeedBoia'),
(null, 'Boia X', 'SpeedBoia'),
(null, 'Chrono', 'ChronoBoia'),
(null, 'Boia Pilares da Criação', 'UniverPesca');

create table rolamento(
idRolamento int primary key auto_increment,
tipo varchar(45),
marca varchar(45)
);

insert into Rolamento values
(null,'Abeck 1','Vulkanus'),
(null,'Rolamentos autocompensadores de Urânio','Freepik'),
(null,'Rolamentos axiais','Dreamstime'),
(null,'Rolamentos Radiais Diamantados','Dirandir'),
(null,'Rolamentos rígidos de esferas Cristalizadas','Inpon'),
(null,'Rolamentos de esferas de contato angular','Zagiage'),
(null,'Rolamentos de rolos Aquático','Bocile'),
(null,'Rolamentos de rolos cônicos Blindados','Lurrul'),
(null,'Rolamentos de rolos esféricos','Nuweasun'),
(null,'Rolamentos de Esmeralda','Duheon'),
(null,'Rolamentos de Alta Densidade','Tunu'),
(null,'Rolamentos de Ferro Fundido','Taite'),
(null,'Rolamentos de Aço Pesado','Harbo'),
(null,'Rolamentos Mágicos','Dokgai'),
(null,'Rolamentos Infeitiçados','Noarnuoso'),
(null,'Rolamentos de Ouro','Kilval'),
(null,'Rolamentos de Vidro','Arkuarn'),
(null,'Rolamentos de Díodo','Vizue'),
(null,'Rolamentos de Pedra','Towirion'),
(null,'Rolamentos de Obisidiana','Mordek'),
(null,'Rolamentos de Plástico','Hiulfim'),
(null,'Rolamentos de Muamba','Curumurod'),
(null,'Rolamentos Udirizados','Lobvae'),
(null,'Rolamentos de Titania','Sorior'),
(null,'Rolamentos Explosivos','Dewugum'),
(null,'Rolamentos de Fogo','Hothic'),
(null,'Rolamentos AirVyi','Ovnival'),
(null,'Rolamentos Vulcalnizados','Nevuim'),
(null,'Rolamentos Inativantes','Nevuim'),
(null,'Rolamentos Automáticas','Olon');

create table linha(
idLinha int primary key auto_increment,
tipo varchar(45),
marca varchar(45)
);

insert into linha values
(null,'Treenose line','Pesca Keep'),
(null,'Bloodflare line','Sable Pesca'),
(null,'Mane-chase line','FastForward Pesca'),
(null,'Fallautumnglide line','Proto Fishing'),
(null,'Eardwarf line','Reinvent Fishing'),
(null,'Rain-bow line','OnPoint Pesca'),
(null,'Black line','Flare Fishing'),
(null,'Shieldpower line','ParkFish'),
(null,'Cloak line','ProtoFish'),
(null,'Gatesun line','Nordic Pesca'),
(null,'Eyessandbane line','SilverFish'),
(null,'Birdshine line','FishEye'),
(null,'Elvenleaf line','FishBoard'),
(null,'Sunmight line','Reinvent'),
(null,'Shadewalk line','FishSnap'),
(null,'Bluecyan line','FishLine'),
(null,'Bladelocke line','ParkerFish'),
(null,'Land line','CreeksideFish'),
(null,'Oregatedragon line','OneStopLine'),
(null,'Quiverriver line','BlueLine'),
(null,'Maceeyes line','CitizenFish'),
(null,'Noselong line','TopRatedFish'),
(null,'Hairwarg line','MorninFisher'),
(null,'Gazerflame line','FreshWater'),
(null,'Blooddwarf line','NextWave'),
(null,'Moonbane line','MainFisher'),
(null,'Spearlake line','DigitalLine'),
(null,'Cloakhuntwalker line','FutFish'),
(null,'Eagle line','BullFish'),
(null,'Falconore line','InLine');

create table anzol(
idAnzol int primary key auto_increment,
tipo varchar(45),
marca varchar(45),
tamanho int
);

insert into anzol values
(null,'Hunterpower','Hook Finders',10),
(null,'Powerbush Hook','Hook Spots',3),
(null,'Stormdagger','Drift Hook',27),
(null,'Spinegatethunder','Imperium Hook',15),
(null,'Bearhunter Hook','BigIdea',6),
(null,'Moorwarrior','Micron Hook',19),
(null,'Blue Hook','ImprintHook',23),
(null,'Lipslight Hooker','Hook Igniter',9),
(null,'Quivermourne','WildFit',24),
(null,'Landerwyrm','SilverStar',7),
(null,'Bullbrave','FitHook',26),
(null,'Spinerunner','Gfook',5),
(null,'Leaffull Hooker','YukonHook',14),
(null,'PaladinboltHooker','NoLimit Hook',16),
(null,'Dawnforge','TopHook',30),
(null,'Bushborn Hook','Hook Prints',20),
(null,'Sandcat Hooker','Zippy Hook',22),
(null,'Runnerhelm','HighQualityHook',29),
(null,'Sandside','BlackTieHook',13),
(null,'Metalbane','HookMeta',8),
(null,'Mooseforgefall','ZippyHook',25),
(null,'GoldFiser','GoldHook',21),
(null,'Hammer','AfterHours',2),
(null,'Spineeagle','HookTela',1),
(null,'Tallax','VerveHook',4),
(null,'Greenshort','HookRio',28),
(null,'Redtall','ShotHook',18),
(null,'Glider-walker','HookCamp',12),
(null,'Roadstar','NrivHook',11),
(null,'Summerbush','Freelance',17);


create table isca(
idIsca int primary key auto_increment,
marca varchar(45),
tipo varchar(45)
);

insert into isca values
(null,'Spear','Crane Bait'),
(null,'Winterbolt','OpenBait'),
(null,'Lake','NewDait'),
(null,'Gategraystar','BaitNer'),
(null,'Chasethunderdark','MetBai'),
(null,'Breezeoak','FourCor'),
(null,'Jawfalcon','Bait me'),
(null,'Moosetree','Angrait'),
(null,'Walkgaze','EvyBait'),
(null,'Greyflareland','CloudBait'),
(null,'Goldblade','Tripait'),
(null,'Wallmaw','Lambda'),
(null,'Waterwinter','BaitForge'),
(null,'Screammoon','Globallit'),
(null,'Sandwar','Hubba'),
(null,'Moose','BiatByrstes'),
(null,'Bitter','OverSeas'),
(null,'Walkerborn','NewYEATY'),
(null,'Arrowlake','QuarkBait'),
(null,'Waterwulf','MarkBait'),
(null,'Shinefall','StreetBait'),
(null,'Warhalf','BayView'),
(null,'Forgemetalside','IscaWorks'),
(null,'Goatshade','MindTrue'),
(null,'Ironsea','OneBit'),
(null,'Battlespring','HeliumBait'),
(null,'Eyeoaken','KineticBait'),
(null,'Sunlong','BlueTrue'),
(null,'Rainlock','OcultDay'),
(null,'Greytall','NextBVile');

create table vara_Pesca(
idVara_Pesca int auto_increment,
nome varchar(80),
fkLinha int, foreign key(fkLinha) references linha(idLinha),
fkRolamento int, foreign key(fkRolamento) references rolamento(idRolamento),
fkBoia int, foreign key(fkBoia) references boia(idBoia),
fkAnzol int, foreign key(fkAnzol) references anzol(idAnzol),
fkIsca int, foreign key(fkIsca) references isca(idIsca),
primary key(idVara_Pesca, fkLinha, fkRolamento, fkBoia, fkAnzol, fkIsca)
);

insert into vara_Pesca values 
(null,'Vara De Lava Vulkanu RT800',10,13,14,6,1),
(null,'Vara de Plutônio',2,8,13,14,4),
(null,'Vara Caçadora de Peixe-Pingolho',5,10,8,2,6),
(null,'Vara Shimano FX Para Pexes Elétricos',10,14,6,9,1),
(null,'Vara Telescópica Vitória 3307',13,9,2,5,9),
(null,'Vara Gordantelada para Foças De Lama',10,8,5,5,10),
(null,'Vara Electrit para Peixes Voadores',8,14,10,9,7),
(null,'Vara Marine Sports Laguna para Peixes Velocistas',6,12,10,5,12),
(null,'Vara de Pesca Black Tamba Maruri Para Carretilha Lançamento 2021',3,2,8,5,10),
(null,'Vara Telescópica Tsuna TS500',13,5,6,14,12),
(null,'Vara Das Almas Para Peixes Mortos-Vivos',12,10,1,13,11),
(null,'Vara Diamantada Para Peixes Platinados',14,8,1,6,7),
(null,'Vara Galática para Peixes Espacias',13,10,9,4,4),
(null,'Vara Mágica de Pesca  para peixe Peixe-math',6,5,5,2,2),
(null,'Vara Gaiata para peixe-gaiato',8,10,1,3,1),
(null,'Vara Marine Sports River Power Spiral Para Rodadinha',2,10,6,13,9),
(null,'Vara Albatroz',8,7,2,14,8),
(null,'Vara  Saint Plus Pro',13,8,6,2,9),
(null,'Vara  Saint Plus',9,11,10,12,10),
(null,'Vara de Ferro para Peixe-Laminado',1,8,2,10,2),
(null,'Vara Telescópica Gomo Longo Tsuna TS 600',8,12,2,13,6);

create table vara_do_pescador(
fkPescador int, foreign key (fkPescador) references pescador(idPescador),
fkVara_Pesca int, foreign key (fkVara_Pesca) references vara_Pesca(idVara_Pesca),
primary key (fkPescador,fkVara_Pesca)
);

insert into vara_do_pescador values
(1,1),
(2,2),
(3,3),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

create table isca_preferida(
idIsca_preferida int auto_increment,
fkIsca int, foreign key (fkIsca) references Isca(idIsca),
primary key (idIsca_preferida,fkIsca)
);

insert into isca_preferida values
(1,2),
(1,3),
(2,1),
(2,3),
(2,4),
(3,1),
(3,2),
(3,4),
(4,3),
(4,5),
(4,9),
(5,1),
(5,2),
(5,4),
(6,4),
(7,1),
(7,2),
(8,2),
(8,9),
(9,2),
(10,2),
(12,3),
(13,5);
