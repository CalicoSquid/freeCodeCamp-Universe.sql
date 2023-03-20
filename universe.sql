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
    name character varying(30) NOT NULL,
    description text,
    age_in_billions numeric(100,2),
    lightyear_radius integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    lifeform_id integer NOT NULL,
    name character varying(30) NOT NULL,
    home_planet text,
    is_awesome boolean,
    planet_id integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeforms_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeforms_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeforms_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_made_of_cheese boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    is_inhabited boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    description text,
    age_in_billions numeric(100,2),
    distance_from_earth_lightyears integer,
    galaxy_id integer
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeforms_lifeform_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13.61, 52850);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large galaxy to the Milky Way', 10.10, 76000);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'Well known galaxy discovered in 1779', 13.28, 26481);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'A peculiar Galaxy of unclear classification', 13.25, 25000);
INSERT INTO public.galaxy VALUES (5, 'A galaxy far far away', 'Home to Darth Vader, Anakin Skywalker and more...', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Jackson Galaxy', 'Cat Daddy', NULL, NULL);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES (1, 'CalicoSquid', 'Earth', true, 4);
INSERT INTO public.lifeform VALUES (2, 'Marvin', 'Mars', true, 3);
INSERT INTO public.lifeform VALUES (3, 'Jabba the Hutt', 'Tatooine', false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our moon', true, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Largest moon of Mars', false, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars second moon', false, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Inner moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladas', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (11, 'Tethys', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (12, 'Dione', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (14, 'Titan', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (16, 'Iapetus', 'Moon of Saturn', false, 6);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (19, 'Titania', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 'King of the fairies', false, 7);
INSERT INTO public.moon VALUES (21, 'Miranda', 'Moon of Uranus', false, 7);
INSERT INTO public.moon VALUES (22, 'Triton', 'Moon of Neptune', false, 8);
INSERT INTO public.moon VALUES (23, 'Charon', 'Moon of Pluto', false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet that is closest to the sun', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Spins slowly in the opposite direction from most planets', false, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 'The Red Planet that is clostest to Earth', false, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 'Our home planet', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the solar system', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Ringed gas giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Heheh anus', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The one people always forget about', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Not really a planet but i like it', false, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (11, 'Orcus', 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (12, 'Gonggong', 'Dwarf Planet', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'Our very own star', 4.60, 0, 1);
INSERT INTO public.star VALUES (2, 'Antares', 'Bright red star in the constellation of Scorpius', 11.01, 554, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Giant that is the 10th brightest star in the sky', 10.10, 642, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'The brightest star in the sky', 0.24, 8, 1);
INSERT INTO public.star VALUES (5, 'Polaris', 'The North star', 0.07, 433, 1);
INSERT INTO public.star VALUES (6, 'The Death Star', 'A space station/superweapon constructed by the autocratic Galactic Empire', NULL, NULL, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeforms_lifeform_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeform lifeforms_lifeform_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeforms_lifeform_id_key UNIQUE (lifeform_id);


--
-- Name: lifeform lifeforms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeforms_pkey PRIMARY KEY (lifeform_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: lifeform lifeforms_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeforms_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

