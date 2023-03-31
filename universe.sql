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
    galaxy_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    type character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    planet_id bigint,
    orbit_length bigint NOT NULL,
    is_rock boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: organization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.organization (
    organization_id bigint NOT NULL,
    name character varying(255),
    main_race character varying(255) NOT NULL
);


ALTER TABLE public.organization OWNER TO freecodecamp;

--
-- Name: organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.organization ALTER COLUMN organization_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.organizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    satellites_q integer,
    has_life boolean,
    has_atmosphere boolean,
    star_id bigint
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    planet_q integer,
    galaxy_id bigint,
    type character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milkyway', 'Good galaxy where people live', 970, 'Spiral');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Penumbra', 'The residence of evil blargons', 1180, 'Ellyptic');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Quazarthrone', 'Some galaxy with a very small population and great potential of self-destruction', 3300.4, 'Abnormal');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'AEX-714', '--classified', 0.6, 'Lense');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Ol-round', 'Galaxy that everyone would like to visit', 394.1, 'Spiral');
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Xen', 'Place where name Freeman is an obscene word', 711, 'Abnormal');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Moon', 1, 10000000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Plork', 2, 15000000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Nemesis', 6, 120000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Oooga', 8, 18900000, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'yyyy-yyy-9', 4, 170000, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Shrek', 5, 800000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Vort', 6, 900000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Io', 7, 30000000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Europa', 7, 8000000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Callisto', 7, 9000000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Rogue', 12, 9430000, false);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Aarbrolg', 9, 7400000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Romphorhynkh', 11, 1111000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Tooziek', 11, 1231000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Voyager', 7, 12300, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Galilieo', 7, 452300, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Romeo', 11, 488810, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Charlie', 11, 551810, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Prestigio', 12, 600000, true);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Tenet', 6, 6660000, true);


--
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.organization OVERRIDING SYSTEM VALUE VALUES (1, 'Harkonenn', 'people');
INSERT INTO public.organization OVERRIDING SYSTEM VALUE VALUES (2, 'Valthorb inc.', 'Andurians');
INSERT INTO public.organization OVERRIDING SYSTEM VALUE VALUES (3, 'Intergalactic trade fed', 'people');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Earth', 1, true, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Blork', 2, true, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Ambigua', 0, false, true, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'xxx-xx-09', 0, true, false, 4);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Saloon planet', 0, true, true, 5);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Xen-1', 3, true, true, 6);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Jupiter', 92, false, true, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Jeloodie', 3, false, false, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Omicron-persey-9', 3, true, true, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Faithful canyon', 6, false, true, 5);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'Nihil', 10, false, false, 6);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'xxx-xx-02', 1, true, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', 8, 1, 'Yellow dwarf');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Proxima Centaura', 3, 2, 'Red giant');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Lure', 15, 3, 'Yellow dwarf');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'URS-189', 0, 4, 'White dwarf');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Bethelgeise', 6, 5, 'Red giant');
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Westing-KY-1', 11, 6, 'White dwarf');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.organizations_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: organization organization_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_name_key UNIQUE (name);


--
-- Name: organization organization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (organization_id);


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