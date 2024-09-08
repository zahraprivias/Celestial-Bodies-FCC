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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    height integer NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type text NOT NULL,
    diameter integer NOT NULL,
    distance integer NOT NULL
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
    name character varying(50) NOT NULL,
    discovered_by text NOT NULL,
    visible boolean NOT NULL,
    latin_name text NOT NULL
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
    name character varying(50) NOT NULL,
    latin_name text NOT NULL,
    radius integer NOT NULL,
    oxygen boolean NOT NULL,
    star_type text NOT NULL
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
    name character varying(50) NOT NULL,
    star_type text NOT NULL,
    color character varying(50) NOT NULL,
    galaxy_type text NOT NULL
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
-- Name: worm; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.worm (
    worm_id integer NOT NULL,
    name character varying(50) NOT NULL,
    length numeric NOT NULL,
    height numeric NOT NULL
);


ALTER TABLE public.worm OWNER TO freecodecamp;

--
-- Name: worm_worm_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.worm_worm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worm_worm_id_seq OWNER TO freecodecamp;

--
-- Name: worm_worm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.worm_worm_id_seq OWNED BY public.worm.worm_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Name: worm worm_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.worm ALTER COLUMN worm_id SET DEFAULT nextval('public.worm_worm_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Bono', 111, 300);
INSERT INTO public.alien VALUES (2, 'Meli', 20, 165);
INSERT INTO public.alien VALUES (3, 'Risto', 3900, 751);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky', 'Milky Way', 100000, 0);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'Large Magellanic Cloud', 14000, 158000);
INSERT INTO public.galaxy VALUES (3, 'Andro', 'Andromeda', 220000, 2500000);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Cigar Galaxy', 37000, 11500000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Pinwheel Galaxy', 170000, 20870000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Sombrero Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (7, 'Glabos', 'Glabos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (8, 'Lofos', 'Lofos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (9, 'Aidros', 'Aidros Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (10, 'Milsjos', 'Milsjos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (11, 'Meflos', 'Meflos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (12, 'Iomuros', 'Iomuros Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (13, 'Leros', 'Leros Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (14, 'Midlos', 'Midlos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (15, 'Beolos', 'Beolos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (16, 'Jenilos', 'Jenilos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (17, 'Yarilos', 'Yarilos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (18, 'Ujifos', 'Ujifos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (19, 'Nekfos', 'Nekfos Galaxy', 50000, 29350000);
INSERT INTO public.galaxy VALUES (20, 'Reikos', 'Reikos Galaxy', 50000, 29350000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Galileo Galilei', true, 'Tellus');
INSERT INTO public.moon VALUES (2, 'Phobos', 'Asaph Hall', false, 'Mercurius');
INSERT INTO public.moon VALUES (3, 'Deimos', 'Asaph Hall', false, 'Venus');
INSERT INTO public.moon VALUES (4, 'Metis', 'Stephen P. S.', false, 'Mars');
INSERT INTO public.moon VALUES (5, 'Adrastea', 'David C. J. & G. Edward', false, 'Jupiter');
INSERT INTO public.moon VALUES (6, 'Amalthea', 'Edward E. B.', false, 'Saturnus');
INSERT INTO public.moon VALUES (7, 'Thebe', 'Stephen P. S.', false, 'Uranus');
INSERT INTO public.moon VALUES (8, 'Io', 'Galileo Galilei', true, 'Neptus');
INSERT INTO public.moon VALUES (9, 'Europa', 'Galileo Galilei', true, 'Neptunus');
INSERT INTO public.moon VALUES (10, 'Ganymede', 'Galileo Galilei', true, 'Pluto');
INSERT INTO public.moon VALUES (11, 'Callisto', 'Galileo Galilei', true, 'Merius');
INSERT INTO public.moon VALUES (12, 'Pan', 'M. R. Showalter', false, 'Jurius');
INSERT INTO public.moon VALUES (13, 'Daphnis', 'Cassini', false, 'Nephus');
INSERT INTO public.moon VALUES (14, 'Atlas', 'Richard Terrile', false, 'Mercus');
INSERT INTO public.moon VALUES (15, 'Prometheus', 'Collins', false, 'Verus');
INSERT INTO public.moon VALUES (16, 'Pandora', 'Voyager 1', false, 'Telius');
INSERT INTO public.moon VALUES (17, 'Cordelia', 'Richard J. T.', false, 'Marus');
INSERT INTO public.moon VALUES (18, 'Ophelia', 'Voyager 2', false, 'Jupitus');
INSERT INTO public.moon VALUES (19, 'Bianca', 'Bradford A. S.', false, 'Sathus');
INSERT INTO public.moon VALUES (20, 'Cressida', 'Voyager 2', false, 'Urus');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercurius', 2439, true, 'Main Sequence');
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus', 6052, true, 'Red Giant');
INSERT INTO public.planet VALUES (3, 'Earth', 'Tellus', 6378, true, 'White Dwarf');
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars', 3398, true, 'Neutron Stars');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', 71494, false, 'Red Dwarf');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturnus', 60330, false, 'Brown Dwarf');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus', 25559, true, 'Blue Dwarf');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptunus', 24750, true, 'Green Dwarf');
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto', 1188, false, 'Yellow Giant');
INSERT INTO public.planet VALUES (10, 'Merca', 'Merius', 3339, true, 'Teal Sequence');
INSERT INTO public.planet VALUES (11, 'Jurri', 'Jurius', 51372, false, 'White Giant');
INSERT INTO public.planet VALUES (12, 'Nepu', 'Nephus', 11750, false, 'Purple Dwarf');
INSERT INTO public.planet VALUES (13, 'Mercos', 'Mercus', 2439, true, 'Blue Giant');
INSERT INTO public.planet VALUES (14, 'Veros', 'Verus', 6052, true, 'Green Giant');
INSERT INTO public.planet VALUES (15, 'Telios', 'Telius', 6378, true, 'Yellow Dwarf');
INSERT INTO public.planet VALUES (16, 'Maros', 'Marus', 3398, true, 'Teal Giant');
INSERT INTO public.planet VALUES (17, 'Jupitos', 'Jupitus', 71494, false, 'White Sequence');
INSERT INTO public.planet VALUES (18, 'Sathos', 'Sathus', 60330, false, 'Purple Giant');
INSERT INTO public.planet VALUES (19, 'Uros', 'Urus', 25559, true, 'Orange Giant');
INSERT INTO public.planet VALUES (20, 'Neptos', 'Neptus', 24750, true, 'Pink Dwarf');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Main Sequence', 'Gold', 'Milky Way');
INSERT INTO public.star VALUES (2, 'Arcturus', 'Red Giant', 'Red', 'Large Magellanic Cloud');
INSERT INTO public.star VALUES (3, 'Procyon', 'White Dwarf', 'White', 'Andromeda');
INSERT INTO public.star VALUES (4, 'Pulsars', 'Neutron Stars', 'Blue', 'Cigar Galaxy');
INSERT INTO public.star VALUES (5, 'Lacaille', 'Red Dwarf', 'Red', 'Pinwheel Galaxy');
INSERT INTO public.star VALUES (6, 'Gliese', 'Brown Dwarf', 'Brown', 'Sombrero Galaxy');
INSERT INTO public.star VALUES (7, 'Glab', 'Blue Dwarf', 'Blue', 'Glabos Galaxy');
INSERT INTO public.star VALUES (8, 'Lof', 'Green Dwarf', 'Green', 'Lofos Galaxy');
INSERT INTO public.star VALUES (9, 'Aidro', 'Yellow Giant', 'Yellow', 'Aidros Galaxy');
INSERT INTO public.star VALUES (10, 'Milsjo', 'Teal Sequence', 'Teal', 'Milsjos Galaxy');
INSERT INTO public.star VALUES (11, 'Mefle', 'White Giant', 'White', 'Meflos Galaxy');
INSERT INTO public.star VALUES (12, 'Iomur', 'Purple Dwarf', 'Purple', 'Iomuros Galaxy');
INSERT INTO public.star VALUES (13, 'Leri', 'Blue Giant', 'Blue', 'Leros Galaxy');
INSERT INTO public.star VALUES (14, 'Midla', 'Green Giant', 'Green', 'Midlos Galaxy');
INSERT INTO public.star VALUES (15, 'Beoluci', 'Yellow Dwarf', 'Yellow', 'Beolos Galaxy');
INSERT INTO public.star VALUES (16, 'Jenipe', 'Teal Giant', 'Teal', 'Jenilos Galaxy');
INSERT INTO public.star VALUES (17, 'Yarilo', 'White Sequence', 'White', 'Yarilos Galaxy');
INSERT INTO public.star VALUES (18, 'Nekfir', 'Purple Giant', 'Purple', 'Nekfos Galaxy');
INSERT INTO public.star VALUES (19, 'Reiki', 'Orange Giant', 'Orannge', 'Reikos Galaxy');
INSERT INTO public.star VALUES (20, 'Ujifir', 'Pink Dwarf', 'Pink', 'Ujifos Galaxy');


--
-- Data for Name: worm; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.worm VALUES (1, 'Buko', 70000, 234);
INSERT INTO public.worm VALUES (2, 'Rilo', 25660, 5565);
INSERT INTO public.worm VALUES (3, 'Juji', 3435, 67);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: worm_worm_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.worm_worm_id_seq', 3, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_latin_name_key UNIQUE (latin_name);


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
-- Name: planet planet_latin_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_latin_name_key UNIQUE (latin_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_type_key UNIQUE (star_type);


--
-- Name: star star_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


--
-- Name: worm worm_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.worm
    ADD CONSTRAINT worm_name_key UNIQUE (name);


--
-- Name: worm worm_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.worm
    ADD CONSTRAINT worm_pkey PRIMARY KEY (worm_id);


--
-- Name: moon moon_latin_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_latin_name_fkey FOREIGN KEY (latin_name) REFERENCES public.planet(latin_name);


--
-- Name: planet planet_star_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_type_fkey FOREIGN KEY (star_type) REFERENCES public.star(star_type);


--
-- Name: star star_galaxy_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_type_fkey FOREIGN KEY (galaxy_type) REFERENCES public.galaxy(galaxy_type);


--
-- PostgreSQL database dump complete
--

