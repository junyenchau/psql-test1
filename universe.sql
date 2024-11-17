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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    name character varying(30) NOT NULL,
    moon_id integer,
    country_id integer NOT NULL
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.country_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_country_id_seq OWNER TO freecodecamp;

--
-- Name: country_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.country_country_id_seq OWNED BY public.country.country_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    age integer,
    distance numeric(4,1),
    spherical boolean
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
    name character varying(30) NOT NULL,
    description text,
    moon_id integer NOT NULL,
    age integer,
    distance numeric(4,1),
    life boolean,
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
    name character varying(30) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    age integer,
    distance numeric(4,1),
    life boolean,
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
    name character varying(30) NOT NULL,
    description text,
    star_id integer NOT NULL,
    age integer,
    distance numeric(4,1),
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
-- Name: country country_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country ALTER COLUMN country_id SET DEFAULT nextval('public.country_country_id_seq'::regclass);


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
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES ('America', 1, 1);
INSERT INTO public.country VALUES ('Canada', 1, 2);
INSERT INTO public.country VALUES ('Mexico', 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 'Andromeda', 1, 10000, 2.5, true);
INSERT INTO public.galaxy VALUES ('Backward', 'Centuarus', 2, 10000, 200.0, true);
INSERT INTO public.galaxy VALUES ('Cartwheel', 'Sculptor', 3, 400, 489.2, true);
INSERT INTO public.galaxy VALUES ('Pinwheel', 'Ursa Major', 4, 13510, 20.9, true);
INSERT INTO public.galaxy VALUES ('Milky Way', 'Sagittarius', 5, 13600, 0.0, true);
INSERT INTO public.galaxy VALUES ('Tadpole', 'Draco', 6, 100, 400.0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Selene', 'rocky moon', 1, 50, 0.1, false, 1);
INSERT INTO public.moon VALUES ('Triton', 'icy moon', 2, 100, 0.2, false, 1);
INSERT INTO public.moon VALUES ('Phobos', 'dusty moon', 3, 300, 0.1, false, 2);
INSERT INTO public.moon VALUES ('Deimos', 'small moon', 4, 300, 0.0, false, 2);
INSERT INTO public.moon VALUES ('Io', 'volcanic moon', 5, 450, 0.4, false, 3);
INSERT INTO public.moon VALUES ('Europa', 'icy moon', 6, 450, 0.3, false, 3);
INSERT INTO public.moon VALUES ('Ganymede', 'large moon', 7, 450, 0.5, false, 3);
INSERT INTO public.moon VALUES ('Callisto', 'ice-covered moon', 8, 450, 0.6, false, 3);
INSERT INTO public.moon VALUES ('Titan', 'thick atmosphere moon', 9, 500, 1.2, false, 4);
INSERT INTO public.moon VALUES ('Rhea', 'icy moon', 10, 500, 0.8, false, 4);
INSERT INTO public.moon VALUES ('Enceladus', 'geysers moon', 11, 500, 0.5, false, 4);
INSERT INTO public.moon VALUES ('Mimas', 'cratered moon', 12, 500, 0.3, false, 4);
INSERT INTO public.moon VALUES ('Miranda', 'rocky moon', 13, 100, 0.0, false, 5);
INSERT INTO public.moon VALUES ('Ariel', 'icy moon', 14, 200, 0.0, false, 5);
INSERT INTO public.moon VALUES ('Umbriel', 'dark surface moon', 15, 200, 0.0, false, 5);
INSERT INTO public.moon VALUES ('Titania', 'frozen moon', 16, 200, 0.1, false, 5);
INSERT INTO public.moon VALUES ('Oberon', 'cratered moon', 17, 200, 0.1, false, 5);
INSERT INTO public.moon VALUES ('Iapetus', 'dual-tone moon', 18, 600, 0.9, false, 6);
INSERT INTO public.moon VALUES ('Phoebe', 'irregular moon', 19, 600, 0.8, false, 6);
INSERT INTO public.moon VALUES ('Hyperion', 'spongy moon', 20, 600, 1.1, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Meridia', 'rocky planet', 1, 200, 0.4, false, 1);
INSERT INTO public.planet VALUES ('Andros', 'gas giant', 2, 300, 5.2, false, 1);
INSERT INTO public.planet VALUES ('Neora', 'icy planet', 3, 450, 1.5, false, 2);
INSERT INTO public.planet VALUES ('Revo', 'lava planet', 4, 100, 0.8, false, 2);
INSERT INTO public.planet VALUES ('Stellara', 'water world', 5, 250, 1.2, true, 3);
INSERT INTO public.planet VALUES ('Cartonis', 'desert planet', 6, 350, 0.9, false, 3);
INSERT INTO public.planet VALUES ('Lumina', 'ocean planet', 7, 500, 9.8, false, 4);
INSERT INTO public.planet VALUES ('Cyclone', 'stormy gas giant', 8, 600, 7.8, false, 4);
INSERT INTO public.planet VALUES ('Ignis', 'hot rocky planet', 9, 150, 0.3, false, 5);
INSERT INTO public.planet VALUES ('Aether', 'cool gas giant', 10, 800, 14.4, false, 5);
INSERT INTO public.planet VALUES ('Eryndor', 'ringed planet', 11, 1200, 9.5, false, 6);
INSERT INTO public.planet VALUES ('Tadalis', 'habitable world', 12, 900, 1.0, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpheratz', 'bright star', 1, 730, 2.5, 1);
INSERT INTO public.star VALUES ('Backward Star', 'fictional star', 2, 500, 3.8, 2);
INSERT INTO public.star VALUES ('Polaris', 'north star', 3, 70, 4.0, 3);
INSERT INTO public.star VALUES ('Rigel', 'blue giant', 4, 8, 8.6, 4);
INSERT INTO public.star VALUES ('Betelgeuse', 'red supergiant', 5, 10, 0.6, 5);
INSERT INTO public.star VALUES ('Vega', 'main sequence', 6, 450, 25.0, 6);


--
-- Name: country_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.country_country_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


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
-- Name: country moon_country; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT moon_country FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon planet_moon_f_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon_f_key FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_f_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_f_key FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

