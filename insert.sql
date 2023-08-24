delete player;
delete coach;
delete plays;
delete captain;
delete team;
delete umpired_by;
delete matches;
delete umpire;

-- Inserting data into TEAM table
INSERT INTO TEAM VALUES('IND1221', 1, 'MEN IN BLUE','INDIA', 5, 1, 0, 6, 7,'MS DHONI'); 
INSERT INTO TEAM VALUES ('NZ5687', 2, 'BLACK CAPS','NEW ZEALAND', 4, 2, 0, 6, 7,'ROSS TAYLOR');
INSERT INTO TEAM VALUES('SA5412', 3, 'PROTEA','SOUTH AFRICA', 3, 2, 1, 8, 5,'OTTIS GIBSON');  
INSERT INTO TEAM VALUES('AUS2174', 4, 'KANGAROO','AUSTRALIA', 3, 3, 0, 5, 6,'JUSTIN LANGER'); 
INSERT INTO TEAM VALUES('BAN9852', 5, 'TIGERS','BANGLADESH', 2, 4 , 0, 7, 7,'TAMIM IQBAL'); 



-- Inserting data into UMPIRE table
INSERT INTO UMPIRE VALUES ('UMP41002', 'Kumar Dharmasena', 103, 'Sri Lanka'); 
INSERT INTO UMPIRE VALUES ('UMP74101', 'Aleem Dar', 207, 'Pakistan'); 
INSERT INTO UMPIRE VALUES ('Ump52410', 'Anil Chaudhary', 19, 'India'); 
INSERT INTO UMPIRE VALUES ('UMP85201', 'Ian Gould', 140, 'England'); 
INSERT INTO UMPIRE VALUES ('UMP55200', 'Tony Hill', 96, 'New Zealand');


-- Inserting data into PLAYER table
INSERT INTO PLAYER VALUES ('PLR17410','MS DHONI','IND1221',13,74,120,20,1,'medium',3.2); 
INSERT INTO PLAYER VALUES ('PLR74203','MICHAEL CLARKE', 'AUS2174',6,41,210,140 ,1,'slow',8.5); 
INSERT INTO PLAYER VALUES ('PLR45987', 'DALE STEYN','SA5412', 4, 24,63,65,1,'medium-slow',11.2); 
INSERT INTO PLAYER VALUES ('PLR20147', 'ROSS TAYLOR','NZ5687',12,52 ,10,74,1,'legspin',18.3); 
INSERT INTO PLAYER VALUES ('PLR65200', 'TAMIM IQBAL','BAN9852',9,77, 30,2,1,'fast',17.3); 
INSERT INTO PLAYER VALUES ('PLR75401','SACHIN TENDULKAR','IND1221', 11,56, 23,5,7,'fast',17.3); 


-- Inserting data into MATCHES table
INSERT INTO MATCHES VALUES ('MAT101', TO_DATE('2011-03-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2011-03-12 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'India', 'Bangladesh', 'Bangladesh', 'India', 'Feroz Shah Kotla', 'UMP55200');

INSERT INTO MATCHES VALUES ('MAT201', TO_DATE('2011-03-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2011-03-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'England', 'Australia', 'England', 'Australia', 'Eden Gardens', 'UMP41002');

INSERT INTO MATCHES VALUES ('MAT301', TO_DATE('2011-03-21', 'YYYY-MM-DD'), TO_TIMESTAMP('2011-03-21 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Sri Lanka', 'Bangladesh', 'Bangladesh', 'Sri Lanka', 'M.A. Chidambaram', 'UMP74101');

INSERT INTO MATCHES VALUES ('MAT401', TO_DATE('2011-03-23', 'YYYY-MM-DD'), TO_TIMESTAMP('2011-03-23 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'New Zealand', 'South Africa', 'South Africa', 'New Zealand', 'Sardar Patel', 'UMP85201');

INSERT INTO MATCHES VALUES ('MAT501', TO_DATE('2011-03-26', 'YYYY-MM-DD'), TO_TIMESTAMP('2011-03-26 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'England', 'India', 'England', 'India', 'Wankhede', 'Ump52410');


-- Inserting data into COACH table
INSERT INTO COACH VALUES('CH417', 'IND1221', 'RAVI SHASTRI'); 
INSERT INTO COACH VALUES('CH140', 'AUS2174', 'JUSTIN LANGER'); 
INSERT INTO COACH VALUES('CH223', 'SA5412', 'OTTIS GIBSON'); 
INSERT INTO COACH VALUES('CH398', 'NZ5687', 'GARY STEAD'); 
INSERT INTO COACH VALUES('CH748', 'BAN9852', 'RUSSEL DOMINGO'); 
INSERT INTO COACH VALUES('CH596', 'IND1221', 'GARY KISTERN');

-- Inserting data into PLAYS table
INSERT INTO PLAYS VALUES('MAT101','IND1221'); 
INSERT INTO PLAYS VALUES('MAT401','NZ5687'); 
INSERT INTO PLAYS VALUES('MAT501','SA5412');
INSERT INTO PLAYS VALUES('MAT201','AUS2174'); 
INSERT INTO PLAYS VALUES('MAT301','BAN9852'); 


-- Inserting data into CAPTAIN table
INSERT INTO CAPTAIN VALUES('CAP11452', 'MS DHONI', 'IND1221', 'PLR17410', 4, 56);
INSERT INTO CAPTAIN VALUES('CAP36957', 'ROSS TAYLOR', 'NZ5687', 'PLR20147', 5, 85);
INSERT INTO CAPTAIN VALUES('CAP21478', 'DALE STEYN', 'SA5412', 'PLR45987', 7, 74);
INSERT INTO CAPTAIN VALUES('CAP30214', 'MICHAEL CLARKE', 'AUS2174', 'PLR74203', 9, 100);
INSERT INTO CAPTAIN VALUES('CAP14789', 'TAMIM IQBAL', 'BAN9852', 'PLR65200', 2, 20);



-- Inserting data into UMPIRED_BY table
INSERT INTO UMPIRED_BY VALUES('MAT501','UMP55200'); 
INSERT INTO UMPIRED_BY VALUES('MAT301','Ump52410');
INSERT INTO UMPIRED_BY VALUES('MAT101','UMP41002'); 
INSERT INTO UMPIRED_BY VALUES('MAT401','UMP74101'); 
INSERT INTO UMPIRED_BY VALUES('MAT201','Ump52410');