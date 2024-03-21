--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: Book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Book" (
    id text NOT NULL,
    name text NOT NULL,
    "volumesCount" integer NOT NULL,
    author text NOT NULL,
    mark integer DEFAULT 0 NOT NULL,
    "releaseDate" text NOT NULL
);


ALTER TABLE public."Book" OWNER TO postgres;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Data for Name: Book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Book" (id, name, "volumesCount", author, mark, "releaseDate") FROM stdin;
0b5eb45c-6e56-4911-afa9-45a2dc68bbb2	lord of the rings	1	x	1	01/02/2000
c52ddd0d-85f7-469a-a351-23c42fc55fed	game of thrones	1	x	1	01/02/2000
185c681c-eb34-443a-90ee-6985dfc2c5ce	hunger games	1	x	1	01/02/2000
056557c9-2a81-4308-bd2e-dd2efde025b6	percy jackson	1	x	1	01/02/2000
a9c7a366-f758-47e0-bf5b-d58bfbbfffb4	l'etranger	1	x	1	01/02/2000
b78686b2-53d0-4d0a-bacb-bd2bb79e0be4	gatsby le magnifique	1	fitzgerald	1	01/02/2000
c8f5f198-eaf7-4f4c-b559-eec1f5409c1c	les fleurs du mal	1	baudelaire	1	01/02/2000
0f084697-31f8-4e83-a9e1-f36e53882f1b	les miserables	1	hugo	1	01/02/2000
e91128b1-9edb-472a-9561-ea30c54398dc	chair de poule	1	x	1	01/02/2000
c787884e-8614-481b-9f35-fc21c8d658e3	madame bovary	1	flaubert	1	01/02/2000
72fbf47b-412a-4785-9140-bb186a8d531a	harry potter	7	rowling	1	02/02/2000
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
051b0014-ceb0-4755-b467-3cf741aa752b	35d858919855fa77aa4387766ce24759d0598e40ae96f35a27ec7db820328a6e	2024-03-21 11:26:39.605804+00	20240321112639_	\N	\N	2024-03-21 11:26:39.596802+00	1
\.


--
-- Name: Book Book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

