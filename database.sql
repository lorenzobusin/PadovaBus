
CREATE DATABASE IF NOT EXISTS PadovaBus;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS Tessera;
CREATE TABLE Tessera (

    Id_tessera			VARCHAR(8) PRIMARY KEY ,
    Data_attivazione	DATE NOT NULL ,
	Data_scadenza		DATE NOT NULL 
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Utente;
CREATE TABLE Utente (

	CF				VARCHAR(16) PRIMARY KEY ,
	Nome			VARCHAR(15) NOT NULL ,
	Cognome		   	VARCHAR(15) NOT NULL ,
	Data_nascita	DATE NOT NULL ,
	Provincia		VARCHAR(15) NOT NULL ,
	Citta			VARCHAR(15) NOT NULL ,
	Indirizzo		VARCHAR(20) NOT NULL ,
	Telefono		CHAR(15) , 
	ID		  		VARCHAR(15) ,
	Pass			VARCHAR(15) ,
	Tessera 		VARCHAR(8),

	FOREIGN KEY (Tessera) REFERENCES Tessera(Id_tessera)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Impiegato;
CREATE TABLE Impiegato (

	CF						VARCHAR(16) PRIMARY KEY ,
	Nome					VARCHAR(15) NOT NULL ,
	Cognome		   			VARCHAR(15) NOT NULL ,
	Data_nascita			DATE NOT NULL ,
	Provincia				VARCHAR(15) NOT NULL ,
	Citta					VARCHAR(15) NOT NULL ,
	Indirizzo				VARCHAR(20) NOT NULL ,
	Telefono				CHAR(15) ,
	Stipendio				INT NOT NULL ,
	Data_inizio				DATE NOT NULL ,
	Indirizzo_biglietteria 	VARCHAR(20) ,
	Comune_biglietteria  	VARCHAR(15) ,
	
	FOREIGN KEY (Indirizzo_biglietteria, Comune_biglietteria) REFERENCES Biglietteria(Indirizzo, Comune)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Biglietteria;
CREATE TABLE Biglietteria (

	Indirizzo		VARCHAR(20) ,
	Comune			VARCHAR(15) ,
	Nome			VARCHAR(15) ,
	Telefono		VARCHAR(15) NOT NULL,
	CF_responsabile VARCHAR(16) ,
	
	PRIMARY KEY (Indirizzo, Comune) ,
	FOREIGN KEY (CF_responsabile) REFERENCES Impiegato(CF)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Biglietto;
CREATE TABLE Biglietto (

	Id_biglietto    		VARCHAR(15) PRIMARY KEY ,
	Data_emissione			TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	Prezzo					INT NOT NULL ,
	Validita				INT NOT NULL ,
	Tipo					VARCHAR(10) NOT NULL ,
	Sconto					INT NOT NULL ,	
	CF_utente 				VARCHAR(16) ,
	Indirizzo_biglietteria 	VARCHAR(20) ,
	Comune_biglietteria 	VARCHAR(15) ,
		
	FOREIGN KEY (CF_utente) REFERENCES Utente(CF) ,
	FOREIGN KEY (Indirizzo_biglietteria, Comune_biglietteria) REFERENCES Biglietteria(Indirizzo, Comune)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Abbonamento;
CREATE TABLE Abbonamento (

	Id_abbonamento  		VARCHAR(15) PRIMARY KEY ,
	Data_sottoscrizione	 	DATE NOT NULL ,
	Data_inizio			 	DATE NOT NULL ,
	Tipo             		VARCHAR(10) NOT NULL ,
	Sconto			 	 	INT NOT NULL ,
	Tipo_tariffa 			VARCHAR(15) NOT NULL,
	Periodo_tariffa 		INT NOT NULL,
	Linea_tariffa 			VARCHAR(15) , 
	Indirizzo_biglietteria 	VARCHAR(20) ,
	Comune_biglietteria 	VARCHAR(15) ,
	Tessera 				VARCHAR(8) , 

	FOREIGN KEY (Tessera) REFERENCES Tessera(Id_tessera) , 
	FOREIGN KEY (Tipo_tariffa, Periodo_tariffa, Linea_tariffa) REFERENCES Tariffa(Tipo, Periodo, Linea),
	FOREIGN KEY (Indirizzo_biglietteria, Comune_biglietteria) REFERENCES Biglietteria(Indirizzo, Comune)	
	
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Tariffa;
CREATE TABLE Tariffa (

	Tipo 		VARCHAR(15),
	Periodo 	INT,
	Linea 		VARCHAR(15),
	Prezzo 		INT NOT NULL DEFAULT 0 ,
	
	FOREIGN KEY (Tipo) REFERENCES Tipo(Id_tipo) ,
	FOREIGN KEY (Periodo) REFERENCES Periodo(Id_periodo) ,
	FOREIGN KEY (Linea) REFERENCES Linea(Id_linea) ,

	PRIMARY KEY (Tipo, Periodo, Linea)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Tipo;
CREATE TABLE Tipo (

	Id_tipo 	VARCHAR(15) PRIMARY KEY ,
	Nome 		VARCHAR(15) NOT NULL ,
	Descrizione	VARCHAR(500)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Periodo;
CREATE TABLE Periodo (

	Id_periodo  INT PRIMARY KEY ,
	Nome		VARCHAR(15) NOT NULL ,
	Descrizione	VARCHAR(500)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Linea;
CREATE TABLE Linea (

    Id_linea  			VARCHAR(15) PRIMARY KEY ,
	Nome_linea			VARCHAR(15) NOT NULL ,
	Indirizzo_partenza 	VARCHAR(15) NOT NULL , 
	Comune_partenza 	VARCHAR(15) NOT NULL ,
	Indirizzo_arrivo 	VARCHAR(15) NOT NULL , 
	Comune_arrivo 		VARCHAR(15) NOT NULL , 
	
	FOREIGN KEY (Indirizzo_Partenza, Comune_Partenza) REFERENCES Fermata(Indirizzo, Comune) ,
	FOREIGN KEY (Indirizzo_Arrivo, Comune_Arrivo) REFERENCES Fermata(Indirizzo, Comune)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Tratta;
CREATE TABLE Tratta (

    IndirizzoFermata 	VARCHAR(20) ,
    ComuneFermata 		VARCHAR(15) ,
	Linea 				VARCHAR(15) ,

	FOREIGN KEY (Linea) REFERENCES Linea(Id_linea),
	PRIMARY KEY (IndirizzoFermata, ComuneFermata, Linea) ,
	FOREIGN KEY (IndirizzoFermata, ComuneFermata) REFERENCES Fermata(Indirizzo, Comune)
		
) ENGINE=InnoDB;

DROP TABLE IF EXISTS Fermata;
CREATE TABLE Fermata (

    Indirizzo 	VARCHAR(20) ,
    Comune 		VARCHAR(15) ,
    
    PRIMARY KEY (Indirizzo, Comune) 

) ENGINE=InnoDB;

SET FOREIGN_KEY_CHECKS=1;
