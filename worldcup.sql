--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (85, 2018, 'Final', 217, 218, 4, 2);
INSERT INTO public.games VALUES (86, 2018, 'Third Place', 219, 220, 2, 0);
INSERT INTO public.games VALUES (87, 2018, 'Semi-Final', 218, 220, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Semi-Final', 217, 219, 1, 0);
INSERT INTO public.games VALUES (89, 2018, 'Quarter-Final', 218, 221, 3, 2);
INSERT INTO public.games VALUES (90, 2018, 'Quarter-Final', 220, 222, 2, 0);
INSERT INTO public.games VALUES (91, 2018, 'Quarter-Final', 219, 223, 2, 1);
INSERT INTO public.games VALUES (92, 2018, 'Quarter-Final', 217, 224, 2, 0);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 220, 225, 2, 1);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 222, 226, 1, 0);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 219, 227, 3, 2);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 223, 228, 2, 0);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 218, 229, 2, 1);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 221, 230, 2, 1);
INSERT INTO public.games VALUES (99, 2018, 'Eighth-Final', 224, 231, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Eighth-Final', 217, 232, 4, 3);
INSERT INTO public.games VALUES (101, 2014, 'Final', 233, 232, 1, 0);
INSERT INTO public.games VALUES (102, 2014, 'Third Place', 234, 223, 3, 0);
INSERT INTO public.games VALUES (103, 2014, 'Semi-Final', 232, 234, 1, 0);
INSERT INTO public.games VALUES (104, 2014, 'Semi-Final', 233, 223, 7, 1);
INSERT INTO public.games VALUES (105, 2014, 'Quarter-Final', 234, 235, 1, 0);
INSERT INTO public.games VALUES (106, 2014, 'Quarter-Final', 232, 219, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Quarter-Final', 223, 225, 2, 1);
INSERT INTO public.games VALUES (108, 2014, 'Quarter-Final', 233, 217, 1, 0);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 223, 236, 2, 1);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 225, 224, 2, 0);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 217, 237, 2, 0);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 233, 238, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 234, 228, 2, 1);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 235, 239, 2, 1);
INSERT INTO public.games VALUES (115, 2014, 'Eighth-Final', 232, 226, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Eighth-Final', 219, 240, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (217, 'France');
INSERT INTO public.teams VALUES (218, 'Croatia');
INSERT INTO public.teams VALUES (219, 'Belgium');
INSERT INTO public.teams VALUES (220, 'England');
INSERT INTO public.teams VALUES (221, 'Russia');
INSERT INTO public.teams VALUES (222, 'Sweden');
INSERT INTO public.teams VALUES (223, 'Brazil');
INSERT INTO public.teams VALUES (224, 'Uruguay');
INSERT INTO public.teams VALUES (225, 'Colombia');
INSERT INTO public.teams VALUES (226, 'Switzerland');
INSERT INTO public.teams VALUES (227, 'Japan');
INSERT INTO public.teams VALUES (228, 'Mexico');
INSERT INTO public.teams VALUES (229, 'Denmark');
INSERT INTO public.teams VALUES (230, 'Spain');
INSERT INTO public.teams VALUES (231, 'Portugal');
INSERT INTO public.teams VALUES (232, 'Argentina');
INSERT INTO public.teams VALUES (233, 'Germany');
INSERT INTO public.teams VALUES (234, 'Netherlands');
INSERT INTO public.teams VALUES (235, 'Costa Rica');
INSERT INTO public.teams VALUES (236, 'Chile');
INSERT INTO public.teams VALUES (237, 'Nigeria');
INSERT INTO public.teams VALUES (238, 'Algeria');
INSERT INTO public.teams VALUES (239, 'Greece');
INSERT INTO public.teams VALUES (240, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 116, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 240, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

