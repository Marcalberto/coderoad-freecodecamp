--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    star_id integer,
    planet_id integer,
    ufo_id integer,
    name character varying(19) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    craters integer,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    colore text,
    name character varying(19)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    water boolean NOT NULL,
    species integer,
    star_id integer,
    name character varying(19)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    planet boolean,
    weight numeric(5,3),
    galaxy_id integer,
    name character varying(19) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: ufo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ufo (
    ufo_id integer NOT NULL,
    color character varying(10),
    pericolo boolean NOT NULL,
    name character varying(19) NOT NULL
);


ALTER TABLE public.ufo OWNER TO freecodecamp;

--
-- Name: ufo_id_ufo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ufo_id_ufo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ufo_id_ufo_seq OWNER TO freecodecamp;

--
-- Name: ufo_id_ufo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ufo_id_ufo_seq OWNED BY public.ufo.ufo_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Name: ufo ufo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo ALTER COLUMN ufo_id SET DEFAULT nextval('public.ufo_id_ufo_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 'Alfa');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'Beta');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 'Gamma');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'Deltaa');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'Epsilon');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'Fi');
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, 'Gheta');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (39, 0, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (40, 241, 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES (41, 23, 4, 3, NULL, NULL);
INSERT INTO public.moon VALUES (42, 234, 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (43, 112, 10, 4, NULL, NULL);
INSERT INTO public.moon VALUES (45, 0, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (46, 241, 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES (47, 23, 4, 3, NULL, NULL);
INSERT INTO public.moon VALUES (48, 234, 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (49, 112, 10, 3, NULL, NULL);
INSERT INTO public.moon VALUES (50, 0, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (51, 241, 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES (52, 23, 4, 3, NULL, NULL);
INSERT INTO public.moon VALUES (53, 234, 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (54, 112, 10, 3, NULL, NULL);
INSERT INTO public.moon VALUES (55, 0, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (56, 241, 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES (57, 23, 4, 3, NULL, NULL);
INSERT INTO public.moon VALUES (58, 234, 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (59, 112, 10, 3, NULL, NULL);
INSERT INTO public.moon VALUES (60, 0, 3, 1, NULL, NULL);
INSERT INTO public.moon VALUES (61, 241, 2, 5, NULL, NULL);
INSERT INTO public.moon VALUES (62, 23, 4, 3, NULL, NULL);
INSERT INTO public.moon VALUES (63, 234, 1, 2, NULL, NULL);
INSERT INTO public.moon VALUES (64, 112, 10, 3, NULL, NULL);
INSERT INTO public.moon VALUES (100, 12, 2, 2, 'Red', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, true, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, false, NULL, 4, NULL);
INSERT INTO public.planet VALUES (4, false, NULL, 4, NULL);
INSERT INTO public.planet VALUES (5, true, NULL, 3, NULL);
INSERT INTO public.planet VALUES (6, false, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, false, NULL, 3, NULL);
INSERT INTO public.planet VALUES (8, true, NULL, 2, NULL);
INSERT INTO public.planet VALUES (9, false, NULL, 2, NULL);
INSERT INTO public.planet VALUES (10, false, NULL, 3, NULL);
INSERT INTO public.planet VALUES (11, false, NULL, 3, NULL);
INSERT INTO public.planet VALUES (12, false, NULL, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 1, 'Alfani');
INSERT INTO public.star VALUES (2, NULL, NULL, 1, 'Aloni');
INSERT INTO public.star VALUES (3, NULL, NULL, 2, 'Bloni');
INSERT INTO public.star VALUES (4, NULL, NULL, 3, 'Glop');
INSERT INTO public.star VALUES (5, NULL, NULL, 3, 'Gwwwp');
INSERT INTO public.star VALUES (6, NULL, NULL, 5, 'Fios');


--
-- Data for Name: ufo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ufo VALUES (1, 'Red', false, 'AH');
INSERT INTO public.ufo VALUES (2, 'Pink', true, 'AW');
INSERT INTO public.ufo VALUES (3, 'Green', false, 'U');


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 7, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 65, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: ufo_id_ufo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ufo_id_ufo_seq', 3, true);


--
-- Name: galaxy galaxy_id_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_planet_key UNIQUE (planet_id);


--
-- Name: galaxy galaxy_id_ufo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_ufo_key UNIQUE (ufo_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_colore_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_colore_key UNIQUE (colore);


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
-- Name: ufo ufo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_name_key UNIQUE (name);


--
-- Name: ufo ufo_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_name_key1 UNIQUE (name);


--
-- Name: ufo ufo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_pkey PRIMARY KEY (ufo_id);


--
-- Name: galaxy galaxy_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: galaxy galaxy_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_id_ufo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_ufo_fkey FOREIGN KEY (ufo_id) REFERENCES public.ufo(ufo_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

