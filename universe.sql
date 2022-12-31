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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    galaxy_types character varying(20),
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_planet_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_planet_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: haha; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.haha (
    haha_id integer NOT NULL,
    name character varying(30) NOT NULL,
    haha3 integer
);


ALTER TABLE public.haha OWNER TO freecodecamp;

--
-- Name: haha_haha_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.haha_haha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.haha_haha_id_seq OWNER TO freecodecamp;

--
-- Name: haha_haha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.haha_haha_id_seq OWNED BY public.haha.haha_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    makeup text
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
    name character varying(20) NOT NULL,
    has_life boolean,
    planet_types character varying(15),
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric(8,6) NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_planet_id_seq'::regclass);


--
-- Name: haha haha_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.haha ALTER COLUMN haha_id SET DEFAULT nextval('public.haha_haha_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, 'SA(s)b', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', NULL, 'SA(s)cd', NULL);
INSERT INTO public.galaxy VALUES (4, 'A', NULL, 'A', NULL);
INSERT INTO public.galaxy VALUES (5, 'B', NULL, 'B', NULL);
INSERT INTO public.galaxy VALUES (6, 'C', NULL, 'C', NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 'SB(rs)bc', 13610);


--
-- Data for Name: haha; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.haha VALUES (1, '1', 1);
INSERT INTO public.haha VALUES (2, '2', 2);
INSERT INTO public.haha VALUES (3, '3', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Cordelia', false, 7, NULL);
INSERT INTO public.moon VALUES (2, 'Ophelia', false, 7, NULL);
INSERT INTO public.moon VALUES (3, 'Bianca', false, 7, NULL);
INSERT INTO public.moon VALUES (4, 'Cressida', false, 7, NULL);
INSERT INTO public.moon VALUES (5, 'Desdemona', false, 7, NULL);
INSERT INTO public.moon VALUES (6, 'Juliet', false, 7, NULL);
INSERT INTO public.moon VALUES (7, 'Portia', false, 7, NULL);
INSERT INTO public.moon VALUES (8, 'Rosaland', false, 7, NULL);
INSERT INTO public.moon VALUES (9, 'Cupid', false, 7, NULL);
INSERT INTO public.moon VALUES (10, 'Belinda', false, 7, NULL);
INSERT INTO public.moon VALUES (12, 'Puck', false, 7, NULL);
INSERT INTO public.moon VALUES (13, 'Mab', false, 7, NULL);
INSERT INTO public.moon VALUES (14, 'Mirannda', false, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', false, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', false, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', false, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', false, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Francisco', false, 7, NULL);
INSERT INTO public.moon VALUES (11, 'Perdita', false, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Caliban', false, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 'terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 'terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'terrestrail', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'gas giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'gas giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'ice giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'ice giant', 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', false, 'super-Earth', 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', false, 'super-Earth', 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', false, 'super-Earth', 2);
INSERT INTO public.planet VALUES (12, 'Luyten b', false, 'super-Earth', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4853, 'Red Dwarf', 1, 4.244000);
INSERT INTO public.star VALUES (1, 'Sun', 4571, 'Yellow Dwarf', 1, 0.000016);
INSERT INTO public.star VALUES (3, 'Lalande 21185', 8047, 'Red Dwarf', 1, 8.304400);
INSERT INTO public.star VALUES (4, 'Lacaille 9352', 4570, 'Red Dwarf', 1, 10.721000);
INSERT INTO public.star VALUES (5, 'Luyten''s Star', NULL, 'Red Dwarf', 1, 11.200000);
INSERT INTO public.star VALUES (6, 'YZ Ceti', 4000, 'Red Dwarf', 1, 11.740000);


--
-- Name: galaxy_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_planet_id_seq', 6, true);


--
-- Name: haha_haha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.haha_haha_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: haha haha_haha2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.haha
    ADD CONSTRAINT haha_haha2_key UNIQUE (name);


--
-- Name: haha haha_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.haha
    ADD CONSTRAINT haha_pkey PRIMARY KEY (haha_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--