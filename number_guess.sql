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
    number_guesses integer NOT NULL,
    user_id integer
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

INSERT INTO public.games VALUES (1, 70, 12);
INSERT INTO public.games VALUES (2, 9, 12);
INSERT INTO public.games VALUES (3, 36, 13);
INSERT INTO public.games VALUES (4, 58, 13);
INSERT INTO public.games VALUES (5, 80, 12);
INSERT INTO public.games VALUES (6, 6, 12);
INSERT INTO public.games VALUES (7, 70, 12);
INSERT INTO public.games VALUES (8, 14, 9);
INSERT INTO public.games VALUES (9, 80, 14);
INSERT INTO public.games VALUES (10, 86, 14);
INSERT INTO public.games VALUES (11, 98, 15);
INSERT INTO public.games VALUES (12, 100, 15);
INSERT INTO public.games VALUES (13, 92, 14);
INSERT INTO public.games VALUES (14, 20, 14);
INSERT INTO public.games VALUES (15, 76, 14);
INSERT INTO public.games VALUES (16, 20, 16);
INSERT INTO public.games VALUES (17, 101, 16);
INSERT INTO public.games VALUES (18, 41, 17);
INSERT INTO public.games VALUES (19, 53, 17);
INSERT INTO public.games VALUES (20, 14, 16);
INSERT INTO public.games VALUES (21, 71, 16);
INSERT INTO public.games VALUES (22, 11, 16);
INSERT INTO public.games VALUES (23, 10, 18);
INSERT INTO public.games VALUES (24, 17, 18);
INSERT INTO public.games VALUES (25, 89, 19);
INSERT INTO public.games VALUES (26, 98, 19);
INSERT INTO public.games VALUES (27, 50, 18);
INSERT INTO public.games VALUES (28, 6, 18);
INSERT INTO public.games VALUES (29, 58, 18);
INSERT INTO public.games VALUES (30, 10, 20);
INSERT INTO public.games VALUES (31, 15, 21);
INSERT INTO public.games VALUES (32, 21, 21);
INSERT INTO public.games VALUES (33, 35, 22);
INSERT INTO public.games VALUES (34, 24, 22);
INSERT INTO public.games VALUES (35, 16, 21);
INSERT INTO public.games VALUES (36, 12, 21);
INSERT INTO public.games VALUES (37, 75, 21);
INSERT INTO public.games VALUES (38, 21, 23);
INSERT INTO public.games VALUES (39, 74, 23);
INSERT INTO public.games VALUES (40, 100, 24);
INSERT INTO public.games VALUES (41, 50, 24);
INSERT INTO public.games VALUES (42, 39, 23);
INSERT INTO public.games VALUES (43, 20, 23);
INSERT INTO public.games VALUES (44, 81, 23);
INSERT INTO public.games VALUES (45, 22, 25);
INSERT INTO public.games VALUES (46, 29, 25);
INSERT INTO public.games VALUES (47, 68, 26);
INSERT INTO public.games VALUES (48, 55, 26);
INSERT INTO public.games VALUES (49, 24, 25);
INSERT INTO public.games VALUES (50, 59, 25);
INSERT INTO public.games VALUES (51, 21, 25);
INSERT INTO public.games VALUES (52, 17, 27);
INSERT INTO public.games VALUES (53, 26, 27);
INSERT INTO public.games VALUES (54, 67, 28);
INSERT INTO public.games VALUES (55, 71, 28);
INSERT INTO public.games VALUES (56, 58, 27);
INSERT INTO public.games VALUES (57, 72, 27);
INSERT INTO public.games VALUES (58, 42, 27);
INSERT INTO public.games VALUES (59, 68, 29);
INSERT INTO public.games VALUES (60, 51, 29);
INSERT INTO public.games VALUES (61, 12, 30);
INSERT INTO public.games VALUES (62, 26, 30);
INSERT INTO public.games VALUES (63, 58, 29);
INSERT INTO public.games VALUES (64, 44, 29);
INSERT INTO public.games VALUES (65, 5, 29);
INSERT INTO public.games VALUES (66, 18, 31);
INSERT INTO public.games VALUES (67, 82, 31);
INSERT INTO public.games VALUES (68, 57, 32);
INSERT INTO public.games VALUES (69, 47, 32);
INSERT INTO public.games VALUES (70, 98, 31);
INSERT INTO public.games VALUES (71, 7, 31);
INSERT INTO public.games VALUES (72, 91, 31);
INSERT INTO public.games VALUES (73, 8, 33);
INSERT INTO public.games VALUES (74, 16, 33);
INSERT INTO public.games VALUES (75, 51, 34);
INSERT INTO public.games VALUES (76, 41, 34);
INSERT INTO public.games VALUES (77, 17, 33);
INSERT INTO public.games VALUES (78, 83, 33);
INSERT INTO public.games VALUES (79, 39, 33);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731266872474');
INSERT INTO public.users VALUES (2, 'user_1731266872473');
INSERT INTO public.users VALUES (3, 'user_1731267207818');
INSERT INTO public.users VALUES (4, 'user_1731267207817');
INSERT INTO public.users VALUES (5, 'user_1731267229837');
INSERT INTO public.users VALUES (6, 'user_1731267229836');
INSERT INTO public.users VALUES (7, 'user_1731267263510');
INSERT INTO public.users VALUES (8, 'user_1731267263509');
INSERT INTO public.users VALUES (9, 'man test');
INSERT INTO public.users VALUES (10, 'user_1731267592214');
INSERT INTO public.users VALUES (11, 'user_1731267592213');
INSERT INTO public.users VALUES (12, 'user_1731267977535');
INSERT INTO public.users VALUES (13, 'user_1731267977534');
INSERT INTO public.users VALUES (14, 'user_1731268096076');
INSERT INTO public.users VALUES (15, 'user_1731268096075');
INSERT INTO public.users VALUES (16, 'user_1731268141731');
INSERT INTO public.users VALUES (17, 'user_1731268141729');
INSERT INTO public.users VALUES (18, 'user_1731268288125');
INSERT INTO public.users VALUES (19, 'user_1731268288124');
INSERT INTO public.users VALUES (20, 'Wally');
INSERT INTO public.users VALUES (21, 'user_1731268355512');
INSERT INTO public.users VALUES (22, 'user_1731268355511');
INSERT INTO public.users VALUES (23, 'user_1731268406313');
INSERT INTO public.users VALUES (24, 'user_1731268406312');
INSERT INTO public.users VALUES (25, 'user_1731268439553');
INSERT INTO public.users VALUES (26, 'user_1731268439552');
INSERT INTO public.users VALUES (27, 'user_1731268474309');
INSERT INTO public.users VALUES (28, 'user_1731268474308');
INSERT INTO public.users VALUES (29, 'user_1731268493100');
INSERT INTO public.users VALUES (30, 'user_1731268493099');
INSERT INTO public.users VALUES (31, 'user_1731268557217');
INSERT INTO public.users VALUES (32, 'user_1731268557216');
INSERT INTO public.users VALUES (33, 'user_1731268622515');
INSERT INTO public.users VALUES (34, 'user_1731268622514');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 79, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


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

