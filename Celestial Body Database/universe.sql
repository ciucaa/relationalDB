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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: belts; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.belts (
    name character varying(20) NOT NULL,
    belts_id integer NOT NULL,
    diameter integer
);


ALTER TABLE public.belts OWNER TO freecodecamp;

--
-- Name: belts_belts_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.belts_belts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.belts_belts_id_seq OWNER TO freecodecamp;

--
-- Name: belts_belts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.belts_belts_id_seq OWNED BY public.belts.belts_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance integer NOT NULL,
    size integer NOT NULL,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    mass numeric NOT NULL,
    volume numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age numeric NOT NULL,
    size integer NOT NULL,
    moon boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age integer NOT NULL,
    size integer NOT NULL,
    planet boolean,
    galaxy_id integer NOT NULL,
    constellation text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: belts belts_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.belts ALTER COLUMN belts_id SET DEFAULT nextval('public.belts_belts_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: belts; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.belts VALUES ('Asteroid Belt', 1, NULL);
INSERT INTO public.belts VALUES ('Kuyper Belt', 2, NULL);
INSERT INTO public.belts VALUES ('Oort Cloud', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2500000, 220000, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Cigar', 11500000, 37000, 'starburst');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 0, 100000, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 20870000, 170000, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29350000, 50000, 'unknown');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 30000000, 60000, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 7.34, 2.19, 15);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.00001, 0.005, 16);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.0000001, 0.0009, 16);
INSERT INTO public.moon VALUES (4, 'Io', 0.8, 0.2, 17);
INSERT INTO public.moon VALUES (5, 'Europa', 0.4, 0.1, 17);
INSERT INTO public.moon VALUES (6, 'Ganymede', 14, 7.6, 17);
INSERT INTO public.moon VALUES (7, 'Callisto', 10, 6.1, 17);
INSERT INTO public.moon VALUES (8, 'Mimas', 0.04, 0.3, 18);
INSERT INTO public.moon VALUES (9, 'Enceladus', 0.1, 0.5, 18);
INSERT INTO public.moon VALUES (10, 'Tethys', 1, 0.6, 18);
INSERT INTO public.moon VALUES (11, 'Dione', 2.2, 0.02, 18);
INSERT INTO public.moon VALUES (12, 'Rhea', 0.1, 4.4, 18);
INSERT INTO public.moon VALUES (13, 'Titan', 734, 312, 18);
INSERT INTO public.moon VALUES (14, 'Iapetus', 1.2, 1.01, 18);
INSERT INTO public.moon VALUES (15, 'Triton', 0.02, 0.002, 19);
INSERT INTO public.moon VALUES (16, 'Nereid', 0.0003, 0.0004, 19);
INSERT INTO public.moon VALUES (17, 'Halimede', 0.00012, 0.00018, 19);
INSERT INTO public.moon VALUES (18, 'Sao', 0.00010, 0.004, 19);
INSERT INTO public.moon VALUES (19, 'Laomedeia', 0.0004, 0.0001, 19);
INSERT INTO public.moon VALUES (20, 'Miranda', 0.0064, 0.004, 20);
INSERT INTO public.moon VALUES (21, 'Oberon', 0.03, 0.01, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 4, 6, false, 3);
INSERT INTO public.planet VALUES (14, 'Venus', 4, 9, false, 3);
INSERT INTO public.planet VALUES (15, 'Earth', 4, 10, true, 3);
INSERT INTO public.planet VALUES (16, 'Mars', 4, 1, true, 3);
INSERT INTO public.planet VALUES (17, 'Jupiter', 4, 14000, true, 3);
INSERT INTO public.planet VALUES (18, 'Saturn', 4, 8200, true, 3);
INSERT INTO public.planet VALUES (19, 'Neptune', 4, 625, true, 3);
INSERT INTO public.planet VALUES (20, 'Uranus', 4, 683, true, 3);
INSERT INTO public.planet VALUES (21, 'Pluto', 4, 0, false, 3);
INSERT INTO public.planet VALUES (22, 'Gamma Cephei Ab', 3, 9, false, 2);
INSERT INTO public.planet VALUES (23, '51 Pegasi b', 6, 1, false, 2);
INSERT INTO public.planet VALUES (24, 'Ceres', 4, 1, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 242, 2, false, 3, 'Canis Major');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8, 17, false, 3, 'Orion');
INSERT INTO public.star VALUES (3, 'Sun', 5, 2, true, 3, NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 8, 78, false, 3, 'Orion');
INSERT INTO public.star VALUES (5, 'Antares', 15, 680, false, 3, 'Scorpius');
INSERT INTO public.star VALUES (6, 'Vega', 455, 2, false, 3, 'Lyra');


--
-- Name: belts_belts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.belts_belts_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: belts belts_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.belts
    ADD CONSTRAINT belts_diameter_key UNIQUE (diameter);


--
-- Name: belts belts_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.belts
    ADD CONSTRAINT belts_pkey PRIMARY KEY (belts_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
