--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id bigint,
    author_type character varying,
    author_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE active_admin_comments OWNER TO abukin;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE active_admin_comments_id_seq OWNER TO abukin;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE admin_users OWNER TO abukin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_users_id_seq OWNER TO abukin;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO abukin;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO abukin;

--
-- Name: user_courses; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE user_courses (
    id bigint NOT NULL,
    name character varying,
    description text,
    video bytea,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE user_courses OWNER TO abukin;

--
-- Name: user_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE user_courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_courses_id_seq OWNER TO abukin;

--
-- Name: user_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE user_courses_id_seq OWNED BY user_courses.id;


--
-- Name: user_events; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE user_events (
    id bigint NOT NULL,
    user_id integer,
    event_id integer,
    event_type character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE user_events OWNER TO abukin;

--
-- Name: user_events_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE user_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_events_id_seq OWNER TO abukin;

--
-- Name: user_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE user_events_id_seq OWNED BY user_events.id;


--
-- Name: user_tests; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE user_tests (
    id bigint NOT NULL,
    name character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE user_tests OWNER TO abukin;

--
-- Name: user_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE user_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_tests_id_seq OWNER TO abukin;

--
-- Name: user_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE user_tests_id_seq OWNED BY user_tests.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: abukin
--

CREATE TABLE users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE users OWNER TO abukin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: abukin
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO abukin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abukin
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_courses ALTER COLUMN id SET DEFAULT nextval('user_courses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_events ALTER COLUMN id SET DEFAULT nextval('user_events_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_tests ALTER COLUMN id SET DEFAULT nextval('user_tests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('active_admin_comments_id_seq', 1, false);


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	admin@example.com	$2a$11$DEwiExo9vPMHhMtItQu94.jKaNrYcWcbXt6Cm5b0LVBkSvRljpPj.	\N	\N	\N	7	2017-08-25 09:06:55.356343	2017-08-23 15:12:14.267596	127.0.0.1	127.0.0.1	2017-08-22 15:19:50.45938	2017-08-25 09:06:55.35746
\.


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('admin_users_id_seq', 1, true);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-08-22 15:16:12.286586	2017-08-22 15:16:12.286586
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY schema_migrations (version) FROM stdin;
20170822151807
20170822151809
20170822153500
20170822185909
20170822200854
20170825171455
20170825170254
\.


--
-- Data for Name: user_courses; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY user_courses (id, name, description, video, created_at, updated_at) FROM stdin;
11	Course_1	Description 1	\N	2017-08-23 09:56:54.997147	2017-08-23 09:56:54.997147
12	Course_2	Description 2	\N	2017-08-23 09:56:55.004233	2017-08-23 09:56:55.004233
13	Course_3	Description 3	\N	2017-08-23 09:56:55.008295	2017-08-23 09:56:55.008295
14	Course_4	Description 4	\N	2017-08-23 09:56:55.011318	2017-08-23 09:56:55.011318
15	Course_5	Description 5	\N	2017-08-23 09:56:55.014265	2017-08-23 09:56:55.014265
16	Course_6	Description 6	\N	2017-08-23 09:56:55.017252	2017-08-23 09:56:55.017252
17	Course_7	Description 7	\N	2017-08-23 09:56:55.020223	2017-08-23 09:56:55.020223
18	Course_8	Description 8	\N	2017-08-23 09:56:55.023086	2017-08-23 09:56:55.023086
19	Course_9	Description 9	\N	2017-08-23 09:56:55.026037	2017-08-23 09:56:55.026037
20	Course_10	Description 10	\N	2017-08-23 09:56:55.029117	2017-08-23 09:56:55.029117
\.


--
-- Name: user_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('user_courses_id_seq', 20, true);


--
-- Data for Name: user_events; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY user_events (id, user_id, event_id, event_type, created_at, updated_at) FROM stdin;
41	4	12	UserTest	2017-08-25 20:40:10.951367	2017-08-25 20:40:10.951367
42	4	11	UserTest	2017-08-25 20:40:10.957274	2017-08-25 20:40:10.957274
43	4	10	UserTest	2017-08-25 20:40:10.96164	2017-08-25 20:40:10.96164
44	4	18	UserCourse	2017-08-25 20:40:10.967864	2017-08-25 20:40:10.967864
\.


--
-- Name: user_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('user_events_id_seq', 44, true);


--
-- Data for Name: user_tests; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY user_tests (id, name, description, created_at, updated_at) FROM stdin;
4	Test_1	Description 1	2017-08-23 09:47:44.836774	2017-08-23 09:47:44.836774
5	Test_2	Description 2	2017-08-23 09:47:44.842356	2017-08-23 09:47:44.842356
6	Test_3	Description 3	2017-08-23 09:47:44.845321	2017-08-23 09:47:44.845321
7	Test_4	Description 4	2017-08-23 09:47:44.848804	2017-08-23 09:47:44.848804
8	Test_5	Description 5	2017-08-23 09:47:44.852351	2017-08-23 09:47:44.852351
9	Test_6	Description 6	2017-08-23 09:47:44.855917	2017-08-23 09:47:44.855917
10	Test_7	Description 7	2017-08-23 09:47:44.859477	2017-08-23 09:47:44.859477
11	Test_8	Description 8	2017-08-23 09:47:44.862452	2017-08-23 09:47:44.862452
12	Test_9	Description 9	2017-08-23 09:47:44.870389	2017-08-23 09:47:44.870389
13	Test_10	Description 10	2017-08-23 09:47:44.873286	2017-08-23 09:47:44.873286
\.


--
-- Name: user_tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('user_tests_id_seq', 13, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: abukin
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
4	bukin242@yandex.ru	$2a$11$IObEajc0w/omASW1CZsZVuiLv3bmvBy9N9xm0Iw/uHgwBVOnKqbn6	\N	\N	\N	4	2017-08-25 20:42:45.632997	2017-08-23 14:37:42.961478	127.0.0.1	127.0.0.1	2017-08-23 11:10:59.15626	2017-08-25 20:42:45.633818
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abukin
--

SELECT pg_catalog.setval('users_id_seq', 4, true);


--
-- Name: active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: user_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_courses
    ADD CONSTRAINT user_courses_pkey PRIMARY KEY (id);


--
-- Name: user_events_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_events
    ADD CONSTRAINT user_events_pkey PRIMARY KEY (id);


--
-- Name: user_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY user_tests
    ADD CONSTRAINT user_tests_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: abukin
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: abukin
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: abukin
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: abukin
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: abukin
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: abukin
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_user_events_on_event_type_and_event_id; Type: INDEX; Schema: public; Owner: abukin
--

CREATE INDEX index_user_events_on_event_type_and_event_id ON user_events USING btree (event_type, event_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: abukin
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: abukin
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

