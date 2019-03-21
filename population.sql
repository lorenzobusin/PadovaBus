
TRUNCATE TABLE Tessera;		
TRUNCATE TABLE Utente;		
TRUNCATE TABLE Impiegato;	
TRUNCATE TABLE Biglietteria;
TRUNCATE TABLE Biglietto;	
TRUNCATE TABLE Abbonamento;	 
TRUNCATE TABLE Tariffa;		
TRUNCATE TABLE Tipo;		
TRUNCATE TABLE Periodo;		
TRUNCATE TABLE Linea;		
TRUNCATE TABLE Tratta;		
TRUNCATE TABLE Fermata;		
TRUNCATE TABLE Tratta;          


SET FOREIGN_KEY_CHECKS=0;


-- Utente

-- INSERT INTO Utente VALUES(CF, Nome, Cognome, Data_nascita, Provincia, Citta, Indirizzo, Telefono, ID, Pass, Tessera);

INSERT INTO Utente VALUES('5V05B48EJT6OS5VQ',	'Bernardino',	'Vitali',			'1970-11-19',	'VE',	'San Dona di Piave',		'san luigi gonzaga via',		'8000492853',	'95101',	'lzIks6Sf',	'82653');
INSERT INTO Utente VALUES('7LTQ1BUFQFO86TJD',	'Teodoro',		'Roma',				'1993-3-3',		'PD',	'San Dona di Piave',		'santo stefano superiore via',	'1416889433',	'50860',	'aeXX6a9d',	'59335');
INSERT INTO Utente VALUES('YRSIKF8872EKK3LG',	'Pompeo',		'Antonino',			'1985-9-7',		'BL',	'Vittorio Veneto',			'san tommaso apostolo via',		'9545212140',	'02138',	'qplkqLEj',	'06013');
INSERT INTO Utente VALUES('UNQKLURQTTX9CROX',	'Benigna',		'Selmone',			'1973-5-19',	'RO',	'Villafranca di Verona',	'burano via',					'9118569991',	'42733',	'nDdIzbCm',	'63412');
INSERT INTO Utente VALUES('BAMSE0C0UAEY6VN9',	'Anastasia',	'Alderisi',			'1983-5-7',		'VI',	'Schio',					'motta via',					'1472561345',	'87827',	'AnYLxnyx',	'50536');
INSERT INTO Utente VALUES('8NFPVB1QYJHCFA8S',	'Pia',			'Brunetti',			'1991-12-13',	'TV',	'Castelfranco Veneto',		'carrubbio via',				'3710957832',	'70921',	'4yAbwKaz',	'45085');
INSERT INTO Utente VALUES('90NJ2B2OV53M0Q73',	'Ulisse',		'Guarneri',			'1987-5-20',	'VR',	'Spinea',					'murano via',					'8642497229',	'57497',	'QxjvkFcX',	'17256');
INSERT INTO Utente VALUES('R5ZPO591AKCFPMNU',	'Ernesto',		'Guttuso',			'1972-6-23',	'VE',	'Vittorio Veneto',			'galilei galileo via',			'1888173744',	'48288',	'gY4WgrYA',	'62649');
INSERT INTO Utente VALUES('9C236Q5VGB4DD9ZX',	'Fabiano',		'Acardi',			'1972-3-26',	'PD',	'Legnago',					'colombo c. via',				'4620359660',	'14830',	'TY8Lo7y5',	'11003');
INSERT INTO Utente VALUES('SSQKK5A2XRMM8UO5',	'Bartolomeo',	'Casale',			'1977-11-25',	'BL',	'Verona',					'marendole via',				'9051073627',	'80282',	'Fb1MrjoF',	'55976');
INSERT INTO Utente VALUES('QQUE6GYL0N7GSSLP',	'Massimo',		'Righi',			'1985-6-13',	'RO',	'Vicenza',					'ca rossa via',					'6360627639',	'08780',	'zzDxRDT7',	'11798');
INSERT INTO Utente VALUES('9K78012M00KXU2UJ',	'Leonzio',		'Abategiovanni',	'1982-11-12',	'VI',	'Valdagno',					'cadorna generale l. via',		'3475606184',	'19306',	'RCfcQuXZ',	'09875');
INSERT INTO Utente VALUES('AOFBNE5RPSV99NI3',	'Baldovino',	'Armati',			'1974-4-23',	'TV',	'Verona',					'garibaldi g. via',				'3186311703',	'88999',	'4CuLWLG5',	'39625');
INSERT INTO Utente VALUES('EA8AJOUWYH6OLLEG',	'Ermenegildo',	'Di Mercurio',		'1973-1-25',	'VR',	'Padova',					'pigafetta antonio via',		'1233898593',	'06807',	'gvZ038r8',	'69994');
INSERT INTO Utente VALUES('NOHA8DCMG6PLJE6D',	'Mimi',			'Nazario',			'1980-12-17',	'VE',	'Mira',						'liviero mons. c. via',			'0451542462',	'36062',	'MclJeic2',	'66022');
INSERT INTO Utente VALUES('YEN1NDF1M51N5JNW',	'Flavio',		'Monte',			'1978-12-20',	'PD',	'Villafranca di Verona',	'rampa via',					'3892292624',	'06428',	'l0Hbi61P',	'22775');
INSERT INTO Utente VALUES('A2YPPJAYHMM1UM4L',	'Luigia',		'Borghi',			'1990-10-6',	'BL',	'Chioggia',					'porto via del',				'4458366100',	'88362',	'CYi8iWjo',	'29989');
INSERT INTO Utente VALUES('YC9UF927JM7VZYII',	'Quinto',		'Sarto',			'1977-6-24',	'VI',	'Vittorio Veneto',			'granzette via',				'5140460956',	'02517',	'aeoLF8UJ',	'38151');
INSERT INTO Utente VALUES('KV4HGD61VWL6AXWZ',	'Arrigo',		'De Lorenzo',		'1992-6-16',	'TV',	'Treviso',					'santuario via del',			'6247077799',	'16295',	'xxITmsbN',	'91447');
INSERT INTO Utente VALUES('6Q5DXPO31ACFB4KT',	'Fabio',		'Serafin',			'1982-8-22',	'VE',	'Chioggia',					'san bortolo via',				'6362885329',	'47167',	'7pO9pGqs',	'NULL');
INSERT INTO Utente VALUES('NO0TUOROLNQ9OW2P',	'Vilfredo',		'Ambrosi',			'1984-8-9',		'PD',	'Belluno',					'de conti nicolo via',			'4009684906',	'20923',	'ArkvQASi',	'NULL');
INSERT INTO Utente VALUES('94I8IX5XPHS4XH1V',	'Gina',			'Ventura',			'1979-12-16',	'BL',	'Villafranca di Verona',	'cervi fratelli via',			'0951301905',	'71979',	'CAjKejCj',	'NULL');
INSERT INTO Utente VALUES('9PSUJAV1DBIOCPWW',	'Placida',		'Brambilla',		'1984-8-2',		'RO',	'Castelfranco Veneto',		'santo stefano superiore via',	'9655379471',	'97111',	'Ot5Ag8zH',	'NULL');
INSERT INTO Utente VALUES('79I9HADNUB7EOGT9',	'Vincenzo',		'Vaccaro',			'1976-7-26',	'VI',	'Padova',					'martiri della liberta via',	'9299577641',	'52847',	'e8DWxILI',	'NULL');
INSERT INTO Utente VALUES('SGDWY55MK85QADTR',	'Ippolito',		'Benenati',			'1983-6-13',	'TV',	'Arzignano',				'da vinci l. via',				'9404760529',	'43876',	'c00u8CUD',	'NULL');
INSERT INTO Utente VALUES('NXF9YM1PIQRUJVE8',	'Ernesto',		'Guerriero',		'1984-8-29',	'VR',	'Verona',					'ghetto via',					'2014438098',	'80671',	'zdEijcAr',	'NULL');
INSERT INTO Utente VALUES('K18G48FUHYMW1OLC',	'Calogero',		'Alberici',			'1975-6-21',	'VE',	'Rovigo',					'cavallotti felice via',		'1657690783',	'35280',	'iR1O2jRV',	'NULL');
INSERT INTO Utente VALUES('35IDXCNBWS1VNQAW',	'Severo',		'Carnevale',		'1993-10-29',	'PD',	'Spinea',					'bussolin bruno via',			'1433205721',	'31343',	'JtkJy1ZE',	'NULL');


-- Impiegato

-- INSERT INTO Impiegato VALUES(CF, Nome, Cognome, Data_nascita, Provincia, Citta, Indirizzo, Telefono, Stipendio, Data_inizio, Indirizzo_biglietteria, Comune_biglietteria);

INSERT INTO Impiegato VALUES('DK3AZUDUX2ZLQBYM' ,'Sabina',      'Parrino',      '1990-3-10',    'VE',   'Mirano',                   'borgo via del',                        '8885757258',   2390,   '2015-12-16',   'giustinian via',               'Belluno'           	);
INSERT INTO Impiegato VALUES('N01B454REBD3RFUU' ,'Loris',       'Stablum',      '1993-4-12',    'PD',   'Legnago',                  'ghiacciaia via',                       '1142574713',   1164,   '2016-8-21',    'san bortolo via',              'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('VG4P3T403FOYCMLO' ,'Emanuele',    'Baglio',       '1977-7-11',    'BL',   'Mira',                     'madre teresa di calcutta via',         '3275835168',   1487,   '2017-8-28',    'pernumia via',                 'Mira'              	);
INSERT INTO Impiegato VALUES('I2622G3K10T9T8GY' ,'Apollonia',   'Cisternino',   '1994-5-16',    'RO',   'Vittorio Veneto',          'fragose via',                          '5219463010',   1834,   '2016-12-21',   'franceschetti d. via',         'Vittorio Veneto'   	);
INSERT INTO Impiegato VALUES('L0XVWWIBQEYHNC7I' ,'Rufino',      'Savona',       '1993-10-7',    'VI',   'Valdagno',                 'buggiani bianchi gaspari anna via',    '0888641313',   1730,   '2017-6-18',    'isola verso monte via',        'Chioggia'          	);
INSERT INTO Impiegato VALUES('LTB40K88R8B0CTDD' ,'Riccardo',    'Negrini',      '1996-9-3',     'TV',   'Bassano del Grappa',       'montefiorin via',                      '9389934102',   2171,   '2016-5-30',    'san sabino fontana via',       'Bassano del Grappa'    );
INSERT INTO Impiegato VALUES('KLDA9QVJ1G1Y5O4L' ,'Simonetta',   'Baldovini',    '1995-2-17',    'VR',   'Castelfranco Veneto',      'basse via',                            '8432925291',   1870,   '2015-1-8',     'pozzetto via',                 'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('QLV0W6BX5M6BL5AU' ,'Vittoria',    'Salvaggi',     '1977-1-6',     'VE',   'Schio',                    'san tommaso apostolo via',             '2441086040',   2283,   '2016-8-18',    'canaletta via',                'Chioggia'          	);
INSERT INTO Impiegato VALUES('1GGF6EB8Q8F0PD8C' ,'Vespasiano',  'Alberici',     '1975-8-11',    'PD',   'Mira',                     'cadorna generale l. via',              '2105786438',   2269,   '2016-9-15',    'liguria via',                  'Treviso'           	);
INSERT INTO Impiegato VALUES('WO8AD1IHFS7S1GE4' ,'Flavia',      'Sabbadin',     '1970-5-19',    'BL',   'Chioggia',                 'piave via',                            '1394583130',   1868,   '2015-5-13',    'san cosma via',                'Valdagno'          	);
INSERT INTO Impiegato VALUES('7TSRM1QRZQ79MNDL' ,'Edvige',      'Barzetti',     '1994-1-28',    'RO',   'Spinea',                   'rosa via',                             '1070166818',   1964,   '2015-6-23',    'calchera luigi via',           'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('HQXP4CU9ZO77JL4D' ,'Gianni',      'Acconcio',     '1984-4-23',    'VI',   'Albignasego',              'candie via',                           '1550114705',   1940,   '2015-12-28',   'pozzonovo via',                'Chioggia'          	);
INSERT INTO Impiegato VALUES('QQFQB3JFVFCU87ZA' ,'Nunzia',      'Cassano',      '1980-6-3',     'TV',   'Valdagno',                 'mercato via del',                      '3680789146',   2453,   '2015-9-8',     'san damiano via',              'Mirano'            	);
INSERT INTO Impiegato VALUES('BLWQEMIBTW0A2DA0' ,'Eugenia',     'Amadei',       '1983-4-18',    'VR',   'Belluno',                  'carpanedo largo',                      '1114150886',   1776,   '2016-6-27',    'formigaro via',                'Bassano del Grappa'    );
INSERT INTO Impiegato VALUES('80KERNNTMKZ1R6MT' ,'Teodoro',     'Noschese',     '1993-7-6',     'VE',   'Vittorio Veneto',          'teatro via',                           '1247101851',   1490,   '2015-12-16',   'san cosma via',                'Castelfranco Veneto'   );
INSERT INTO Impiegato VALUES('CK9SCOSFR974NOLH' ,'Abele',       'Fabbro',       '1976-8-14',    'BL',   'Padova',                   'rossini g. via',                       '0435399937',   2333,   '2017-6-14',    'san luigi gonzaga via',        'Vittorio Veneto'   	);
INSERT INTO Impiegato VALUES('Z3S3FJL85MWGRJD3' ,'Gavino',      'Baldovini',    '1975-8-24',    'RO',   'Chioggia',                 'san gregorio barbarigo via',           '0334120598',   1622,   '2015-12-9',    'emilia via',                   'San Dona di Piave'     );
INSERT INTO Impiegato VALUES('XGYB6E94VLB5JMLY' ,'Crescenzo',   'Maria',        '1980-7-19',    'VI',   'Vittorio Veneto',          'buonarroti m. via',                    '4077230635',   1716,   '2015-12-15',   'grole via della',              'Vicenza'           	);
INSERT INTO Impiegato VALUES('W5JZXQ07WT9BY6ML' ,'Pietrina',    'Costanzo',     '1977-12-24',   'TV',   'Mira',                     'manin daniele via',                    '1324832412',   2229,   '2016-5-30',    'sabbioni via',                 'Bassano del Grappa'    );
INSERT INTO Impiegato VALUES('3W10GQTMGUWX5EVW' ,'Santina',     'Amadei',       '1982-11-6',    'VR',   'Conegliano',               'castello via',                         '1173173446',   2389,   '2015-10-6',    'cuora via',                    'Mira'              	);
INSERT INTO Impiegato VALUES('6V0SQT338YG35YMJ' ,'Manuel',      'Santoro',      '1993-10-26',   'VE',   'Montebelluna',             'da mosto alvise via',                  '5600610570',   1449,   '2016-3-9',     'pozzetto via',                 'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('RS8QGBS9ZCA4Y6IL' ,'Elmo',        'Amoretto',     '1978-12-23',   'PD',   'Vittorio Veneto',          'galeno angelo via',                    '8096299724',   1730,   '2015-2-24',    'canaletta via',                'Chioggia'          	);
INSERT INTO Impiegato VALUES('2HZ98QMULU813BRT' ,'Annibale',    'Naldi',        '1970-8-26',    'BL',   'Spinea',                   'negrelli luigi via',                   '9176257976',   1667,   '2016-2-11',    'liguria via',                  'Treviso'           	);
INSERT INTO Impiegato VALUES('ZEDLMK9ZGD7GV0G7' ,'Sabrina',     'Tamboia',      '1970-4-26',    'RO',   'Mira',                     'lombardia via',                        '4187042708',   2337,   '2016-3-30',    'san cosma via',                'Valdagno'          	);
INSERT INTO Impiegato VALUES('CR7JLF5OPQYZL0MD' ,'Gregorio',    'Ajello',       '1981-10-25',   'VI',   'Treviso',                  'cementeria via della',                 '6255019789',   1847,   '2015-8-13',    'calchera luigi via',           'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('E0BR1LCFGAI3HSK5' ,'Gustavo',     'Amoretto',     '1976-2-2',     'TV',   'San Dona diPiave',         'lombardia via',                        '1571715258',   2298,   '2015-2-2',     'pozzonovo via',                'Chioggia'          	);
INSERT INTO Impiegato VALUES('H9HFQHWUK99G0DNO' ,'Loreto',      'Agresta',      '1988-3-14',    'VR',   'Villafranca di Verona',    'crosarone via',                        '7184948224',   2162,   '2016-7-26',    'san bortolo via',              'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('0U4PLKLW11J53MH7' ,'Zoe',         'Arnolfi',      '1995-8-17',    'VE',   'Albignasego',              'bellini vincenzo via',                 '1498204887',   1940,   '2015-3-20',    'san bortolo via',              'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('Y109K8JWLC42YCL3' ,'Emidio',      'Milani',       '1995-12-22',   'PD',   'Verona',                   'emo capodilista a. via',               '7988334432',   1101,   '2017-11-17',   'san bortolo via',              'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('4D32R2OG5H7F0IVW' ,'Abele',       'Parrino',      '1975-8-11',    'PD',   'Mira',                     'cadorna generale l. via',              '2105786438',   0269,   '2006-9-15',    'liguria via',                  'Treviso'           	);
INSERT INTO Impiegato VALUES('KJ4QF8V5EBUGUNE1' ,'Gavino',      'Stablum',      '1970-5-19',    'BL',   'Chioggia',                 'piave via',                            '1394583130',   0868,   '2005-5-13',    'san cosma via',                'Valdagno'          	);
INSERT INTO Impiegato VALUES('13JV0H54AAT7UNMN' ,'Crescenzo',   'Baglio',       '1994-1-28',    'RO',   'Spinea',                   'rosa via',                             '1070166818',   0964,   '2005-6-23',    'calchera luigi via',           'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('GBX2WPMEDKUK2WI8' ,'Pietrina',    'Cisternino',   '1984-4-23',    'VI',   'Albignasego',              'candie via',                           '1550114705',   0940,   '2005-12-28',   'pozzonovo via',                'Chioggia'          	);
INSERT INTO Impiegato VALUES('MMW3WIKQOAUUARYK' ,'Santina',     'Savona',       '1980-6-3',     'TV',   'Valdagno',                 'mercato via del',                      '3680789146',   0453,   '2005-9-8',     'san damiano via',              'Mirano'            	);
INSERT INTO Impiegato VALUES('FH3E2V9S06U8WJMN' ,'Manuel',      'Negrini',      '1983-4-18',    'VR',   'Belluno',                  'carpanedo largo',                      '1114150886',   0776,   '2006-6-27',    'formigaro via',                'Bassano del Grappa'    );
INSERT INTO Impiegato VALUES('X29UG9TZGXF06C70' ,'Elmo',        'Baldovini',    '1993-7-6',     'VE',   'Vittorio Veneto',          'teatro via',                           '1247101851',   0490,   '2005-12-16',   'san cosma via',                'Castelfranco Veneto'   );
INSERT INTO Impiegato VALUES('B5XVWP8DJQOXYDJD' ,'Annibale',    'Salvaggi',     '1976-8-14',    'BL',   'Padova',                   'rossini g. via',                       '0435399937',   0333,   '2007-6-14',    'san luigi gonzaga via',        'Vittorio Veneto'   	);
INSERT INTO Impiegato VALUES('8JVDOXJYTA2FT4VF' ,'Sabrina',     'Alberici',     '1975-8-24',    'RO',   'Chioggia',                 'san gregorio barbarigo via',           '0334120598',   0622,   '2005-12-9',    'emilia via',                   'San Dona di Piave'     );
INSERT INTO Impiegato VALUES('569GO1V4NO6RFHGH' ,'Gregorio',    'Sabbadin',     '1980-7-19',    'VI',   'Vittorio Veneto',          'buonarroti m. via',                    '4077230635',   0716,   '2005-12-15',   'grole via della',              'Vicenza'           	);
INSERT INTO Impiegato VALUES('WGFG4OH876LNBE8S' ,'Gustavo',     'Barzetti',     '1977-12-24',   'TV',   'Mira',                     'manin daniele via',                    '1324832412',   0229,   '2006-5-30',    'sabbioni via',                 'Bassano del Grappa'    );
INSERT INTO Impiegato VALUES('FGCCBW2Y9CGE1KHT' ,'Loreto',      'Acconcio',     '1982-11-6',    'VR',   'Conegliano',               'castello via',                         '1173173446',   0389,   '2005-10-6',    'cuora via',                    'Mira'              	);
INSERT INTO Impiegato VALUES('68MA4NV93QTW4MHF' ,'Zoe',         'Cassano',      '1993-10-26',   'VE',   'Montebelluna',             'da mosto alvise via',                  '5600610570',   0449,   '2006-3-9',     'pozzetto via',                 'Mogliano Veneto'   	);
INSERT INTO Impiegato VALUES('FYIXM0W9K6VNUKM9' ,'Emidio',      'Amadei',       '1978-12-23',   'PD',   'Vittorio Veneto',          'galeno angelo via',                    '8096299724',   0730,   '2005-2-24',    'canaletta via',                'Chioggia'          	);

-- Biglietteria

-- INSERT INTO Biglietteria VALUES(Indirizzo, Comune, Nome, Telefono, CF_responsabile);

INSERT INTO Biglietteria VALUES('giustinian via',               'Belluno',              'biglietteria_00',   '5059071397',	'DK3AZUDUX2ZLQBYM' );
INSERT INTO Biglietteria VALUES('san bortolo via',              'Mogliano Veneto',      'biglietteria_01',   '3886882763',	'N01B454REBD3RFUU' );
INSERT INTO Biglietteria VALUES('pernumia via',                 'Mira',                 'biglietteria_02',   '4790835253',	'VG4P3T403FOYCMLO' );
INSERT INTO Biglietteria VALUES('franceschetti d. via',         'Vittorio Veneto',      'biglietteria_03',   '5266701220',	'I2622G3K10T9T8GY' );
INSERT INTO Biglietteria VALUES('isola verso monte via',        'Chioggia',             'biglietteria_04',   '7123781012',	'L0XVWWIBQEYHNC7I' );
INSERT INTO Biglietteria VALUES('san sabino fontana via',       'Bassano del Grappa',   'biglietteria_05',   '9519870554',	'LTB40K88R8B0CTDD' );
INSERT INTO Biglietteria VALUES('pozzetto via',                 'Mogliano Veneto',      'biglietteria_06',   '1665507449',	'KLDA9QVJ1G1Y5O4L' );
INSERT INTO Biglietteria VALUES('canaletta via',                'Chioggia',             'biglietteria_07',   '7421969928',	'QLV0W6BX5M6BL5AU' );
INSERT INTO Biglietteria VALUES('liguria via',                  'Treviso',              'biglietteria_08',   '8580708896',	'1GGF6EB8Q8F0PD8C' );
INSERT INTO Biglietteria VALUES('san cosma via',                'Valdagno',             'biglietteria_09',   '2746788170',	'WO8AD1IHFS7S1GE4' );
INSERT INTO Biglietteria VALUES('calchera luigi via',           'Mogliano Veneto',      'biglietteria_10',   '9000837050',	'7TSRM1QRZQ79MNDL' );
INSERT INTO Biglietteria VALUES('pozzonovo via',                'Chioggia',             'biglietteria_11',   '8257641513',	'HQXP4CU9ZO77JL4D' );
INSERT INTO Biglietteria VALUES('san damiano via',              'Mirano',               'biglietteria_12',   '8195677613',	'QQFQB3JFVFCU87ZA' );
INSERT INTO Biglietteria VALUES('formigaro via',                'Bassano del Grappa',   'biglietteria_13',   '0777787568',	'BLWQEMIBTW0A2DA0' );
INSERT INTO Biglietteria VALUES('san cosma via',                'Castelfranco Veneto',  'biglietteria_14',   '1137287099',	'80KERNNTMKZ1R6MT' );
INSERT INTO Biglietteria VALUES('san luigi gonzaga via',        'Vittorio Veneto',      'biglietteria_15',   '4200048239',	'CK9SCOSFR974NOLH' );
INSERT INTO Biglietteria VALUES('emilia via',                   'San Dona di Piave',    'biglietteria_16',   '2773625550',	'Z3S3FJL85MWGRJD3' );
INSERT INTO Biglietteria VALUES('grole via della',              'Vicenza',              'biglietteria_17',   '0500016558',	'XGYB6E94VLB5JMLY' );
INSERT INTO Biglietteria VALUES('sabbioni via',                 'Bassano del Grappa',   'biglietteria_18',   '9932552614',	'W5JZXQ07WT9BY6ML' );
INSERT INTO Biglietteria VALUES('cuora via',                    'Mira',                 'biglietteria_19',   '9379018403',	'3W10GQTMGUWX5EVW' );


-- Tessera      

-- INSERT INTO Tessera VALUES(Id_tessera, Data_attivazione, Data_scadenza);

INSERT INTO Tessera VALUES(82653,   '2017-2-5',     '2018-2-5'      );                                                
INSERT INTO Tessera VALUES(59335,   '2016-3-30',    '2017-3-30'     );                                                
INSERT INTO Tessera VALUES(06013,   '2017-5-18',    '2018-5-18'     );                                                
INSERT INTO Tessera VALUES(63412,   '2016-5-10',    '2017-5-10'     );                                                
INSERT INTO Tessera VALUES(50536,   '2016-9-26',    '2017-9-26'     );                                                
INSERT INTO Tessera VALUES(45085,   '2016-2-23',    '2017-2-23'     );                                                
INSERT INTO Tessera VALUES(17256,	'2017-12-13',	'2018-12-13'	);
INSERT INTO Tessera VALUES(62649,	'2017-7-21',	'2018-7-21'		);
INSERT INTO Tessera VALUES(11003,	'2017-5-19',	'2018-5-19'		);
INSERT INTO Tessera VALUES(55976,	'2017-4-15',	'2018-4-15'		);
INSERT INTO Tessera VALUES(11798,	'2017-2-29',	'2018-2-29'		);
INSERT INTO Tessera VALUES(09875,	'2016-9-15',	'2017-9-15'		);
INSERT INTO Tessera VALUES(39625,	'2017-10-22',	'2018-10-22'	);
INSERT INTO Tessera VALUES(69994,	'2017-2-13',	'2018-2-13'		);
INSERT INTO Tessera VALUES(66022,	'2016-1-9',		'2017-1-9'		);
INSERT INTO Tessera VALUES(22775,	'2017-10-15',	'2018-10-15'	);
INSERT INTO Tessera VALUES(29989,	'2016-5-10',	'2017-5-10'		);
INSERT INTO Tessera VALUES(74574,	'2017-10-27',	'2018-10-27'	);
INSERT INTO Tessera VALUES(38151,	'2017-3-19',	'2018-3-19'		);
INSERT INTO Tessera VALUES(91447,	'2017-5-24',	'2018-5-24'		);


-- Linea

-- INSERT INTO Linea VALUES(Id_linea, Nome_linea, Indirizzo_partenza, Comune_partenza, Indirizzo_arrivo, Comune_arrivo);

INSERT INTO Linea VALUES(42256,	'linea_0',	'raise via',						'Mogliano Veneto',	'tortorini cavaliere alvise via',	'Montebelluna'	);
INSERT INTO Linea VALUES(68584,	'linea_1',	'vittoria piazzale della',			'Valdagno',			'piave via',						'Chioggia'		);
INSERT INTO Linea VALUES(22511,	'linea_2',	'tintoretto via',					'Rovigo',			'piave via',						'Chioggia'		);
INSERT INTO Linea VALUES(56507,	'linea_3',	'piave via',						'Chioggia',			'pozzonovo via',					'Albignasego'	);
INSERT INTO Linea VALUES(17968,	'linea_4',	'san tommaso apostolo via',			'Treviso',			'tortorini cavaliere alvise via',	'Montebelluna'	);
INSERT INTO Linea VALUES(62949,	'linea_5',	'scaloncino b. da valmonte via',	'Albignasego',		'san tommaso apostolo via',			'Treviso'		);
INSERT INTO Linea VALUES(78665,	'linea_6',	'san tommaso apostolo via',			'Treviso',			'solana via',						'Spinea'		);
INSERT INTO Linea VALUES(14093,	'linea_7',	'rialto via',						'Albignasego',		'solana via',						'Spinea'		);
INSERT INTO Linea VALUES(00521,	'linea_8',	'pozzonovo via',					'Albignasego',		'san tommaso apostolo via',			'Treviso'		);
INSERT INTO Linea VALUES(59861,	'linea_9',	'cervi fratelli via',				'Belluno',			'vittoria piazzale della',			'Valdagno'		);


-- Fermata


-- INSERT INTO Fermata VALUES(Indirizzo, Comune);

INSERT INTO Fermata VALUES('tintoretto via',                    'Rovigo'				);
INSERT INTO Fermata VALUES('raise via',                         'Mogliano Veneto'		);
INSERT INTO Fermata VALUES('madre teresa di calcutta via',      'Castelfranco Veneto'	);
INSERT INTO Fermata VALUES('pozzonovo via',                     'Albignasego'			);
INSERT INTO Fermata VALUES('alighieri dante via',               'Villafranca di Verona'	);
INSERT INTO Fermata VALUES('san tommaso apostolo via',          'Treviso'				);
INSERT INTO Fermata VALUES('cervi fratelli via',                'Belluno'				);
INSERT INTO Fermata VALUES('scaloncino b. da valmonte via',     'Albignasego'			);
INSERT INTO Fermata VALUES('valli via',                         'Montebelluna'			);
INSERT INTO Fermata VALUES('rialto via',                        'Albignasego'			);
INSERT INTO Fermata VALUES('piave via',                         'Chioggia'				);
INSERT INTO Fermata VALUES('vittoria piazzale della',           'Valdagno'				);
INSERT INTO Fermata VALUES('solana via',                        'Spinea'				);
INSERT INTO Fermata VALUES('tortorini cavaliere alvise via',    'Chioggia'				);
INSERT INTO Fermata VALUES('tortorini cavaliere alvise via',    'Montebelluna'			);
INSERT INTO Fermata VALUES('roma via',                          'Jesolo'				);
INSERT INTO Fermata VALUES('avancini via',                      'Mirano'				);
INSERT INTO Fermata VALUES('venti settembre piazza',            'Spinea'				);
INSERT INTO Fermata VALUES('martiri della foibe via',           'Belluno'				);
INSERT INTO Fermata VALUES('pignara via',                       'Valdagno'				);
INSERT INTO Fermata VALUES('valli via',                         'Albignasego'			);
INSERT INTO Fermata VALUES('pellegrino via del',                'Treviso'				);
INSERT INTO Fermata VALUES('sabbioni via',                      'Arzignano'				);
INSERT INTO Fermata VALUES('caboto giovanni via',               'Valdagno'				);
INSERT INTO Fermata VALUES('nievo ippolito via',                'Padova'				);
INSERT INTO Fermata VALUES('san salvaro via',                   'Valdagno'				);
INSERT INTO Fermata VALUES('undici febbraio via',               'Valdagno'				);
INSERT INTO Fermata VALUES('garibaldi g. via',                  'Arzignano'				);
INSERT INTO Fermata VALUES('carpanedo via',                     'Spinea'				);
INSERT INTO Fermata VALUES('la malandrina via',                 'Mogliano Veneto'		);


-- Abbonamento

-- INSERT INTO Abbonamento VALUES( Id_abbonamento, Data_sottoscrizione, Data_inizio, Tipo, Sconto, Tipo_tariffa, Periodo_tariffa, Linea_tariffa, Indirizzo_biglietteria, Comune_biglietteria, Tessera);
	 
INSERT INTO Abbonamento VALUES('QVWSBRLY07NOXES', '2017-4-8',     '2017-4-9',     'fisico', '0',  'tipo_02', '60',   '00521',  'giustinian via',               'Belluno',              82653);
INSERT INTO Abbonamento VALUES('SQ8799N47Y59GI8', '2016-12-30',   '2016-12-31',   'fisico', '0',  'tipo_00', '7',    '42256',  'san bortolo via',              'Mogliano Veneto',      06013);
INSERT INTO Abbonamento VALUES('5F7PEA0RV1VO73W', '2017-3-3',     '2017-3-4',     'fisico', '0',  'tipo_01', '360',  '62949',  'pernumia via',                 'Mira',                 11798);
INSERT INTO Abbonamento VALUES('TFTOV0MYTD9V5SD', '2017-5-30',    '2017-5-31',    'fisico', '0',  'tipo_01', '360',  '62949',  'franceschetti d. via',         'Vittorio Veneto',      50536);
INSERT INTO Abbonamento VALUES('0JRU4NPNF8VYYKS', '2017-9-25',    '2017-9-26',    'fisico', '0',  'tipo_00', '7',  	 '42256',  'isola verso monte via',        'Chioggia',             29989);
INSERT INTO Abbonamento VALUES('WU4QN658DAR2YVR', '2017-10-24',   '2017-10-25',   'fisico', '0',  'tipo_00', '7',  	 '42256',  'san sabino fontana via',       'Bassano del Grappa',   82653);
INSERT INTO Abbonamento VALUES('HOQZ6WRDM9A6PYE', '2017-12-23',   '2017-12-24',   'fisico', '0',  'tipo_02', '7',    '42256',  'pozzetto via',                 'Mogliano Veneto',      82653);
INSERT INTO Abbonamento VALUES('SKWH9D0SJR8F6OW', '2017-12-21',   '2017-12-22',   'fisico', '0',  'tipo_02', '30',   '68584',  'canaletta via',                'Chioggia',             59335);
INSERT INTO Abbonamento VALUES('MGQSLA6MPZAR4A1', '2017-12-31',   '2018-01-01',   'fisico', '0',  'tipo_01', '60',   '22511',  'liguria via',                  'Treviso',              06013);
INSERT INTO Abbonamento VALUES('VAR0KFLZDJKHUUI', '2017-09-11',   '2017-09-12',   'fisico', '0',  'tipo_02', '180',  '56507',  'san cosma via',                'Valdagno',             63412);
INSERT INTO Abbonamento VALUES('GIS7JGGXQL98EAS', '2017-12-23',   '2017-12-24',   'fisico', '0',  'tipo_01', '360',  '17968',  'calchera luigi via',           'Mogliano Veneto',      50536);
INSERT INTO Abbonamento VALUES('MBE8AFC0EQ9HMRN', '2017-12-15',   '2017-12-16',   'fisico', '0',  'tipo_02', '7',    '62949',  'pozzonovo via',                'Chioggia',             45085);
INSERT INTO Abbonamento VALUES('17Z21SN34MQP3L5', '2017-12-27',   '2017-12-28',   'fisico', '0',  'tipo_02', '30',   '78665',  'san damiano via',              'Mirano',               17256);
INSERT INTO Abbonamento VALUES('MNK1S2591JONKJ5', '2017-11-22',   '2017-11-23',   'fisico', '0',  'tipo_01', '60',   '14093',  'formigaro via',                'Bassano del Grappa',   62649);
INSERT INTO Abbonamento VALUES('M5FX4HB8PD02W4V', '2018-01-18',   '2018-01-19',   'fisico', '0',  'tipo_01', '180',  '00521',  'san cosma via',                'Castelfranco Veneto',  11003);
INSERT INTO Abbonamento VALUES('GE7EEJP0O4FCSJ3', '2018-01-20',   '2018-01-21',   'fisico', '0',  'tipo_01', '360',  '59861',  'san luigi gonzaga via',        'Vittorio Veneto',      55976);
INSERT INTO Abbonamento VALUES('O1GSI9DHHFHTOOE', '2018-01-26',   '2018-01-27',   'fisico', '0',  'tipo_02', '7',    '42256',  'emilia via',                   'San Dona di Piave',    11798);
INSERT INTO Abbonamento VALUES('5P40PE1INWW4CYM', '2018-01-13',   '2018-01-14',   'fisico', '0',  'tipo_01', '30',   '68584',  'grole via della',              'Vicenza',              09875);
INSERT INTO Abbonamento VALUES('U56DUXQU2JJQW39', '2018-01-10',   '2018-01-11',   'fisico', '0',  'tipo_02', '60',   '22511',  'sabbioni via',                 'Bassano del Grappa',   39625);
INSERT INTO Abbonamento VALUES('MJGBOIDM3TCYMQI', '2018-01-13',   '2018-01-14',   'fisico', '0',  'tipo_02', '180',  '56507',  'pozzonovo via',                'Chioggia',             69994);
INSERT INTO Abbonamento VALUES('PIRG6M9QZZFONT2', '2018-01-18',   '2018-01-19',   'fisico', '0',  'tipo_02', '360',  '17968',  'san damiano via',              'Mirano',               66022);
INSERT INTO Abbonamento VALUES('KIVQP0W3PLWSL5D', '2018-01-11',   '2018-01-12',   'fisico', '0',  'tipo_00', '7',    '62949',  'formigaro via',                'Bassano del Grappa',   22775);
INSERT INTO Abbonamento VALUES('9TJSLR9GAD0P1YE', '2016-4-20',    '2016-4-21',    'online', '10', 'tipo_01', '180',  '78665',  'NULL',             			   'NULL', 			       06013);
INSERT INTO Abbonamento VALUES('IW7UK9DU2JXRDEZ', '2017-6-24',    '2017-6-25',    'online', '15', 'tipo_00', '180',  '22511',  'NULL',             			   'NULL',                 91447);
INSERT INTO Abbonamento VALUES('FD3DWXNG5JARPG4', '2017-1-14',    '2017-1-15',    'online', '20', 'tipo_02', '30',   '14093',  'NULL',             			   'NULL',                 11003);
INSERT INTO Abbonamento VALUES('Y6F43PWHLSZLBJR', '2016-11-2',    '2016-11-3',    'online', '30', 'tipo_02', '30',   '14093',  'NULL',             			   'NULL',                 69994);
INSERT INTO Abbonamento VALUES('9SO472X51MD9INR', '2017-12-17',   '2017-12-18',   'online', '10', 'tipo_01', '60',   '00521',  'NULL', 						   'NULL',				   82653);
INSERT INTO Abbonamento VALUES('JJQMEB08IVD4S22', '2017-10-14',   '2017-10-15',   'online', '15', 'tipo_00', '7',    '42256',  'NULL', 						   'NULL',				   59335);
INSERT INTO Abbonamento VALUES('GUMVRJY3IUT7G5B', '2017-11-12',   '2017-11-13',   'online', '20', 'tipo_02', '360',  '62949',  'NULL', 						   'NULL',				   06013);
INSERT INTO Abbonamento VALUES('DMVMNGP2GCCCOED', '2017-12-15',   '2017-12-16',   'online', '30', 'tipo_02', '360',  '62949',  'NULL', 						   'NULL',				   63412);
INSERT INTO Abbonamento VALUES('A6M8NFX419O3907', '2017-11-27',   '2017-11-28',   'online', '10', 'tipo_01', '7',    '42256',  'NULL', 						   'NULL',				   50536);
INSERT INTO Abbonamento VALUES('JYNMMYN70XDCYJA', '2017-12-17',   '2017-12-18',   'online', '15', 'tipo_00', '7',    '42256',  'NULL', 						   'NULL',				   45085);
INSERT INTO Abbonamento VALUES('2SOT7YO288LFPM0', '2017-10-24',   '2017-10-25',   'online', '20', 'tipo_02', '7',    '42256',  'NULL', 						   'NULL',				   17256);
INSERT INTO Abbonamento VALUES('1SZLYWAER5UC99L', '2017-10-27',   '2017-10-28',   'online', '30', 'tipo_02', '30',   '68584',  'NULL', 						   'NULL',				   62649);
INSERT INTO Abbonamento VALUES('RANQL8CIZC6ZOHO', '2018-01-22',   '2018-01-23',   'online', '10', 'tipo_01', '60',   '22511',  'NULL', 						   'NULL',				   11003);
INSERT INTO Abbonamento VALUES('UJWSBKMETT8CKA9', '2018-01-14',   '2018-01-15',   'online', '15', 'tipo_00', '180',  '56507',  'NULL', 						   'NULL',				   55976);
INSERT INTO Abbonamento VALUES('HWJKL04F6NV9PXG', '2018-01-22',   '2018-01-23',   'online', '20', 'tipo_02', '360',  '17968',  'NULL', 						   'NULL',				   11798);
INSERT INTO Abbonamento VALUES('WHVZWEI6B4356BI', '2018-01-13',   '2018-01-14',   'online', '30', 'tipo_02', '7',    '62949',  'NULL', 						   'NULL',				   09875);
INSERT INTO Abbonamento VALUES('W1MVRVVUXV4YT9A', '2018-01-14',   '2018-01-15',   'online', '10', 'tipo_01', '30',   '78665',  'NULL', 						   'NULL',				   39625);
INSERT INTO Abbonamento VALUES('22EE62KC741YLUW', '2018-01-30',   '2018-01-31',   'online', '15', 'tipo_00', '60',   '14093',  'NULL', 						   'NULL',				   69994);
INSERT INTO Abbonamento VALUES('E1S90D5EJJHRX5D', '2018-01-10',   '2018-01-11',   'online', '20', 'tipo_02', '180',  '00521',  'NULL', 						   'NULL',				   66022);
INSERT INTO Abbonamento VALUES('J21WE0RSREBWBTO', '2018-01-20',   '2018-01-21',   'online', '30', 'tipo_02', '360',  '59861',  'NULL', 						   'NULL',				   22775);
INSERT INTO Abbonamento VALUES('0N2BDS0YYT8HVIN', '2018-01-15',   '2018-01-16',   'online', '10', 'tipo_01', '7',    '42256',  'NULL', 						   'NULL',				   29989);
INSERT INTO Abbonamento VALUES('J4PKFRY2FETIL6L', '2018-01-02',   '2018-01-03',   'online', '15', 'tipo_00', '30',   '68584',  'NULL', 						   'NULL',				   74574);
																																		   

-- Biglietto                                                                                                                               

-- INSERT INTO Biglietto VALUES( Id_biglietto, Data_emissione, Prezzo, Validita, Tipo, Sconto, CF_utente, Indirizzo_biglietteria, Comune_biglietteria);

INSERT INTO Biglietto VALUES('QC5CZS0WEMB47JK', '2017-12-5	00:00:00',	02, 3, 'fisico', '0',  '5V05B48EJT6OS5VQ', 'giustinian via',               'Belluno'               );
INSERT INTO Biglietto VALUES('SW7XEEGH9SWFKM6', '2017-10-22	00:00:00',	04, 3, 'fisico', '0',  '7LTQ1BUFQFO86TJD', 'san bortolo via',              'Mogliano Veneto'       );
INSERT INTO Biglietto VALUES('OUJDCL6I2BXELDM', '2017-11-22	00:00:00',	12, 5, 'fisico', '0',  'YRSIKF8872EKK3LG', 'pernumia via',                 'Mira'                  );
INSERT INTO Biglietto VALUES('JY3T8R1E151Q3IJ', '2017-10-20	00:00:00',	24, 5, 'fisico', '0',  'UNQKLURQTTX9CROX', 'franceschetti d. via',         'Vittorio Veneto'       );
INSERT INTO Biglietto VALUES('TANE8A8Y7GEF8VL', '2017-10-2	00:00:00',	02, 3, 'fisico', '0',  'BAMSE0C0UAEY6VN9', 'isola verso monte via',        'Chioggia'              );
INSERT INTO Biglietto VALUES('X44RA2CH3TKLBW5', '2017-12-7	00:00:00',	04, 3, 'fisico', '0',  '8NFPVB1QYJHCFA8S', 'san sabino fontana via',       'Bassano del Grappa'    );
INSERT INTO Biglietto VALUES('L4PHY1J3U5DGI8X', '2017-12-14	00:00:00',	12, 3, 'fisico', '0',  '90NJ2B2OV53M0Q73', 'pozzetto via',                 'Mogliano Veneto'       );
INSERT INTO Biglietto VALUES('0IX5RU2SUVZUC9P', '2017-11-16	00:00:00',	24, 3, 'fisico', '0',  'R5ZPO591AKCFPMNU', 'canaletta via',                'Chioggia'              );
INSERT INTO Biglietto VALUES('UL48XGNYOH9MS1N', '2017-11-8	00:00:00',	02, 4, 'fisico', '0',  '9C236Q5VGB4DD9ZX', 'liguria via',                  'Treviso'               );
INSERT INTO Biglietto VALUES('SLF0NITUBHFOMG2', '2017-10-14	00:00:00',	04, 4, 'fisico', '0',  'SSQKK5A2XRMM8UO5', 'san cosma via',                'Valdagno'              );
INSERT INTO Biglietto VALUES('NOU9VS97TM5EIM8', '2017-10-21	00:00:00',	12, 3, 'fisico', '0',  'QQUE6GYL0N7GSSLP', 'calchera luigi via',           'Mogliano Veneto'       );
INSERT INTO Biglietto VALUES('K2PB9X0VN570OMH', '2017-10-26	00:00:00',	24, 4, 'fisico', '0',  '9K78012M00KXU2UJ', 'pozzonovo via',                'Chioggia'              );
INSERT INTO Biglietto VALUES('OGO2HMESQ6FXWWQ', '2017-11-26	00:00:00',	02, 3, 'online', '20', 'AOFBNE5RPSV99NI3', 'NULL',     		               'NULL'				   );
INSERT INTO Biglietto VALUES('UQ5CYDHYJ21M58O', '2017-11-22	00:00:00',	04, 3, 'online', '10', 'EA8AJOUWYH6OLLEG', 'NULL',     		               'NULL'				   );
INSERT INTO Biglietto VALUES('TC3B5HZCTY2X9KF', '2017-11-21	00:00:00',	12, 4, 'online', '30', 'NOHA8DCMG6PLJE6D', 'NULL',     		               'NULL'				   );
INSERT INTO Biglietto VALUES('Z7CGNR5MXFEY5T9', '2017-11-15	00:00:00',	24, 3, 'online', '20', 'YEN1NDF1M51N5JNW', 'NULL',     		      		   'NULL'				   );
INSERT INTO Biglietto VALUES('IXKP2TZR6GR0G3Z', '2017-11-28	00:00:00',	02, 3, 'online', '20', 'A2YPPJAYHMM1UM4L', 'NULL',                   	   'NULL'				   );
INSERT INTO Biglietto VALUES('QX712HKA789QM3I', '2017-10-23	00:00:00',	04, 4, 'online', '10', 'YC9UF927JM7VZYII', 'NULL',              		   'NULL'				   );
INSERT INTO Biglietto VALUES('8J8Z3WEJK13WRUX', '2017-11-28	00:00:00',	12, 3, 'online', '20', 'KV4HGD61VWL6AXWZ', 'NULL',                 		   'NULL'				   );
INSERT INTO Biglietto VALUES('39HRC5XHR4KMC52', '2017-12-23	00:00:00',	24, 4, 'online', '10', '6Q5DXPO31ACFB4KT', 'NULL',                    	   'NULL'				   );
INSERT INTO Biglietto VALUES('MTLML0A7V9QEHEU', CURRENT_TIMESTAMP, 		02, 9, 'fisico', '10', 'SSQKK5A2XRMM8UO5', 'giustinian via',               'Belluno' 			   );
INSERT INTO Biglietto VALUES('0IVI259RLB4Y8JA', CURRENT_TIMESTAMP, 		04, 2, 'fisico', '10', 'QQUE6GYL0N7GSSLP', 'san bortolo via',              'Mogliano Veneto' 	   );
INSERT INTO Biglietto VALUES('AJVBCYKYTG7BGUQ', CURRENT_TIMESTAMP, 		12, 4, 'fisico', '10', '9K78012M00KXU2UJ', 'pernumia via',                 'Mira' 				   );
INSERT INTO Biglietto VALUES('0H4TCYY4CLPK7FT', CURRENT_TIMESTAMP, 		24, 3, 'fisico', '10', 'AOFBNE5RPSV99NI3', 'franceschetti d. via',         'Vittorio Veneto' 	   );
INSERT INTO Biglietto VALUES('DM0DX39VVL169LO', CURRENT_TIMESTAMP, 		02, 3, 'fisico', '10', 'EA8AJOUWYH6OLLEG', 'isola verso monte via',        'Chioggia' 			   );
INSERT INTO Biglietto VALUES('5GRK7DKH0CJR5JF', CURRENT_TIMESTAMP, 		04, 3, 'fisico', '10', 'NOHA8DCMG6PLJE6D', 'san sabino fontana via',       'Bassano del Grappa'    );
INSERT INTO Biglietto VALUES('4HIG25E03FKFO0S', CURRENT_TIMESTAMP, 		12, 4, 'online', '10', 'YEN1NDF1M51N5JNW', 'NULL',                         'NULL'                  );
INSERT INTO Biglietto VALUES('TADULFP3YI5B2A9', CURRENT_TIMESTAMP, 		24, 7, 'online', '10', 'A2YPPJAYHMM1UM4L', 'NULL',                         'NULL'                  );
INSERT INTO Biglietto VALUES('FFTD4A0887DKO9R', CURRENT_TIMESTAMP, 		02, 4, 'online', '10', 'YC9UF927JM7VZYII', 'NULL',                         'NULL'                  );
INSERT INTO Biglietto VALUES('667DFP3RV5BSOEW', CURRENT_TIMESTAMP, 		04, 6, 'online', '10', 'KV4HGD61VWL6AXWZ', 'NULL',                         'NULL'                  );
INSERT INTO Biglietto VALUES('KPAMTUGN3SC132B', CURRENT_TIMESTAMP, 		12, 6, 'online', '10', '6Q5DXPO31ACFB4KT', 'NULL',                         'NULL'                  );
INSERT INTO Biglietto VALUES('LQ7SD0FV1AMSQ1K', CURRENT_TIMESTAMP, 		24, 8, 'online', '10', 'NO0TUOROLNQ9OW2P', 'NULL',                         'NULL'                  );

															   
-- Periodo

-- INSERT INTO Periodo VALUES ( Id_periodo, Nome, Descrizione );

INSERT INTO Periodo VALUES (7,   'Settimanale',	'');
INSERT INTO Periodo VALUES (30,  'Mensile', 	'');
INSERT INTO Periodo VALUES (60,  'Bimestrale', 	'');
INSERT INTO Periodo VALUES (180, 'Semestale', 	'');
INSERT INTO Periodo VALUES (360, 'Annuale', 	'');

-- Tariffa

-- INSERT INTO Tariffa VALUES( Tipo, Periodo, Linea, Prezzo );

INSERT INTO Tariffa VALUES('tipo_00', '7', 		42256, 50);
INSERT INTO Tariffa VALUES('tipo_00', '30', 	68584, 200);
INSERT INTO Tariffa VALUES('tipo_00', '180', 	22511, 400);
INSERT INTO Tariffa VALUES('tipo_01', '7', 		56507, 40);
INSERT INTO Tariffa VALUES('tipo_01', '60', 	17968, 300);
INSERT INTO Tariffa VALUES('tipo_01', '360', 	62949, 600);
INSERT INTO Tariffa VALUES('tipo_01', '180', 	78665, 400);
INSERT INTO Tariffa VALUES('tipo_02', '30', 	14093, 70);
INSERT INTO Tariffa VALUES('tipo_02', '60', 	00521, 90);
INSERT INTO Tariffa VALUES('tipo_02', '360', 	59861, 800);

-- Tipo

-- INSERT INTO Tipo VALUES(Id_tipo, Nome, Descrizione);

INSERT INTO Tipo VALUES('tipo_00', 'Lavoratore', '');
INSERT INTO Tipo VALUES('tipo_01', 'Studente',   '');
INSERT INTO Tipo VALUES('tipo_02', 'Ordinario',  '');

-- Tratta

-- INSERT INTO Tratta VALUES(IndirizzoFermata, ComuneFermata, Linea); 

INSERT INTO Tratta VALUES('raise via',   			'Mogliano Veneto', '42256');
INSERT INTO Tratta VALUES('cervi fratelli via',   	'Belluno', '22511');
INSERT INTO Tratta VALUES('roma via',   			'Jesolo', '17968');
INSERT INTO Tratta VALUES('roma via',    			'Jesolo', '00521');
INSERT INTO Tratta VALUES('valli via',   			'Albignasego', '42256');
INSERT INTO Tratta VALUES('valli via',   			'Albignasego', '00521');
INSERT INTO Tratta VALUES('tintoretto via',   	    'Rovigo', '14093');
INSERT INTO Tratta VALUES('cervi fratelli via',     'Belluno', '17968');

							 
SET FOREIGN_KEY_CHECKS=1;