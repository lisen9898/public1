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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (62, 'user_1676291566514', 2, 76);
INSERT INTO public.users VALUES (52, 'user_1676290856706', 2, 117);
INSERT INTO public.users VALUES (51, 'user_1676290856707', 5, 186);
INSERT INTO public.users VALUES (61, 'user_1676291566515', 5, 397);
INSERT INTO public.users VALUES (74, 'user_1676291702720', 2, 65);
INSERT INTO public.users VALUES (54, 'user_1676290927626', 2, 402);
INSERT INTO public.users VALUES (73, 'user_1676291702721', 5, 695);
INSERT INTO public.users VALUES (53, 'user_1676290927627', 5, 573);
INSERT INTO public.users VALUES (50, 'haha', 3, 1);
INSERT INTO public.users VALUES (64, 'user_1676291590193', 2, 249);
INSERT INTO public.users VALUES (56, 'user_1676291033566', 2, 585);
INSERT INTO public.users VALUES (63, 'user_1676291590194', 5, 87);
INSERT INTO public.users VALUES (55, 'user_1676291033567', 5, 367);
INSERT INTO public.users VALUES (76, 'user_1676291742540', 2, 293);
INSERT INTO public.users VALUES (75, 'user_1676291742541', 5, 61);
INSERT INTO public.users VALUES (58, 'user_1676291074665', 2, 168);
INSERT INTO public.users VALUES (57, 'user_1676291074666', 5, 37);
INSERT INTO public.users VALUES (66, 'user_1676291598953', 2, 213);
INSERT INTO public.users VALUES (65, 'user_1676291598954', 5, 3);
INSERT INTO public.users VALUES (60, 'user_1676291201930', 2, 238);
INSERT INTO public.users VALUES (59, 'user_1676291201931', 5, 110);
INSERT INTO public.users VALUES (68, 'user_1676291608851', 2, 444);
INSERT INTO public.users VALUES (67, 'user_1676291608852', 5, 150);
INSERT INTO public.users VALUES (70, 'user_1676291626028', 2, 653);
INSERT INTO public.users VALUES (69, 'user_1676291626029', 5, 28);
INSERT INTO public.users VALUES (72, 'user_1676291636750', 2, 116);
INSERT INTO public.users VALUES (71, 'user_1676291636751', 5, 265);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 76, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

