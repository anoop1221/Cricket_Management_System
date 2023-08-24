CREATE TABLE TEAM (
  team_id VARCHAR2(30) PRIMARY KEY,
  team_rank NUMBER(3),
  team_name VARCHAR2(20) NOT NULL,
  country_name VARCHAR2(20),
  no_of_wins NUMBER(3),
  no_of_losses NUMBER(3),
  no_of_draws NUMBER(3),
  no_of_bowlers NUMBER(2),
  no_of_batsmen NUMBER(2),
  wicket_keeper VARCHAR(20)
);

CREATE TABLE UMPIRE (
  umpire_id VARCHAR2(30) PRIMARY KEY,
  umpire_name VARCHAR2(30),
  no_of_matches NUMBER(4),
  country VARCHAR2(20)
);

CREATE TABLE PLAYER (
  player_id VARCHAR2(30) PRIMARY KEY,
  Player_name VARCHAR2(30),
  team_id VARCHAR2(30) NOT NULL,
  no_of_matches NUMBER(3),
  no_of_t20 NUMBER(3),
  no_of_odi NUMBER(3),
  no_of_test NUMBER(3),
  no_of_wickets NUMBER(2),
  type_of_bowler VARCHAR2(30),
  economy NUMBER(5, 2),
  FOREIGN KEY (team_id) REFERENCES TEAM(team_id)
);

CREATE TABLE MATCHES (
  match_id VARCHAR2(20) PRIMARY KEY,
  match_date DATE,
  match_time TIMESTAMP,
  team_1_name VARCHAR2(30),
  team_2_name VARCHAR2(30),
  loser VARCHAR2(30),
  winner VARCHAR2(30),
  stadium VARCHAR2(30),
  umpire_id VARCHAR2(30) NOT NULL,
  FOREIGN KEY (umpire_id) REFERENCES UMPIRE(umpire_id)
);

CREATE TABLE COACH (
  coach_id VARCHAR2(30) PRIMARY KEY,
  team_id VARCHAR2(30) NOT NULL,
  coach_name VARCHAR2(30),
  FOREIGN KEY (team_id) REFERENCES TEAM(team_id)
);

CREATE TABLE PLAYS (
  match_id VARCHAR2(30) NOT NULL,
  team_id VARCHAR2(30) NOT NULL,
  FOREIGN KEY (match_id) REFERENCES MATCHES(match_id),
  FOREIGN KEY (team_id) REFERENCES TEAM(team_id)
);

CREATE TABLE CAPTAIN (
  captain_id VARCHAR2(30) PRIMARY KEY,
  captain_name VARCHAR2(30),
  team_id VARCHAR2(30) NOT NULL,
  player_id VARCHAR2(30) NOT NULL,
  year_of_captaincy NUMBER(2),
  no_of_wins NUMBER(4),
  FOREIGN KEY (team_id) REFERENCES TEAM(team_id),
  FOREIGN KEY (player_id) REFERENCES PLAYER(player_id)
);


CREATE TABLE UMPIRED_BY( 
 match_id VARCHAR(30), 
 umpire_id VARCHAR(30) 
);
alter table umpired_by add foreign key(match_id) references matches(match_id); 
alter table umpired_by add foreign key(umpire_id) references umpire(umpire_id); 
