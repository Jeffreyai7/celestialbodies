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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(20),
    year_discovered integer,
    meaning text NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    meaning text,
    visible_to_the_eye boolean,
    constellation_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    year_discovered integer,
    diameter_in_km integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    orbital_period_in_years numeric(5,2),
    has_moon boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    distance_in_light_years numeric(5,2),
    brightnesss_of_star numeric(3,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', NULL, 'Water-bearer');
INSERT INTO public.constellation VALUES (2, 'Aries', NULL, 'Ram');
INSERT INTO public.constellation VALUES (3, 'Bootes', NULL, 'Herdsman');
INSERT INTO public.constellation VALUES (4, 'Capricornus', NULL, 'Sea goat');
INSERT INTO public.constellation VALUES (5, 'Centaurus', NULL, 'Centaur');
INSERT INTO public.constellation VALUES (6, 'Cetus', NULL, 'Sea monster');
INSERT INTO public.constellation VALUES (7, 'Coma Berenices', 1536, 'Berenices hair');
INSERT INTO public.constellation VALUES (8, 'Leo', NULL, 'Lion');
INSERT INTO public.constellation VALUES (9, 'Ophiuchus', NULL, 'Serpent-bearer');
INSERT INTO public.constellation VALUES (10, 'Pegasus', NULL, 'Winged horse');
INSERT INTO public.constellation VALUES (11, 'Sagittarius', NULL, 'Archer');
INSERT INTO public.constellation VALUES (12, 'Taurus', NULL, 'Bull');
INSERT INTO public.constellation VALUES (13, 'Virgo', NULL, 'Maiden');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'it seems to rotate in the opposite direction', false, 5);
INSERT INTO public.galaxy VALUES (2, 'Centauru', 'Named because it is located in the centaurus', true, 5);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'it looks like an eye with a dark stripe underneath', false, 7);
INSERT INTO public.galaxy VALUES (4, 'Coma Pinwheel Galaxy', 'it looks like a paper pinwheel', false, 7);
INSERT INTO public.galaxy VALUES (5, 'Main 1', 'Named after its discoverer, David Main', false, 7);
INSERT INTO public.galaxy VALUES (6, 'Mice Galaxies', 'Two galaxies with long tails that look like a mice', false, 7);
INSERT INTO public.galaxy VALUES (7, 'Needle Galaxy', 'Named because of its thin appearance', false, 7);
INSERT INTO public.galaxy VALUES (8, 'Milky way', 'Our own galaxy, it is said to look like a band', true, 11);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3476, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 23, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 13, 4);
INSERT INTO public.moon VALUES (4, 'Lo', 1610, 3630, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 3138, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 5262, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 4800, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1892, 200, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 1904, 170, 5);
INSERT INTO public.moon VALUES (10, 'Thebe', 1979, 90, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', 1789, 394, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 1789, 502, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1684, 1120, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 1684, 1048, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 1672, 1530, 6);
INSERT INTO public.moon VALUES (16, 'Titan', 1655, 5150, 6);
INSERT INTO public.moon VALUES (17, 'Hyperion', 1848, 270, 6);
INSERT INTO public.moon VALUES (18, 'Lapetus', 1671, 1435, 6);
INSERT INTO public.moon VALUES (19, 'Phoebe', 1899, 220, 6);
INSERT INTO public.moon VALUES (20, 'Lasepu', 1066, 100, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.24, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 0.62, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 1.88, true, 6);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11.86, true, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 29.45, true, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', 84.02, true, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 164.79, true, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 4.60, false, 7);
INSERT INTO public.planet VALUES (10, 'Pluto', 247.90, true, 2);
INSERT INTO public.planet VALUES (11, 'Orcus', 247.50, true, 7);
INSERT INTO public.planet VALUES (12, 'Haumea', 283.80, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sadalsuud', 612.00, 2.90, 8);
INSERT INTO public.star VALUES (2, 'Hamal', 66.00, 2.01, 8);
INSERT INTO public.star VALUES (3, 'Arcturus', 37.00, 0.05, 8);
INSERT INTO public.star VALUES (4, 'Deneb Algedi', 39.00, 2.85, 8);
INSERT INTO public.star VALUES (5, 'Rigil Kentaurus', 4.36, 0.01, 8);
INSERT INTO public.star VALUES (6, 'Regulus', 77.00, 1.36, 8);
INSERT INTO public.star VALUES (7, 'Aldebaran', 65.23, 0.85, 8);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: galaxy fk_constellation; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_constellation FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

