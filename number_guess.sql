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
    user_id integer,
    guesses_needed integer
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
    username character varying(22),
    games_played integer
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

INSERT INTO public.games VALUES (1, 1, 10);
INSERT INTO public.games VALUES (2, 1, 14);
INSERT INTO public.games VALUES (3, 2, 7);
INSERT INTO public.games VALUES (4, 2, 9);
INSERT INTO public.games VALUES (5, 3, 661);
INSERT INTO public.games VALUES (6, 3, 923);
INSERT INTO public.games VALUES (7, 4, 307);
INSERT INTO public.games VALUES (8, 4, 960);
INSERT INTO public.games VALUES (9, 3, 101);
INSERT INTO public.games VALUES (10, 3, 34);
INSERT INTO public.games VALUES (11, 3, 930);
INSERT INTO public.games VALUES (12, 5, 21);
INSERT INTO public.games VALUES (13, 5, 862);
INSERT INTO public.games VALUES (14, 6, 593);
INSERT INTO public.games VALUES (15, 6, 663);
INSERT INTO public.games VALUES (16, 5, 164);
INSERT INTO public.games VALUES (17, 5, 70);
INSERT INTO public.games VALUES (18, 5, 171);
INSERT INTO public.games VALUES (19, 7, 11);
INSERT INTO public.games VALUES (20, 7, 349);
INSERT INTO public.games VALUES (21, 8, 612);
INSERT INTO public.games VALUES (22, 8, 417);
INSERT INTO public.games VALUES (23, 7, 52);
INSERT INTO public.games VALUES (24, 7, 394);
INSERT INTO public.games VALUES (25, 7, 462);
INSERT INTO public.games VALUES (26, 9, 946);
INSERT INTO public.games VALUES (27, 9, 710);
INSERT INTO public.games VALUES (28, 10, 762);
INSERT INTO public.games VALUES (29, 10, 714);
INSERT INTO public.games VALUES (30, 9, 131);
INSERT INTO public.games VALUES (31, 9, 62);
INSERT INTO public.games VALUES (32, 9, 902);
INSERT INTO public.games VALUES (33, 11, 68);
INSERT INTO public.games VALUES (34, 11, 431);
INSERT INTO public.games VALUES (35, 12, 758);
INSERT INTO public.games VALUES (36, 12, 949);
INSERT INTO public.games VALUES (37, 11, 488);
INSERT INTO public.games VALUES (38, 11, 200);
INSERT INTO public.games VALUES (39, 11, 380);
INSERT INTO public.games VALUES (40, 13, 796);
INSERT INTO public.games VALUES (41, 13, 616);
INSERT INTO public.games VALUES (42, 14, 643);
INSERT INTO public.games VALUES (43, 14, 623);
INSERT INTO public.games VALUES (44, 13, 248);
INSERT INTO public.games VALUES (45, 13, 935);
INSERT INTO public.games VALUES (46, 13, 605);
INSERT INTO public.games VALUES (47, 15, 901);
INSERT INTO public.games VALUES (48, 15, 350);
INSERT INTO public.games VALUES (49, 16, 981);
INSERT INTO public.games VALUES (50, 16, 74);
INSERT INTO public.games VALUES (51, 15, 191);
INSERT INTO public.games VALUES (52, 15, 619);
INSERT INTO public.games VALUES (53, 15, 75);
INSERT INTO public.games VALUES (54, 17, 151);
INSERT INTO public.games VALUES (55, 17, 122);
INSERT INTO public.games VALUES (56, 19, 208);
INSERT INTO public.games VALUES (57, 19, 125);
INSERT INTO public.games VALUES (58, 17, 858);
INSERT INTO public.games VALUES (59, 17, 616);
INSERT INTO public.games VALUES (60, 17, 310);
INSERT INTO public.games VALUES (61, 24, 278);
INSERT INTO public.games VALUES (62, 24, 331);
INSERT INTO public.games VALUES (63, 25, 372);
INSERT INTO public.games VALUES (64, 25, 753);
INSERT INTO public.games VALUES (65, 24, 479);
INSERT INTO public.games VALUES (66, 24, 453);
INSERT INTO public.games VALUES (67, 24, 261);
INSERT INTO public.games VALUES (68, 26, 7);
INSERT INTO public.games VALUES (69, 26, 719);
INSERT INTO public.games VALUES (70, 27, 423);
INSERT INTO public.games VALUES (71, 27, 956);
INSERT INTO public.games VALUES (72, 26, 696);
INSERT INTO public.games VALUES (73, 26, 419);
INSERT INTO public.games VALUES (74, 26, 45);
INSERT INTO public.games VALUES (75, 28, 57);
INSERT INTO public.games VALUES (76, 28, 853);
INSERT INTO public.games VALUES (77, 29, 287);
INSERT INTO public.games VALUES (78, 29, 469);
INSERT INTO public.games VALUES (79, 28, 85);
INSERT INTO public.games VALUES (80, 28, 250);
INSERT INTO public.games VALUES (81, 28, 466);
INSERT INTO public.games VALUES (82, 30, 397);
INSERT INTO public.games VALUES (83, 30, 114);
INSERT INTO public.games VALUES (84, 31, 593);
INSERT INTO public.games VALUES (85, 31, 836);
INSERT INTO public.games VALUES (86, 30, 742);
INSERT INTO public.games VALUES (87, 30, 435);
INSERT INTO public.games VALUES (88, 30, 194);
INSERT INTO public.games VALUES (89, 32, 975);
INSERT INTO public.games VALUES (90, 32, 773);
INSERT INTO public.games VALUES (91, 33, 19);
INSERT INTO public.games VALUES (92, 33, 156);
INSERT INTO public.games VALUES (93, 32, 663);
INSERT INTO public.games VALUES (94, 32, 554);
INSERT INTO public.games VALUES (95, 32, 369);
INSERT INTO public.games VALUES (96, 1, 10);
INSERT INTO public.games VALUES (97, 1, 11);
INSERT INTO public.games VALUES (98, 1, 6);
INSERT INTO public.games VALUES (99, 34, 323);
INSERT INTO public.games VALUES (100, 34, 503);
INSERT INTO public.games VALUES (101, 35, 588);
INSERT INTO public.games VALUES (102, 35, 619);
INSERT INTO public.games VALUES (103, 34, 277);
INSERT INTO public.games VALUES (104, 34, 41);
INSERT INTO public.games VALUES (105, 34, 279);
INSERT INTO public.games VALUES (106, 36, 203);
INSERT INTO public.games VALUES (107, 36, 769);
INSERT INTO public.games VALUES (108, 37, 38);
INSERT INTO public.games VALUES (109, 37, 864);
INSERT INTO public.games VALUES (110, 36, 328);
INSERT INTO public.games VALUES (111, 36, 212);
INSERT INTO public.games VALUES (112, 36, 931);
INSERT INTO public.games VALUES (113, 38, 524);
INSERT INTO public.games VALUES (114, 38, 294);
INSERT INTO public.games VALUES (115, 39, 384);
INSERT INTO public.games VALUES (116, 39, 742);
INSERT INTO public.games VALUES (117, 38, 814);
INSERT INTO public.games VALUES (118, 38, 278);
INSERT INTO public.games VALUES (119, 38, 772);
INSERT INTO public.games VALUES (120, 2, 13);
INSERT INTO public.games VALUES (121, 40, 377);
INSERT INTO public.games VALUES (122, 40, 604);
INSERT INTO public.games VALUES (123, 41, 395);
INSERT INTO public.games VALUES (124, 41, 805);
INSERT INTO public.games VALUES (125, 40, 489);
INSERT INTO public.games VALUES (126, 40, 97);
INSERT INTO public.games VALUES (127, 40, 79);
INSERT INTO public.games VALUES (128, 1, 8);
INSERT INTO public.games VALUES (129, 42, 16);
INSERT INTO public.games VALUES (130, 42, 355);
INSERT INTO public.games VALUES (131, 43, 620);
INSERT INTO public.games VALUES (132, 43, 34);
INSERT INTO public.games VALUES (133, 42, 189);
INSERT INTO public.games VALUES (134, 42, 170);
INSERT INTO public.games VALUES (135, 42, 330);
INSERT INTO public.games VALUES (136, 1, 11);
INSERT INTO public.games VALUES (137, 1, 2);
INSERT INTO public.games VALUES (138, 44, 315);
INSERT INTO public.games VALUES (139, 44, 502);
INSERT INTO public.games VALUES (140, 45, 729);
INSERT INTO public.games VALUES (141, 45, 660);
INSERT INTO public.games VALUES (142, 44, 102);
INSERT INTO public.games VALUES (143, 44, 790);
INSERT INTO public.games VALUES (144, 44, 341);
INSERT INTO public.games VALUES (145, 46, 996);
INSERT INTO public.games VALUES (146, 46, 759);
INSERT INTO public.games VALUES (147, 47, 145);
INSERT INTO public.games VALUES (148, 47, 464);
INSERT INTO public.games VALUES (149, 46, 236);
INSERT INTO public.games VALUES (150, 46, 990);
INSERT INTO public.games VALUES (151, 46, 565);
INSERT INTO public.games VALUES (152, 48, 134);
INSERT INTO public.games VALUES (153, 48, 428);
INSERT INTO public.games VALUES (154, 49, 672);
INSERT INTO public.games VALUES (155, 49, 543);
INSERT INTO public.games VALUES (156, 48, 103);
INSERT INTO public.games VALUES (157, 48, 871);
INSERT INTO public.games VALUES (158, 48, 542);
INSERT INTO public.games VALUES (159, 50, 331);
INSERT INTO public.games VALUES (160, 50, 753);
INSERT INTO public.games VALUES (161, 51, 981);
INSERT INTO public.games VALUES (162, 51, 844);
INSERT INTO public.games VALUES (163, 50, 332);
INSERT INTO public.games VALUES (164, 50, 503);
INSERT INTO public.games VALUES (165, 50, 33);
INSERT INTO public.games VALUES (166, 52, 32);
INSERT INTO public.games VALUES (167, 52, 676);
INSERT INTO public.games VALUES (168, 53, 382);
INSERT INTO public.games VALUES (169, 53, 999);
INSERT INTO public.games VALUES (170, 52, 529);
INSERT INTO public.games VALUES (171, 52, 994);
INSERT INTO public.games VALUES (172, 52, 688);
INSERT INTO public.games VALUES (173, 54, 976);
INSERT INTO public.games VALUES (174, 54, 63);
INSERT INTO public.games VALUES (175, 55, 587);
INSERT INTO public.games VALUES (176, 55, 736);
INSERT INTO public.games VALUES (177, 54, 285);
INSERT INTO public.games VALUES (178, 54, 287);
INSERT INTO public.games VALUES (179, 54, 825);
INSERT INTO public.games VALUES (180, 56, 159);
INSERT INTO public.games VALUES (181, 56, 418);
INSERT INTO public.games VALUES (182, 57, 268);
INSERT INTO public.games VALUES (183, 57, 235);
INSERT INTO public.games VALUES (184, 56, 264);
INSERT INTO public.games VALUES (185, 56, 696);
INSERT INTO public.games VALUES (186, 56, 517);
INSERT INTO public.games VALUES (187, 58, 303);
INSERT INTO public.games VALUES (188, 58, 279);
INSERT INTO public.games VALUES (189, 59, 231);
INSERT INTO public.games VALUES (190, 59, 922);
INSERT INTO public.games VALUES (191, 58, 477);
INSERT INTO public.games VALUES (192, 58, 430);
INSERT INTO public.games VALUES (193, 58, 806);
INSERT INTO public.games VALUES (194, 61, 190);
INSERT INTO public.games VALUES (195, 61, 697);
INSERT INTO public.games VALUES (196, 62, 691);
INSERT INTO public.games VALUES (197, 62, 854);
INSERT INTO public.games VALUES (198, 61, 202);
INSERT INTO public.games VALUES (199, 61, 628);
INSERT INTO public.games VALUES (200, 61, 121);
INSERT INTO public.games VALUES (201, 63, 549);
INSERT INTO public.games VALUES (202, 63, 509);
INSERT INTO public.games VALUES (203, 64, 996);
INSERT INTO public.games VALUES (204, 64, 91);
INSERT INTO public.games VALUES (205, 63, 24);
INSERT INTO public.games VALUES (206, 63, 444);
INSERT INTO public.games VALUES (207, 63, 186);
INSERT INTO public.games VALUES (208, 65, 204);
INSERT INTO public.games VALUES (209, 65, 606);
INSERT INTO public.games VALUES (210, 66, 971);
INSERT INTO public.games VALUES (211, 66, 268);
INSERT INTO public.games VALUES (212, 65, 313);
INSERT INTO public.games VALUES (213, 65, 701);
INSERT INTO public.games VALUES (214, 65, 151);
INSERT INTO public.games VALUES (215, 67, 863);
INSERT INTO public.games VALUES (216, 67, 231);
INSERT INTO public.games VALUES (217, 68, 16);
INSERT INTO public.games VALUES (218, 68, 559);
INSERT INTO public.games VALUES (219, 67, 44);
INSERT INTO public.games VALUES (220, 67, 327);
INSERT INTO public.games VALUES (221, 67, 775);
INSERT INTO public.games VALUES (222, 70, 568);
INSERT INTO public.games VALUES (223, 70, 100);
INSERT INTO public.games VALUES (224, 71, 780);
INSERT INTO public.games VALUES (225, 71, 72);
INSERT INTO public.games VALUES (226, 70, 516);
INSERT INTO public.games VALUES (227, 70, 830);
INSERT INTO public.games VALUES (228, 70, 135);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'user_1742205607060', 2);
INSERT INTO public.users VALUES (37, 'user_1742207830208', 2);
INSERT INTO public.users VALUES (3, 'user_1742205607061', 5);
INSERT INTO public.users VALUES (19, 'user_1742206019113', 2);
INSERT INTO public.users VALUES (53, 'user_1742208567317', 2);
INSERT INTO public.users VALUES (6, 'user_1742205726904', 2);
INSERT INTO public.users VALUES (36, 'user_1742207830209', 5);
INSERT INTO public.users VALUES (5, 'user_1742205726905', 5);
INSERT INTO public.users VALUES (17, 'user_1742206019114', 5);
INSERT INTO public.users VALUES (8, 'user_1742205755332', 2);
INSERT INTO public.users VALUES (71, 'user_1742209405965', 2);
INSERT INTO public.users VALUES (7, 'user_1742205755333', 5);
INSERT INTO public.users VALUES (52, 'user_1742208567318', 5);
INSERT INTO public.users VALUES (25, 'user_1742206349157', 2);
INSERT INTO public.users VALUES (10, 'user_1742205763503', 2);
INSERT INTO public.users VALUES (39, 'user_1742207840867', 2);
INSERT INTO public.users VALUES (9, 'user_1742205763504', 5);
INSERT INTO public.users VALUES (24, 'user_1742206349158', 5);
INSERT INTO public.users VALUES (12, 'user_1742205785185', 2);
INSERT INTO public.users VALUES (38, 'user_1742207840868', 5);
INSERT INTO public.users VALUES (11, 'user_1742205785186', 5);
INSERT INTO public.users VALUES (2, 'Andrew', 3);
INSERT INTO public.users VALUES (27, 'user_1742206352684', 2);
INSERT INTO public.users VALUES (14, 'user_1742205885771', 2);
INSERT INTO public.users VALUES (26, 'user_1742206352685', 5);
INSERT INTO public.users VALUES (13, 'user_1742205885772', 5);
INSERT INTO public.users VALUES (16, 'user_1742205931018', 2);
INSERT INTO public.users VALUES (70, 'user_1742209405966', 5);
INSERT INTO public.users VALUES (15, 'user_1742205931019', 5);
INSERT INTO public.users VALUES (29, 'user_1742206354863', 2);
INSERT INTO public.users VALUES (41, 'user_1742207885215', 2);
INSERT INTO public.users VALUES (55, 'user_1742208574386', 2);
INSERT INTO public.users VALUES (28, 'user_1742206354864', 5);
INSERT INTO public.users VALUES (40, 'user_1742207885216', 5);
INSERT INTO public.users VALUES (31, 'user_1742206356988', 2);
INSERT INTO public.users VALUES (54, 'user_1742208574387', 5);
INSERT INTO public.users VALUES (30, 'user_1742206356989', 5);
INSERT INTO public.users VALUES (33, 'user_1742206359176', 2);
INSERT INTO public.users VALUES (43, 'user_1742208053760', 2);
INSERT INTO public.users VALUES (32, 'user_1742206359177', 5);
INSERT INTO public.users VALUES (42, 'user_1742208053761', 5);
INSERT INTO public.users VALUES (57, 'user_1742208749726', 2);
INSERT INTO public.users VALUES (1, 'Jason', 8);
INSERT INTO public.users VALUES (35, 'user_1742207469458', 2);
INSERT INTO public.users VALUES (34, 'user_1742207469459', 5);
INSERT INTO public.users VALUES (56, 'user_1742208749727', 5);
INSERT INTO public.users VALUES (45, 'user_1742208195216', 2);
INSERT INTO public.users VALUES (44, 'user_1742208195217', 5);
INSERT INTO public.users VALUES (47, 'user_1742208342678', 2);
INSERT INTO public.users VALUES (59, 'user_1742208785925', 2);
INSERT INTO public.users VALUES (46, 'user_1742208342679', 5);
INSERT INTO public.users VALUES (58, 'user_1742208785926', 5);
INSERT INTO public.users VALUES (60, 'asd', 0);
INSERT INTO public.users VALUES (49, 'user_1742208359837', 2);
INSERT INTO public.users VALUES (48, 'user_1742208359838', 5);
INSERT INTO public.users VALUES (51, 'user_1742208481080', 2);
INSERT INTO public.users VALUES (62, 'user_1742209009895', 2);
INSERT INTO public.users VALUES (50, 'user_1742208481081', 5);
INSERT INTO public.users VALUES (61, 'user_1742209009896', 5);
INSERT INTO public.users VALUES (64, 'user_1742209169040', 2);
INSERT INTO public.users VALUES (63, 'user_1742209169041', 5);
INSERT INTO public.users VALUES (66, 'user_1742209188452', 2);
INSERT INTO public.users VALUES (65, 'user_1742209188453', 5);
INSERT INTO public.users VALUES (68, 'user_1742209214907', 2);
INSERT INTO public.users VALUES (67, 'user_1742209214908', 5);
INSERT INTO public.users VALUES (69, 'Ken', 0);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 228, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 71, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users unique_username; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_username UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

