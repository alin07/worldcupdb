--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_id_seq OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 25, 26, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 27, 28, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 26, 28, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 25, 27, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 26, 29, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 28, 30, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 27, 31, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 25, 32, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 28, 33, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 30, 34, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 27, 35, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 31, 36, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 26, 37, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 29, 38, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 32, 39, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 25, 40, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 41, 40, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 42, 31, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 40, 42, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 41, 31, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 42, 43, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 40, 27, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 31, 33, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 41, 25, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 31, 44, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 33, 32, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 25, 45, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 41, 46, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 42, 36, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 43, 47, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 40, 34, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 27, 48, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'France');
INSERT INTO public.teams VALUES (26, 'Croatia');
INSERT INTO public.teams VALUES (27, 'Belgium');
INSERT INTO public.teams VALUES (28, 'England');
INSERT INTO public.teams VALUES (29, 'Russia');
INSERT INTO public.teams VALUES (30, 'Sweden');
INSERT INTO public.teams VALUES (31, 'Brazil');
INSERT INTO public.teams VALUES (32, 'Uruguay');
INSERT INTO public.teams VALUES (33, 'Colombia');
INSERT INTO public.teams VALUES (34, 'Switzerland');
INSERT INTO public.teams VALUES (35, 'Japan');
INSERT INTO public.teams VALUES (36, 'Mexico');
INSERT INTO public.teams VALUES (37, 'Denmark');
INSERT INTO public.teams VALUES (38, 'Spain');
INSERT INTO public.teams VALUES (39, 'Portugal');
INSERT INTO public.teams VALUES (40, 'Argentina');
INSERT INTO public.teams VALUES (41, 'Germany');
INSERT INTO public.teams VALUES (42, 'Netherlands');
INSERT INTO public.teams VALUES (43, 'Costa Rica');
INSERT INTO public.teams VALUES (44, 'Chile');
INSERT INTO public.teams VALUES (45, 'Nigeria');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (47, 'Greece');
INSERT INTO public.teams VALUES (48, 'United States');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 96, true);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_team_id_seq', 48, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: teams team_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: games game_opponent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_opponent_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games game_winner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_winner_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

