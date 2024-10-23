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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (545, 2018, 'Final', 1105, 1115, 4, 2);
INSERT INTO public.games VALUES (546, 2018, 'Third Place', 1113, 1106, 2, 0);
INSERT INTO public.games VALUES (547, 2018, 'Semi-Final', 1115, 1106, 2, 1);
INSERT INTO public.games VALUES (548, 2018, 'Semi-Final', 1105, 1113, 1, 0);
INSERT INTO public.games VALUES (549, 2018, 'Quarter-Final', 1115, 1117, 3, 2);
INSERT INTO public.games VALUES (550, 2018, 'Quarter-Final', 1106, 1112, 2, 0);
INSERT INTO public.games VALUES (551, 2018, 'Quarter-Final', 1113, 1107, 2, 1);
INSERT INTO public.games VALUES (552, 2018, 'Quarter-Final', 1105, 1128, 2, 0);
INSERT INTO public.games VALUES (553, 2018, 'Eighth-Final', 1106, 1127, 2, 1);
INSERT INTO public.games VALUES (554, 2018, 'Eighth-Final', 1112, 1118, 1, 0);
INSERT INTO public.games VALUES (555, 2018, 'Eighth-Final', 1113, 1120, 3, 2);
INSERT INTO public.games VALUES (556, 2018, 'Eighth-Final', 1107, 1110, 2, 0);
INSERT INTO public.games VALUES (557, 2018, 'Eighth-Final', 1115, 1119, 2, 1);
INSERT INTO public.games VALUES (558, 2018, 'Eighth-Final', 1117, 1126, 2, 1);
INSERT INTO public.games VALUES (559, 2018, 'Eighth-Final', 1128, 1114, 2, 1);
INSERT INTO public.games VALUES (560, 2018, 'Eighth-Final', 1105, 1111, 4, 3);
INSERT INTO public.games VALUES (561, 2014, 'Final', 1108, 1111, 1, 0);
INSERT INTO public.games VALUES (562, 2014, 'Third Place', 1121, 1107, 3, 0);
INSERT INTO public.games VALUES (563, 2014, 'Semi-Final', 1111, 1121, 1, 0);
INSERT INTO public.games VALUES (564, 2014, 'Semi-Final', 1108, 1107, 7, 1);
INSERT INTO public.games VALUES (565, 2014, 'Quarter-Final', 1121, 1124, 1, 0);
INSERT INTO public.games VALUES (566, 2014, 'Quarter-Final', 1111, 1113, 1, 0);
INSERT INTO public.games VALUES (567, 2014, 'Quarter-Final', 1107, 1127, 2, 1);
INSERT INTO public.games VALUES (568, 2014, 'Quarter-Final', 1108, 1105, 1, 0);
INSERT INTO public.games VALUES (569, 2014, 'Eighth-Final', 1107, 1123, 2, 1);
INSERT INTO public.games VALUES (570, 2014, 'Eighth-Final', 1127, 1128, 2, 0);
INSERT INTO public.games VALUES (571, 2014, 'Eighth-Final', 1105, 1109, 2, 0);
INSERT INTO public.games VALUES (572, 2014, 'Eighth-Final', 1108, 1116, 2, 1);
INSERT INTO public.games VALUES (573, 2014, 'Eighth-Final', 1121, 1110, 2, 1);
INSERT INTO public.games VALUES (574, 2014, 'Eighth-Final', 1124, 1122, 2, 1);
INSERT INTO public.games VALUES (575, 2014, 'Eighth-Final', 1111, 1118, 1, 0);
INSERT INTO public.games VALUES (576, 2014, 'Eighth-Final', 1113, 1125, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1105, 'France');
INSERT INTO public.teams VALUES (1106, 'England');
INSERT INTO public.teams VALUES (1107, 'Brazil');
INSERT INTO public.teams VALUES (1108, 'Germany');
INSERT INTO public.teams VALUES (1109, 'Nigeria');
INSERT INTO public.teams VALUES (1110, 'Mexico');
INSERT INTO public.teams VALUES (1111, 'Argentina');
INSERT INTO public.teams VALUES (1112, 'Sweden');
INSERT INTO public.teams VALUES (1113, 'Belgium');
INSERT INTO public.teams VALUES (1114, 'Portugal');
INSERT INTO public.teams VALUES (1115, 'Croatia');
INSERT INTO public.teams VALUES (1116, 'Algeria');
INSERT INTO public.teams VALUES (1117, 'Russia');
INSERT INTO public.teams VALUES (1118, 'Switzerland');
INSERT INTO public.teams VALUES (1119, 'Denmark');
INSERT INTO public.teams VALUES (1120, 'Japan');
INSERT INTO public.teams VALUES (1121, 'Netherlands');
INSERT INTO public.teams VALUES (1122, 'Greece');
INSERT INTO public.teams VALUES (1123, 'Chile');
INSERT INTO public.teams VALUES (1124, 'Costa Rica');
INSERT INTO public.teams VALUES (1125, 'United States');
INSERT INTO public.teams VALUES (1126, 'Spain');
INSERT INTO public.teams VALUES (1127, 'Colombia');
INSERT INTO public.teams VALUES (1128, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 576, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1128, true);


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

