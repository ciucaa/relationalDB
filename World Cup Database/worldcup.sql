-
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
    year integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    round character varying(20) NOT NULL
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (83, 2018, 4, 2, 732, 733, 'Final');
INSERT INTO public.games VALUES (84, 2018, 2, 0, 734, 735, 'Third Place');
INSERT INTO public.games VALUES (85, 2018, 2, 1, 733, 735, 'Semi-Final');
INSERT INTO public.games VALUES (86, 2018, 1, 0, 732, 734, 'Semi-Final');
INSERT INTO public.games VALUES (87, 2018, 3, 2, 733, 736, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 2018, 2, 0, 735, 737, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 2018, 2, 1, 734, 738, 'Quarter-Final');
INSERT INTO public.games VALUES (90, 2018, 2, 0, 732, 739, 'Quarter-Final');
INSERT INTO public.games VALUES (91, 2018, 2, 1, 735, 740, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 2018, 1, 0, 737, 741, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 2018, 3, 2, 734, 742, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 2018, 2, 0, 738, 743, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 2018, 2, 1, 733, 744, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 2018, 2, 1, 736, 745, 'Eighth-Final');
INSERT INTO public.games VALUES (97, 2018, 2, 1, 739, 746, 'Eighth-Final');
INSERT INTO public.games VALUES (98, 2018, 4, 3, 732, 747, 'Eighth-Final');
INSERT INTO public.games VALUES (99, 2014, 1, 0, 748, 747, 'Final');
INSERT INTO public.games VALUES (100, 2014, 3, 0, 749, 738, 'Third Place');
INSERT INTO public.games VALUES (101, 2014, 1, 0, 747, 749, 'Semi-Final');
INSERT INTO public.games VALUES (102, 2014, 7, 1, 748, 738, 'Semi-Final');
INSERT INTO public.games VALUES (103, 2014, 1, 0, 749, 750, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 2014, 1, 0, 747, 734, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 2014, 2, 1, 738, 740, 'Quarter-Final');
INSERT INTO public.games VALUES (106, 2014, 1, 0, 748, 732, 'Quarter-Final');
INSERT INTO public.games VALUES (107, 2014, 2, 1, 738, 751, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 2014, 2, 0, 740, 739, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 2014, 2, 0, 732, 752, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 2014, 2, 1, 748, 753, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 2014, 2, 1, 749, 743, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 2014, 2, 1, 750, 754, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 2014, 1, 0, 747, 741, 'Eighth-Final');
INSERT INTO public.games VALUES (114, 2014, 2, 1, 734, 755, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (732, 'France');
INSERT INTO public.teams VALUES (733, 'Croatia');
INSERT INTO public.teams VALUES (734, 'Belgium');
INSERT INTO public.teams VALUES (735, 'England');
INSERT INTO public.teams VALUES (736, 'Russia');
INSERT INTO public.teams VALUES (737, 'Sweden');
INSERT INTO public.teams VALUES (738, 'Brazil');
INSERT INTO public.teams VALUES (739, 'Uruguay');
INSERT INTO public.teams VALUES (740, 'Colombia');
INSERT INTO public.teams VALUES (741, 'Switzerland');
INSERT INTO public.teams VALUES (742, 'Japan');
INSERT INTO public.teams VALUES (743, 'Mexico');
INSERT INTO public.teams VALUES (744, 'Denmark');
INSERT INTO public.teams VALUES (745, 'Spain');
INSERT INTO public.teams VALUES (746, 'Portugal');
INSERT INTO public.teams VALUES (747, 'Argentina');
INSERT INTO public.teams VALUES (748, 'Germany');
INSERT INTO public.teams VALUES (749, 'Netherlands');
INSERT INTO public.teams VALUES (750, 'Costa Rica');
INSERT INTO public.teams VALUES (751, 'Chile');
INSERT INTO public.teams VALUES (752, 'Nigeria');
INSERT INTO public.teams VALUES (753, 'Algeria');
INSERT INTO public.teams VALUES (754, 'Greece');
INSERT INTO public.teams VALUES (755, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 114, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 755, true);


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

