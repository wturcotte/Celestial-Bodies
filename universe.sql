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
    name character varying(40) NOT NULL,
    description text,
    age_in_million_of_years integer,
    random_column boolean
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_planet numeric,
    age_in_million_of_years integer,
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
    name character varying(40) NOT NULL,
    description text,
    distance_from_sun numeric,
    age_in_million_of_years integer,
    is_spherical boolean,
    has_life boolean,
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
-- Name: random_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random_table (
    name character varying(40) NOT NULL,
    random_table_id integer NOT NULL,
    description text
);


ALTER TABLE public.random_table OWNER TO freecodecamp;

--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_table_random_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_table_random_table_id_seq OWNER TO freecodecamp;

--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_table_random_table_id_seq OWNED BY public.random_table.random_table_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_situated character varying(40),
    age_in_million_of_years integer,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: random_table random_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table ALTER COLUMN random_table_id SET DEFAULT nextval('public.random_table_random_table_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System', 400, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way, located about 2.537 million light-years away.', 600, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'A smaller spiral galaxy that is a member of the Local Group, which also includes the Milky Way and Andromeda.', 800, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way, located about 163,000 light-years away.', 1500, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'The big big galaxy', 32100, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'The messy galaxy', 12, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 'The Earths natural satellite', 384400, 4500, 1);
INSERT INTO public.moon VALUES (22, 'Phobos', 'The larger and closer moon of Mars', 9377, 4430, 4);
INSERT INTO public.moon VALUES (23, 'Deimos', 'The smaller and more distant moon of Mars', 23460, 4430, 4);
INSERT INTO public.moon VALUES (24, 'Titan', 'The largest moon of Saturn', 1221870, 4500, 6);
INSERT INTO public.moon VALUES (25, 'Ganymede', 'The largest moon of Jupiter', 1070412, 4500, 4);
INSERT INTO public.moon VALUES (26, 'Callisto', 'The second largest moon of Jupiter', 1882709, 4500, 4);
INSERT INTO public.moon VALUES (27, 'Io', 'One of the four Galilean moons of Jupiter', 421700, 4500, 4);
INSERT INTO public.moon VALUES (28, 'Europa', 'One of the four Galilean moons of Jupiter', 670900, 4500, 4);
INSERT INTO public.moon VALUES (29, 'Enceladus', 'One of the inner moons of Saturn', 238020, 4500, 6);
INSERT INTO public.moon VALUES (30, 'Triton', 'The largest moon of Neptune', 354759, 4500, 8);
INSERT INTO public.moon VALUES (31, 'Charon', 'The largest moon of Pluto', 19591, 4500, 9);
INSERT INTO public.moon VALUES (32, 'Phoebe', 'A moon of Saturn with retrograde orbit', 12947000, 4500, 6);
INSERT INTO public.moon VALUES (33, 'Iapetus', 'A moon of Saturn with a two-toned appearance', 3561300, 4500, 6);
INSERT INTO public.moon VALUES (34, 'Miranda', 'One of the moons of Uranus', 129780, 4500, 7);
INSERT INTO public.moon VALUES (35, 'Dione', 'One of the inner moons of Saturn', 377396, 4500, 6);
INSERT INTO public.moon VALUES (36, 'Rhea', 'One of the inner moons of Saturn', 527108, 4500, 6);
INSERT INTO public.moon VALUES (37, 'Ariel', 'One of the moons of Uranus', 190900, 4500, 7);
INSERT INTO public.moon VALUES (38, 'Umbriel', 'One of the moons of Uranus', 266000, 4500, 7);
INSERT INTO public.moon VALUES (39, 'Tethys', 'One of the inner moons of Saturn', 294619, 4500, 6);
INSERT INTO public.moon VALUES (40, 'Hyperion', 'A moon of Saturn with irregular shape', 1481000, 4500, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'home of the human', 300.5, 48, true, true, 6);
INSERT INTO public.planet VALUES (3, 'Mars', 'sandy orange planet', 3.14, 345, true, false, 7);
INSERT INTO public.planet VALUES (4, 'Schmongus', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Schmongu', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (7, 'Schmong', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (8, 'Schmon', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Schmo', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (10, 'chmo', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (12, 'hmo', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (13, 'erfghmo', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (14, 'erfghm', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (15, 'erfgh', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (16, 'erfh', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (17, 'erf', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (18, 'rf', 'weird aahh planet', 311111, 3, false, true, 1);
INSERT INTO public.planet VALUES (19, 'r', 'weird aahh planet', 311111, 3, false, true, 1);


--
-- Data for Name: random_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random_table VALUES ('ASDF', 1, NULL);
INSERT INTO public.random_table VALUES ('ADFS', 2, NULL);
INSERT INTO public.random_table VALUES ('AERTH', 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star wars', 'the best star', 'this field should not exist', 3, 1);
INSERT INTO public.star VALUES (3, 'star trek', 'the nerdiest star', 'this field should not exist', 69, 2);
INSERT INTO public.star VALUES (4, 'a satr is born', 'the saddest star', 'this field should not exist', 12, 4);
INSERT INTO public.star VALUES (5, 'shooting star', 'the luckiest star', 'this field should not exist', 15, 3);
INSERT INTO public.star VALUES (6, 'rock star', 'the wildest star', 'this field should not exist', 666, 6);
INSERT INTO public.star VALUES (7, 'Ringo Star', 'a member of the beatles', 'this field should not exist', 5, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: random_table_random_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_table_random_table_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: random_table random_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_name_key UNIQUE (name);


--
-- Name: random_table random_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_pkey PRIMARY KEY (random_table_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

