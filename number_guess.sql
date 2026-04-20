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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 312);
INSERT INTO public.games VALUES (2, 2, 110);
INSERT INTO public.games VALUES (3, 3, 980);
INSERT INTO public.games VALUES (4, 3, 464);
INSERT INTO public.games VALUES (5, 2, 487);
INSERT INTO public.games VALUES (6, 2, 648);
INSERT INTO public.games VALUES (7, 2, 920);
INSERT INTO public.games VALUES (8, 1, 21);
INSERT INTO public.games VALUES (9, 4, 721);
INSERT INTO public.games VALUES (10, 4, 714);
INSERT INTO public.games VALUES (11, 5, 202);
INSERT INTO public.games VALUES (12, 5, 282);
INSERT INTO public.games VALUES (13, 4, 721);
INSERT INTO public.games VALUES (14, 4, 358);
INSERT INTO public.games VALUES (15, 4, 382);
INSERT INTO public.games VALUES (16, 6, 549);
INSERT INTO public.games VALUES (17, 6, 105);
INSERT INTO public.games VALUES (18, 7, 501);
INSERT INTO public.games VALUES (19, 7, 70);
INSERT INTO public.games VALUES (20, 6, 7);
INSERT INTO public.games VALUES (21, 6, 222);
INSERT INTO public.games VALUES (22, 6, 722);
INSERT INTO public.games VALUES (23, 8, 757);
INSERT INTO public.games VALUES (24, 8, 399);
INSERT INTO public.games VALUES (25, 9, 81);
INSERT INTO public.games VALUES (26, 9, 543);
INSERT INTO public.games VALUES (27, 8, 120);
INSERT INTO public.games VALUES (28, 8, 953);
INSERT INTO public.games VALUES (29, 8, 787);
INSERT INTO public.games VALUES (30, 10, 613);
INSERT INTO public.games VALUES (31, 10, 774);
INSERT INTO public.games VALUES (32, 11, 93);
INSERT INTO public.games VALUES (33, 11, 141);
INSERT INTO public.games VALUES (34, 10, 418);
INSERT INTO public.games VALUES (35, 10, 797);
INSERT INTO public.games VALUES (36, 10, 346);
INSERT INTO public.games VALUES (37, 12, 741);
INSERT INTO public.games VALUES (38, 12, 853);
INSERT INTO public.games VALUES (39, 13, 18);
INSERT INTO public.games VALUES (40, 13, 527);
INSERT INTO public.games VALUES (41, 12, 593);
INSERT INTO public.games VALUES (42, 12, 195);
INSERT INTO public.games VALUES (43, 12, 594);
INSERT INTO public.games VALUES (44, 14, 588);
INSERT INTO public.games VALUES (45, 14, 102);
INSERT INTO public.games VALUES (46, 15, 294);
INSERT INTO public.games VALUES (47, 15, 337);
INSERT INTO public.games VALUES (48, 14, 669);
INSERT INTO public.games VALUES (49, 14, 803);
INSERT INTO public.games VALUES (50, 14, 189);
INSERT INTO public.games VALUES (51, 16, 938);
INSERT INTO public.games VALUES (52, 16, 453);
INSERT INTO public.games VALUES (53, 17, 572);
INSERT INTO public.games VALUES (54, 17, 83);
INSERT INTO public.games VALUES (55, 16, 464);
INSERT INTO public.games VALUES (56, 16, 960);
INSERT INTO public.games VALUES (57, 16, 344);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'eletontee');
INSERT INTO public.users VALUES (2, 'user_1776668725664');
INSERT INTO public.users VALUES (3, 'user_1776668725663');
INSERT INTO public.users VALUES (4, 'user_1776668968566');
INSERT INTO public.users VALUES (5, 'user_1776668968565');
INSERT INTO public.users VALUES (6, 'user_1776669630202');
INSERT INTO public.users VALUES (7, 'user_1776669630201');
INSERT INTO public.users VALUES (8, 'user_1776669937606');
INSERT INTO public.users VALUES (9, 'user_1776669937605');
INSERT INTO public.users VALUES (10, 'user_1776670052572');
INSERT INTO public.users VALUES (11, 'user_1776670052571');
INSERT INTO public.users VALUES (12, 'user_1776670224652');
INSERT INTO public.users VALUES (13, 'user_1776670224651');
INSERT INTO public.users VALUES (14, 'user_1776670360403');
INSERT INTO public.users VALUES (15, 'user_1776670360402');
INSERT INTO public.users VALUES (16, 'user_1776670477187');
INSERT INTO public.users VALUES (17, 'user_1776670477186');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 57, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
