-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE tournament;
CREATE DATABASE tournament;

\c tournament;

DROP TABLE IF EXISTS Players;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS TournamentMembers;
DROP TABLE IF EXISTS Rules;

CREATE TABLE Players (
--     Column |  Type   |                       Modifiers
--    --------+---------+-------------------------------------------------------
--     pid    | integer | not null default nextval('players_pid_seq'::regclass)
--     name   | text    |
--    Indexes:
--       "players_pkey" PRIMARY KEY, btree (pid)
	pid		serial PRIMARY KEY,
	name	text
);

CREATE TABLE Matches (
--     	  Column   |         Type         |                       Modifiers
--     ------------+----------------------+-------------------------------------------------------
--      mid        | integer              | not null default nextval('matches_mid_seq'::regclass)
--      player1    | integer              |
--      player2    | integer              |
--      result     | character varying(1) |
--      tournament | integer              |
--     Indexes:
--         "matches_pkey" PRIMARY KEY, btree (mid)
	mid			serial PRIMARY KEY,
	player1		integer, -- id of the player
	p1points	integer,
	player2		integer, -- id of the player
	p2points	integer,
	tournament	integer
);

CREATE TABLE TournamentMembers (
--      Column |  Type   | Modifiers
--     --------+---------+-----------
--      tid    | integer |
--      pid    | integer |
	tid		integer,
	pid		integer 
);
