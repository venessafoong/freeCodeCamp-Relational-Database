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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_ic_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_ic_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_ic_seq OWNER TO freecodecamp;

--
-- Name: teams_team_ic_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_ic_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_ic_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (130, 292, 293, 2, 4, 2018, 'Final');
INSERT INTO public.games VALUES (131, 294, 295, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (132, 293, 295, 1, 2, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (133, 292, 294, 0, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (134, 293, 296, 2, 3, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (135, 295, 297, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 294, 298, 1, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 292, 299, 0, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (138, 295, 300, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (139, 297, 301, 0, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 294, 302, 2, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 298, 303, 0, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 293, 304, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 296, 305, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 299, 306, 1, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (145, 292, 307, 3, 4, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (146, 308, 307, 0, 1, 2014, 'Final');
INSERT INTO public.games VALUES (147, 309, 298, 0, 3, 2014, 'Third Place');
INSERT INTO public.games VALUES (148, 307, 309, 0, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (149, 308, 298, 1, 7, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (150, 309, 310, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (151, 307, 294, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (152, 298, 300, 1, 2, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (153, 308, 292, 0, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (154, 298, 311, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (155, 300, 299, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 292, 312, 0, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 308, 313, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 309, 303, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 310, 314, 1, 2, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (160, 307, 301, 0, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (161, 294, 315, 1, 2, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (292, 'France');
INSERT INTO public.teams VALUES (293, 'Croatia');
INSERT INTO public.teams VALUES (294, 'Belgium');
INSERT INTO public.teams VALUES (295, 'England');
INSERT INTO public.teams VALUES (296, 'Russia');
INSERT INTO public.teams VALUES (297, 'Sweden');
INSERT INTO public.teams VALUES (298, 'Brazil');
INSERT INTO public.teams VALUES (299, 'Uruguay');
INSERT INTO public.teams VALUES (300, 'Colombia');
INSERT INTO public.teams VALUES (301, 'Switzerland');
INSERT INTO public.teams VALUES (302, 'Japan');
INSERT INTO public.teams VALUES (303, 'Mexico');
INSERT INTO public.teams VALUES (304, 'Denmark');
INSERT INTO public.teams VALUES (305, 'Spain');
INSERT INTO public.teams VALUES (306, 'Portugal');
INSERT INTO public.teams VALUES (307, 'Argentina');
INSERT INTO public.teams VALUES (308, 'Germany');
INSERT INTO public.teams VALUES (309, 'Netherlands');
INSERT INTO public.teams VALUES (310, 'Costa Rica');
INSERT INTO public.teams VALUES (311, 'Chile');
INSERT INTO public.teams VALUES (312, 'Nigeria');
INSERT INTO public.teams VALUES (313, 'Algeria');
INSERT INTO public.teams VALUES (314, 'Greece');
INSERT INTO public.teams VALUES (315, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 161, true);


--
-- Name: teams_team_ic_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_ic_seq', 315, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

