--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 13.1

-- Started on 2021-04-18 18:16:39 -05

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
-- TOC entry 202 (class 1259 OID 16836)
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO admin;

--
-- TOC entry 203 (class 1259 OID 16839)
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO admin;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 203
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- TOC entry 204 (class 1259 OID 16841)
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO admin;

--
-- TOC entry 205 (class 1259 OID 16844)
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO admin;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 205
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- TOC entry 206 (class 1259 OID 16846)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- TOC entry 207 (class 1259 OID 16849)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 208 (class 1259 OID 16851)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- TOC entry 209 (class 1259 OID 16854)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 210 (class 1259 OID 16856)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- TOC entry 211 (class 1259 OID 16859)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 212 (class 1259 OID 16861)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- TOC entry 213 (class 1259 OID 16867)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 16870)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 215 (class 1259 OID 16872)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 216 (class 1259 OID 16874)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 16877)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 218 (class 1259 OID 16879)
-- Name: database_conference; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_conference (
    id integer NOT NULL,
    name text NOT NULL,
    short_name character varying(200) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    category character varying(200) NOT NULL,
    status text NOT NULL,
    url character varying(500) NOT NULL,
    country character varying(300) NOT NULL,
    town character varying(200) NOT NULL,
    information text NOT NULL
);


ALTER TABLE public.database_conference OWNER TO admin;

--
-- TOC entry 219 (class 1259 OID 16885)
-- Name: database_conference_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_conference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_conference_id_seq OWNER TO admin;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 219
-- Name: database_conference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_conference_id_seq OWNED BY public.database_conference.id;


--
-- TOC entry 220 (class 1259 OID 16887)
-- Name: database_conferenceassistance; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_conferenceassistance (
    id integer NOT NULL,
    coordinator boolean NOT NULL,
    join_date date NOT NULL,
    assistant_id integer NOT NULL,
    conference_id integer NOT NULL
);


ALTER TABLE public.database_conferenceassistance OWNER TO admin;

--
-- TOC entry 221 (class 1259 OID 16890)
-- Name: database_conferenceassistance_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_conferenceassistance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_conferenceassistance_id_seq OWNER TO admin;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 221
-- Name: database_conferenceassistance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_conferenceassistance_id_seq OWNED BY public.database_conferenceassistance.id;


--
-- TOC entry 222 (class 1259 OID 16892)
-- Name: database_presentation; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_presentation (
    id integer NOT NULL,
    title text NOT NULL,
    abstract text NOT NULL,
    date date NOT NULL,
    category character varying(200) NOT NULL,
    "group" character varying(200) NOT NULL,
    status text NOT NULL,
    information text NOT NULL,
    conference_id integer NOT NULL,
    speaker_id integer,
    presentation_file character varying(100) NOT NULL,
    state character varying(20) NOT NULL
);


ALTER TABLE public.database_presentation OWNER TO admin;

--
-- TOC entry 223 (class 1259 OID 16898)
-- Name: database_presentation_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_presentation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_presentation_id_seq OWNER TO admin;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 223
-- Name: database_presentation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_presentation_id_seq OWNED BY public.database_presentation.id;


--
-- TOC entry 224 (class 1259 OID 16900)
-- Name: database_usermessage; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_usermessage (
    id integer NOT NULL,
    message text NOT NULL,
    seen boolean NOT NULL,
    message_from_id integer NOT NULL,
    message_to_id integer NOT NULL
);


ALTER TABLE public.database_usermessage OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 16906)
-- Name: database_usermessages_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_usermessages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_usermessages_id_seq OWNER TO admin;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 225
-- Name: database_usermessages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_usermessages_id_seq OWNED BY public.database_usermessage.id;


--
-- TOC entry 226 (class 1259 OID 16908)
-- Name: database_userprofile; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_userprofile (
    id integer NOT NULL,
    institution character varying(200),
    title character varying(50),
    first_name character varying(150),
    last_name character varying(200),
    status text,
    information text,
    coordinator boolean NOT NULL,
    speaker boolean NOT NULL,
    last_login timestamp with time zone,
    password character varying(128) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL
);


ALTER TABLE public.database_userprofile OWNER TO admin;

--
-- TOC entry 246 (class 1259 OID 17379)
-- Name: database_userprofile_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_userprofile_groups (
    id integer NOT NULL,
    userprofile_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.database_userprofile_groups OWNER TO admin;

--
-- TOC entry 245 (class 1259 OID 17377)
-- Name: database_userprofile_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_userprofile_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_userprofile_groups_id_seq OWNER TO admin;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 245
-- Name: database_userprofile_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_userprofile_groups_id_seq OWNED BY public.database_userprofile_groups.id;


--
-- TOC entry 227 (class 1259 OID 16914)
-- Name: database_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_userprofile_id_seq OWNER TO admin;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 227
-- Name: database_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_userprofile_id_seq OWNED BY public.database_userprofile.id;


--
-- TOC entry 248 (class 1259 OID 17390)
-- Name: database_userprofile_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.database_userprofile_user_permissions (
    id integer NOT NULL,
    userprofile_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.database_userprofile_user_permissions OWNER TO admin;

--
-- TOC entry 247 (class 1259 OID 17388)
-- Name: database_userprofile_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.database_userprofile_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_userprofile_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 247
-- Name: database_userprofile_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.database_userprofile_user_permissions_id_seq OWNED BY public.database_userprofile_user_permissions.id;


--
-- TOC entry 228 (class 1259 OID 16916)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- TOC entry 229 (class 1259 OID 16923)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 229
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 230 (class 1259 OID 16925)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- TOC entry 231 (class 1259 OID 16928)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 232 (class 1259 OID 16930)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- TOC entry 233 (class 1259 OID 16936)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 234 (class 1259 OID 16938)
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- TOC entry 235 (class 1259 OID 16944)
-- Name: django_site; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO admin;

--
-- TOC entry 236 (class 1259 OID 16947)
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO admin;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 236
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- TOC entry 237 (class 1259 OID 16949)
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO admin;

--
-- TOC entry 238 (class 1259 OID 16955)
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO admin;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 238
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- TOC entry 239 (class 1259 OID 16957)
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO admin;

--
-- TOC entry 240 (class 1259 OID 16963)
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO admin;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 240
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- TOC entry 241 (class 1259 OID 16965)
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO admin;

--
-- TOC entry 242 (class 1259 OID 16968)
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO admin;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 242
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- TOC entry 243 (class 1259 OID 16970)
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO admin;

--
-- TOC entry 244 (class 1259 OID 16976)
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO admin;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 244
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- TOC entry 3109 (class 2604 OID 16978)
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- TOC entry 3110 (class 2604 OID 16979)
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- TOC entry 3111 (class 2604 OID 16980)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3112 (class 2604 OID 16981)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3113 (class 2604 OID 16982)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3114 (class 2604 OID 16983)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3115 (class 2604 OID 16984)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3116 (class 2604 OID 16985)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3117 (class 2604 OID 16986)
-- Name: database_conference id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conference ALTER COLUMN id SET DEFAULT nextval('public.database_conference_id_seq'::regclass);


--
-- TOC entry 3118 (class 2604 OID 16987)
-- Name: database_conferenceassistance id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conferenceassistance ALTER COLUMN id SET DEFAULT nextval('public.database_conferenceassistance_id_seq'::regclass);


--
-- TOC entry 3119 (class 2604 OID 16988)
-- Name: database_presentation id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_presentation ALTER COLUMN id SET DEFAULT nextval('public.database_presentation_id_seq'::regclass);


--
-- TOC entry 3120 (class 2604 OID 16989)
-- Name: database_usermessage id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_usermessage ALTER COLUMN id SET DEFAULT nextval('public.database_usermessages_id_seq'::regclass);


--
-- TOC entry 3121 (class 2604 OID 16990)
-- Name: database_userprofile id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile ALTER COLUMN id SET DEFAULT nextval('public.database_userprofile_id_seq'::regclass);


--
-- TOC entry 3131 (class 2604 OID 17382)
-- Name: database_userprofile_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_groups ALTER COLUMN id SET DEFAULT nextval('public.database_userprofile_groups_id_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 17393)
-- Name: database_userprofile_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.database_userprofile_user_permissions_id_seq'::regclass);


--
-- TOC entry 3122 (class 2604 OID 16991)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3124 (class 2604 OID 16992)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3125 (class 2604 OID 16993)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3126 (class 2604 OID 16994)
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- TOC entry 3127 (class 2604 OID 16995)
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- TOC entry 3128 (class 2604 OID 16996)
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- TOC entry 3129 (class 2604 OID 16997)
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- TOC entry 3130 (class 2604 OID 16998)
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- TOC entry 3399 (class 0 OID 16836)
-- Dependencies: 202
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	f.e@cern.ch	f	t	5
2	markus.klute@cern.ch	f	t	6
3	tyjyang@mit.edu	f	t	7
4	paolo.giacomelli@cern.ch	f	t	8
5	christophe.grojean@cern.ch	f	t	9
6	alain.blondel@cern.ch	f	t	10
7	rebeca.gonzalez.suarez@cern.ch	f	t	11
8	david.d'enterria@cern.ch	f	t	13
9	patrick.janot@cern.ch	f	t	14
10	juan.alcaraz@cern.ch	f	t	15
11	patrizia.azzi@cern.ch	f	t	16
12	gerardo.ganis@cern.ch	f	t	17
\.


--
-- TOC entry 3401 (class 0 OID 16841)
-- Dependencies: 204
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- TOC entry 3403 (class 0 OID 16846)
-- Dependencies: 206
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
1	normal users
\.


--
-- TOC entry 3405 (class 0 OID 16851)
-- Dependencies: 208
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
\.


--
-- TOC entry 3407 (class 0 OID 16856)
-- Dependencies: 210
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add conference	1	add_conference
2	Can change conference	1	change_conference
3	Can delete conference	1	delete_conference
4	Can view conference	1	view_conference
5	Can add presentation	2	add_presentation
6	Can change presentation	2	change_presentation
7	Can delete presentation	2	delete_presentation
8	Can view presentation	2	view_presentation
9	Can add user profile	3	add_userprofile
10	Can change user profile	3	change_userprofile
11	Can delete user profile	3	delete_userprofile
12	Can view user profile	3	view_userprofile
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add site	10	add_site
38	Can change site	10	change_site
39	Can delete site	10	delete_site
40	Can view site	10	view_site
41	Can add email address	11	add_emailaddress
42	Can change email address	11	change_emailaddress
43	Can delete email address	11	delete_emailaddress
44	Can view email address	11	view_emailaddress
45	Can add email confirmation	12	add_emailconfirmation
46	Can change email confirmation	12	change_emailconfirmation
47	Can delete email confirmation	12	delete_emailconfirmation
48	Can view email confirmation	12	view_emailconfirmation
49	Can add social account	13	add_socialaccount
50	Can change social account	13	change_socialaccount
51	Can delete social account	13	delete_socialaccount
52	Can view social account	13	view_socialaccount
53	Can add social application	14	add_socialapp
54	Can change social application	14	change_socialapp
55	Can delete social application	14	delete_socialapp
56	Can view social application	14	view_socialapp
57	Can add social application token	15	add_socialtoken
58	Can change social application token	15	change_socialtoken
59	Can delete social application token	15	delete_socialtoken
60	Can view social application token	15	view_socialtoken
61	Can add user messages	16	add_usermessages
62	Can change user messages	16	change_usermessages
63	Can delete user messages	16	delete_usermessages
64	Can view user messages	16	view_usermessages
65	Can add user message	16	add_usermessage
66	Can change user message	16	change_usermessage
67	Can delete user message	16	delete_usermessage
68	Can view user message	16	view_usermessage
69	Can add conference assistance	17	add_conferenceassistance
70	Can change conference assistance	17	change_conferenceassistance
71	Can delete conference assistance	17	delete_conferenceassistance
72	Can view conference assistance	17	view_conferenceassistance
\.


--
-- TOC entry 3409 (class 0 OID 16861)
-- Dependencies: 212
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
5	!xhZoCfCNx11QB49mZke8MMo55E3551cCjlwBTblk	2021-04-08 21:08:20.362549+02	f	fespinos	Fabio Alberto	Espinosa Burbano	f.e@cern.ch	f	t	2021-03-31 17:40:53.987823+02
6	!DS3CxHegoHs590tcf5NOIFcc9sraEdFBvTuUFaRU	2021-04-08 22:49:36.869925+02	f	markus54	Markus	Klute	markus.klute@cern.ch	f	t	2021-04-06 20:19:06.216333+02
4	pbkdf2_sha256$150000$2aLIQ0WPnDaF$4eW78y5ngHLbARF1FpTsq3gwqxTVUsgXkV/jkSx00t8=	2021-04-08 22:52:06.63539+02	t	klute	Markus	Klute	klute@mit.edu	t	t	2021-03-31 17:31:36+02
7	!FFmfpxSCnaXPtpO7zvPSSasBieoeUAfusE7Gj1dZ	2021-04-08 23:42:21.34249+02	f	tyjyang	Tianyu Justin	Yang	tyjyang@mit.edu	f	t	2021-04-08 23:42:21.272707+02
8	!Nk0H9186vfhiyuzqsnwOFfVgOfL343kNAVbUxCw1	2021-04-09 16:51:47.287271+02	f	giacomel	Paolo	Giacomelli	paolo.giacomelli@cern.ch	f	t	2021-04-09 16:51:47.21679+02
9	!rLNCWb1P7ZlHn5QWrGTPsIGLnqM46MNQ35FWm5mE	2021-04-12 08:43:11.960958+02	f	grojean	Christophe	Grojean	christophe.grojean@cern.ch	f	t	2021-04-12 08:43:11.885949+02
11	!1gKnKAOL5z2AnYjmFlWSzdPmJX9PBSgn4TPTfYhI	2021-04-12 15:50:56.650432+02	f	rebeca	Rebeca	Gonzalez Suarez	rebeca.gonzalez.suarez@cern.ch	f	t	2021-04-12 15:50:56.586281+02
10	!oIrYBafGKR9N6rNkbewHl3W64V1tPhiifc15CH7M	2021-04-12 19:06:15.031698+02	f	bdl	Alain	Blondel	alain.blondel@cern.ch	f	t	2021-04-12 11:15:34.475416+02
12	pbkdf2_sha256$150000$Ujz4jGpuM3Om$GtAE5lWnrKQvsBoq9JeGAMXEAh50mtIQEC6b/ey7TOQ=	2021-04-12 19:09:16.477344+02	f	bortoletto			daniela.bortoletto@cern.ch	f	t	2021-04-12 19:09:16.162903+02
13	!CtPT1GeYB54g95UdcnysnbvL4TVeVejct0zwpQkq	2021-04-15 15:05:14.756504+02	f	dde	David	Enterria	david.d'enterria@cern.ch	f	t	2021-04-15 15:05:14.681996+02
14	!ZThOVn6XWB2nrDbikuFRIVKsOBbwtxCvhtAhaZbL	2021-04-15 15:08:56.25713+02	f	janot	Patrick	Janot	patrick.janot@cern.ch	f	t	2021-04-15 15:08:56.184443+02
15	!owndUOw7bAz4bAIOpxeW0EYTEy2PuFNVImmgcATM	2021-04-15 15:10:23.373159+02	f	alcaraz	Juan	Alcaraz Maestre	juan.alcaraz@cern.ch	f	t	2021-04-15 15:10:23.303976+02
16	!Ts6NlDR4aUV3eCy388Jujvsqi7nc0eTIiwmXWsfk	2021-04-15 15:10:26.355542+02	f	azzi	Patrizia	Azzi	patrizia.azzi@cern.ch	f	t	2021-04-15 15:10:26.294455+02
17	!uZGnBfCjPGTnOCsjOzXV6XWCJoF8GBEDGBYlt86y	2021-04-15 15:10:50.342595+02	f	ganis	Gerardo	Ganis	gerardo.ganis@cern.ch	f	t	2021-04-15 15:10:50.276345+02
2	pbkdf2_sha256$150000$gTvRnENfqvtN$Xuvl5PDdV7wWXMS9L/si1OskLUWlpZ/hsHDhoxTCCcQ=	2021-04-18 17:21:34.015839+02	t	fabioespinosa			fabioe@mit.edu	t	t	2019-05-30 15:31:42.666472+02
1	pbkdf2_sha256$150000$A7VA6dWx4NZd$Vs43piCDJuRf3uGMbsg4U9sK0xzDxCgoaWv6URaD/20=	2019-05-31 00:20:31.778305+02	f	fabioespinosa3			fabioe@mit.edu1	f	t	2019-05-30 15:27:53+02
\.


--
-- TOC entry 3410 (class 0 OID 16867)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	1
\.


--
-- TOC entry 3413 (class 0 OID 16874)
-- Dependencies: 216
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3415 (class 0 OID 16879)
-- Dependencies: 218
-- Data for Name: database_conference; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_conference (id, name, short_name, start_date, end_date, category, status, url, country, town, information) FROM stdin;
914	European Physical Society Conference on High Energy Physics	EPS-HEP 2021	2021-07-26	2021-07-30	International Conference	Collecting proposals for abstracts and speakers.	https://www.eps-hep2021.eu/	Germany	Hamburg	The deadline for abstract submission is May 7th, 2021
915	Weak Interactions and Neutrinos 2021	WIN 2021	2021-06-07	2021-06-12	International Conference	Collecting proposals for abstracts and speakers.	http://win2021.umn.edu/	USA	Minnesota	The deadline for abstract submissions is April 15th.
916	XXVII Cracow EPIPHANY Conference on Future of Particle Physics	Epiphany 2021	2021-01-07	2021-01-10	International Conference	Completed	https://epiphany.ifj.edu.pl/current/	Poland	Cracow	The Cracow Epiphany Conference has had a different topic every year. The series started in 1995. By bringing in new subjects and inviting new participants every year the meetings offer a general forum to discuss the frontiers of physics. The number of participants is about one hundred and there are up to thirty invited talks.
917	XIX international workshop on neutrino telescopes 2021	Neutrino Telescopes 2021	2021-02-18	2021-02-26	International Conference	Completed	https://agenda.infn.it/event/24250/overview	Italy	Padova	The Neutrino Telescopes Workshop dates back to 1988 when Prof. Milla Baldo Ceolin conceived it and launched the first edition.\r\n\r\nThe 2021 edition will focus on the original, at the time pioneering, topics of the workshop: Large Detectors for Neutrino Astrophysics, Neutrino Physics, and Cosmology.
918	Recontre de Moriond 2021: QCD & High Energy Interactions	Moriond QCD 2021	2021-03-27	2021-04-03	International Conference	Completed	http://moriond.in2p3.fr/2021/QCD/	Italy	La Thuile	The purpose of the Rencontres de Moriond is to discuss recent findings and new ideas in physics in a pleasant, relaxed and convivial atmosphere
919	APS April Meeting 2021	APS 2021	2021-04-17	2021-04-20	National Conference	Two talks in parallel meeting approved.	https://april.aps.org/	USA	Online	Convene with a global audience of physicists, scientists, and students representing 20 APS units and committees and explore groundbreaking research from industry, academia, and major labs, virtually, from anywhere in the world.
920	The 22nd International Workshop on neutrinos from accelerators	NUFACT2021	2021-09-06	2021-09-11	International Conference	Preparing abstracts	https://nufact2021.ca.infn.it/	Italy	Cagliari	Deadline for abstracts is April 30th
921	LISHEP 2021	LISHEP 2021	2021-07-06	2021-07-08	International Conference	Ready	https://indico.cern.ch/event/879856/	Brazil	Rio de Janeiro	Workshop on high energy physics
\.


--
-- TOC entry 3417 (class 0 OID 16887)
-- Dependencies: 220
-- Data for Name: database_conferenceassistance; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_conferenceassistance (id, coordinator, join_date, assistant_id, conference_id) FROM stdin;
\.


--
-- TOC entry 3419 (class 0 OID 16892)
-- Dependencies: 222
-- Data for Name: database_presentation; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_presentation (id, title, abstract, date, category, "group", status, information, conference_id, speaker_id, presentation_file, state) FROM stdin;
933	FCC-ee project	Overview of the FCC-ee project physics potential.	2021-03-31	International Conference	Overview	Completed	-	918	18	Mccullough.pdf	approved
934	Higgs Boson Measurements at FCC-ee	The FCC-ee, a lepton collider with center-of-mass collision energies between 90 and 365 GeV, is proposed to address key open questions of modern physics. The precision instrument is designed for the in-depth exploration of nature at the smallest scales, optimized to study the Z, W, Higgs and top particles with high precision. FCC-ee offers unprecedented sensitivity to study the Higgs boson. The focus of the presentation is on recent Higgs physics results.	2021-04-18	Parallel Talk	Higgs	Waiting for draft	-	919	18	NotReady.png	pending
939	Tile Multiple Readout and Beyond for FCC	Dual-Readout Compensated Calorimetry with Tile Sensors Friday, March 19, 2021 2:40 PM (20 minutes) We discuss techniques and materials to develop optimize the energy resolution in the long-term performance of calorimeters as required by the challenging environment of future colliders and high intensity experiments. We extend the Dual Readout/Cerenkov compensation by using 2 tile types, one sensitive to to e-m showers, such as quartz, aerogel, Teflon AF or other low index Cerenkov tiles, and scintillator tiles, sensitive to low energy particles such as neutrons, nuclear fragments. The many advantages over fiber calorimeters for dual readout are discussed.	2021-07-26	Parallel Talk	Detector	Proposed talk	proposed by Yasar Onel- University of Iowa and David Winn -Fairfield University	914	18	NotReady_QISd8Fi.png	pending
949	This is a test presentation	This is the abstract	2021-04-18	neutrinos	FCC	test	info	915	3	Screen_Shot_2021-04-18_at_10.08.27_AM.png	pending
938	Heavy neutrino searches at the FCC	The Future Circular Collider (FCC) is proposed as a post-LHC particle collider at CERN. It consists of an\r\nsequential implementation of a Higgs and Electroweak factory lepton (FCC-ee) collider and of a 100 TeV\r\nhadron (FCC-hh) collider with an e-p option. Its goals are to achieve a thorough understanding of the\r\nStandard Model (SM) and of the Higgs boson, and to maximize the potential for the discovery of new\r\nphenomena.\r\nOne of the most interesting searches possible at the FCC concerns Heavy Neutrinos, which, as a natural\r\nextension of the SM, could provide answers to many interesting open questions, from neutrino masses\r\nto the matter-antimatter imbalance of the Universe, including a plausible Dark Matter candidate.\r\nAt the FCC (ee, hh, eh) a large parameter space will be within reach for Heavy Neutrinos. The FCC-ee\r\nrunning at the Z-Pole will reach unbeatable sensitivity for heavy neutrinos with low-mixing with the\r\nlight, left-handed neutrinos, down to the limits given by type-1 seesaw models. Their appearance could\r\ngive rise to characteristic, and essentially background free, long-lived signatures in the detectors.\r\nIt has been shown recently that the study of charge asymmetries and polarization of these Heavy\r\nNeutrinos will enable the determination of their Majorana nature with Lepton Number Violation.\r\nAt FCC-hh and FCC e-h the production from a real or virtual W decay will ensure that the initial state\r\nflavor and charge is known, offering straightforward tests of Lepton Flavor and Lepton Number\r\ntransitions in a domain of somewhat larger mixing angles.\r\nNow is the right time to start benchmarking the most interesting physics process to study at the\r\ndifferent phases of the FCC, exploring the corresponding detector requirements; during this process\r\nheavy neutrinos will take a central stage. The complementarity of the three different stages of the FCC\r\nprovides unique potential to discover and pin down these particles, and maybe solving long-standing\r\nproblems of the SM. This talk will describe the current landscape and possible areas to contribute to in\r\nthe next years.	2021-06-07	Parallel Talk	New Physics	Submitted abstract #236 with Alain Blondel as speaker.	-	915	18	NotReady_LxbYuzg.png	pending
947	Tau-lepton Physics at FCC-ee	The Future Circular Collider with electron-positron beams (FCC-ee) should provide improvements of the electroweak precision measurement concerning Z, W, H, and their masses by a large factor over the present status. The unparalleled experimental precision would open, via Electroweak loop corrections, a broad discovery potential for new, at least weakly interacting particles up to high energy scales. The Z boson mass and width, as well as the Z to bb partial width, and the forward-backward asymmetries for leptons and quarks can be measured with high precision with the run at the Z pole, where the instantaneous luminosity is expected to be five to six orders of magnitude larger than LEP. As a result, a precise determination of the effective weak mixing angle, as well as of the running electromagnetic coupling can be extracted directly from the data. Considerable improvements of the strong coupling constant determination will be possible with the measurements of the hadronic widths of the Z and W bosons.	2021-06-07	Parallel Talk	Tau Physics	Submitted abstract #139 with Klute as temp speaker	.	915	18	NotReady_7CWtfiN.png	pending
948	The physics of FCC	None	2021-07-06	Plenary Talk	General Physics	Michelangelo Mangano agreed to give this talk. The schedule needs to be determined.	-	921	19	NotReady_HDZe2nj.png	pending
932	Heavy neutrino searches at the FCC	The Future Circular Collider (FCC) is proposed as a post-LHC particle collider at CERN and consists of different steps. The first step of the FCC (FCC-ee) is a high-luminosity, high-precision lepton collider located in the same tunnel as a possible precursor to a hadron collider, and complementary to it. The ultimate goal, FCC-hh, is a 100 TeV hadron collider, colliding protons and heavy-ions, with a center of mass energy seven times that of the LHC, an energy step similar to the one from the Tevatron to the LHC. A hadron-lepton collider (FCC-eh), operating with the FCC-hh, could be the finest microscope for studying quark-gluon interactions and possible further substructure of matter.\r\n\r\nOne of the most interesting searches that will be possible at the FCC concerns heavy neutrinos, or heavy neutral leptons. These hypothetical new particles hold an incredible potential, since they could provide answers to many interesting open questions in the standard model (SM) of particle physics, from neutrino masses to the matter-antimatter imbalance of the Universe, including offering a plausible Dark Matter candidate.\r\n\r\nAt the FCC (ee, hh, eh) a large parameter space will be within reach for Heavy Neutrinos. The FCC-ee running at the Z-Pole will be unbeatable: heavy neutrino produced in Z decays with low-mixing with the regular neutrinos, all the way to the domain of type-1 seesaw models, could give rise to characteristic, and essentially background free, long-lived signatures in the detectors. When the decay lengths of these new particles is long enough, neutrino oscillations might even be studied, and offer limited sensitivity for tests of Lepton Number Violation. The initial state flavor and charge is known at FCC-hh and FCC-eh, and therefore they will offer tests of lepton-flavor violation and Lepton Number violation in a domain of somewhat larger mixing angles.\r\n\r\nThis is the right time to start benchmarking the most interesting physics process to study at the different phases of the FCC, exploring the corresponding detector requirements; during this process heavy neutrinos will take a central stage. The complementarity of the three different stages of the FCC provides unique potential to discover and pin down these particles, and maybe solving long-standing problems of the SM. This talk will describe the current landscape and possible areas to contribute to in the next years.	2021-02-22	Parallel Talk	New Physics	Completed	-	917	18	Telescopes2021_RGS.pdf	approved
936	Searches of axion-like particles via photon fusion at the FCC-ee	Prospects for measurements of axion-like particles (ALPs) produced via photon-photon fusion in e+e- collisions at the FCC-ee will be presented. Competitive exclusion limits, better by up to a factor of 10 compared to the best achievable bounds expected at any other facility before FCC-ee, can be reached in various regions of ALP mass versus ALP-photon coupling. FCC-ee detector considerations needed to achieve such results will be also discussed.	2021-06-07	Parallel Talk	New Physics	Submitted abstract #235 with Patricia Rebello Teles as speaker	-	915	18	NotReady_IHQVCqY.png	pending
944	Search for additional scalar bosons at the FCC-ee	As a proposed Higgs factory, the cornerstone of the FCC-ee physics program is the exploration of the Higgs boson at center-of-mass energies of 240 to 365 GeV. Direct and model-independent measurement of its coupling to the Z boson through the study of the Z boson recoil mass spectrum. The recoil mass analysis strategy can be deployed to search for non-SM Higgs boson decays such as Higgs boson to invisible decays or more exotic signatures. The mass spectrum recoiling the Z boson can also be explored in searches for new scalars with coupling to the Z boson. The extremely large FCC-ee data samples especially at lower center-of-mass energy offer excellent sensitivity.	2021-07-26	Parallel Talk	New Physics	Proposed talk	Proposed by Justin Yang (MIT)	914	18	NotReady_5g0W5T2.png	pending
940	Very Forward Calorimetry at the FCC	The success of any particle detector at a collider experiment depends on its ability to measure both the trajectories and energies of particles exiting the interaction point.  Especially important and difficult is measuring the trajectories and energies of particles in the very forward region - particles that exit the detector with very shallow angles compared to the beam line.  The difficulty with measuring these particles with high precision is related to the high radiation this area is exposed to, making robust instrumentation a challenge.  This area becomes more important with increasing beam energy.\r\n\r\nWe propose a radiation hard, precise, and highly resolved tracking calorimeter that addresses all of these challenges.  The design uses highly segmented radiation-resistant quartz tiles coupled to replaceable radiation-resistant photomultiplier tubes.  Charged particles entering the quartz array will generate Cherenkov light in proportion to their energy, and this light will be measured with photomultiplier tubes.  Tracks can be drawn between coinciding signals, and trajectories measured.  Neutral particles will leave no initial track in the quartz, but layers of absorber between the quartz tiles will initiate a shower, making it possible to measure all types of particles and energies using this detector.  Neural nets can be used to identify particles and tracks.  Our simulations show that this detector has excellent tracking, excellent electromagnetic energy resolution, and excellent hadronic energy resolution.  Its radiation-tolerant materials make it well suited for high radiation environments, but its energy resolution properties mean it can be used in varying geometries at any location around the interaction point.	2021-07-26	Parallel Talk	Detector	Proposed talk	Proposed by Yasar Onel and James Wetzel - University of Iowa	914	18	NotReady_6wgmt6e.png	pending
941	New radiation-hard scintillators for FCC Detectors	Future circular and linear colliders, as well as the Large Hadron Collider in the High-Luminosity era, have been imposing unprecedented challenges on the radiation hardness of particle detectors that will be used for specific purposes e.g. forward calorimeters, beam, and luminosity monitors.\r\nWe performed research on the radiation-hard active media for such detectors, particularly calorimeters, by exploring intrinsically radiation-hard materials and their mixtures. The initial samples that we probed were thin plates of Polyethylene Naphthalate (PEN) and Polyethylene Terephthalate (PET) and thin sheets of HEM. The previous studies indicate promising performance under high radiation conditions. We will report on the necessary process of mixing the PEN and PEN for optimized scintillation and signal timing properties preserving the high radiation resistance.\r\nRecently we developed a new plastic scintillator material. The scintillation yield of SX sample was compared to a BGO crystal using a setup with 90Sr source and a Hamamatsu R7525-HA photomultiplie tube (PMT). The SX was measured to yield roughly 50% better light production compared to the BGO crystal sample SX was irradiated at the CERN PS radiation facility with 24 GeV/c protons. The samples received a fluence of 1.2 x 1015 p/cm2 which corresponds to 4 x 105 Gy radiation doses. The comparison of the transmission spectra of SX sample before and after the irradiation exhibits a loss of roughly 7% light transmission after 4 x 105 Gy proton irradiation	2021-07-26	Parallel Talk	Detector	Proposed talk	Proposed by YASAR ONEL1, BURAK BILKI1,2, 1 University of Iowa, Iowa City, USA, 2 Beykent University, Istanbul, Turkey	914	18	NotReady_ggQuIOy.png	pending
942	The dual-readout calorimeter module R&D using innovative 3D metal printing for future e+e- colliders	Innovative 3D metal printing technology has been recently improved and used widely in various fields for both basic science and high technology. The next generation methodology of the novel calorimeter, dual-readout calorimeter, is one of the candidates to achieve very high energy resolutions for both EM and hadronic particles in future e+e- colliders. Traditionally the module of the dual-readout calorimeter has been built by cutting the copper plates and stacking them. In this presentation, we present the advanced dual-readout calorimeter module R&D by the latest 3D metal printing to achieve a very fine and precise projective structure required for the future e+e- colliders.	2021-07-26	Parallel Talk	Detector	Proposed talk	Proposed by Hwidong Yoo	914	18	NotReady_tUzjrge.png	pending
943	The tracking system of the IDEA detector concept for a future e+e- collider	The IDEA detector concept for future e+e- colliders proposes a tracking system composed by a Si based inner\r\nsystem, an ultra-low mass Drift Chamber central system with Particle Identification capabilities and a Si based\r\nouter layer surrounding the drift chamber.\r\nThe designed tracking system allows to fulfill the high momentum and angular resolutions requirements for the\r\nwhole momentum range, particularly for low momenta, thanks to the extremely low material budget.\r\nMoreover, the use of the Cluster Counting technique allows for particle identification (PID) resolution below\r\n3%, a factor two better than the resolution attainable with traditional dE/dx techniques.\r\nDetails about the construction of the drift chamber, including both the speculation about new materials for the\r\nfield wires and new techniques for soldering the wires, the development of an improved layout of the drift cells\r\n, and the choice of the gas mixture will be described. The expected tracking system performance together with\r\nthe Improved PID obtained with the cluster counting technique will be reported.	2021-07-26	Parallel Talk	Detector	Proposed talk	Proposed by Gianfranco Tassielli, INFN-Lecce, Italy	914	18	NotReady_575qpbB.png	pending
946	Electroweak Precision Physics at FCC-ee	The Future Circular Collider with electron-positron beams (FCC-ee) should provide improvements of the electroweak precision measurement concerning Z, W, H, and their masses by a large factor over the present status. The unparalleled experimental precision would open, via Electroweak loop corrections, a broad discovery potential for new, at least weakly interacting particles up to high energy scales. The Z boson mass and width, as well as the Z to bb partial width, and the forward-backward asymmetries for leptons and quarks can be measured with high precision with the run at the Z pole, where the instantaneous luminosity is expected to be five to six orders of magnitude larger than LEP. As a result, a precise determination of the effective weak mixing angle, as well as of the running electromagnetic coupling can be extracted directly from the data. Considerable improvements of the strong coupling constant determination will be possible with the measurements of the hadronic widths of the Z and W bosons.	2021-06-07	Parallel Talk	Electroweak	Submitted abstract #238 with Klute as temp speaker.	.	915	18	NotReady_99uTOnv.png	pending
945	Higgs measurements at the Future Circular Colliders	Precision measurements and searches for new phenomena in the Higgs sector are among the most important goals in particle physics. Experiments at the Future Circular Colliders (FCC) are ideal to study these questions. Electron-positron collisions (FCC-ee) up to an energy of 365 GeV provide the ultimate precision with studies of Higgs boson couplings, mass, total width, and CP parameters, as well as searches for exotic and invisible decays. Very high energy proton-proton collision (up to 100 TeV) provided by the FCC-hh will allow studying the Higgs self-coupling.\r\nThere is a remarkable complementarity of the FCC-ee and FCC-hh colliders, which in combination offer the best possible overall study of the Higgs boson properties.	2021-06-07	Parallel Talk	Higgs	Submitted abstract #237 with Klute standing in as speaker	-	915	18	NotReady_hQ5Qjpb.png	pending
937	Electron Yukawa from s-channel resonant Higgs production at FCC-ee	Measuring the electron Yukawa is impossible in Higgs boson decays, H -> e+e- , given the smallness of the electron mass that leads to a vanishingly small decay branching fraction. The only direct method to extract the Higgs-electron coupling is through resonant s-channel production in e+e- collisions running at the Higgs pole mass. Such a measurement is possible at the FCC-ee provided one can monochromatize the beams, leading to a center-of-mass energy spread not much larger than the Higgs boson width of ~4 MeV, as well as having a prior accurate and precise knowledge of the Higgs boson mass, within MeV uncertainties. Under such conditions, a study combining 10 different Higgs decay modes indicates that a ~1.3sigma significance for the e+e- -> H process can be reached, above the (much larger) backgrounds, for every 10 ab-1 of integrated luminosity per FCC-ee interaction point (IP). Depending on the number of IPs and years running at the Higgs pole, such a measurement will provide the only means known to access the electron Yukawa.	2021-06-07	Parallel Talk	Higgs	Submitted abstract #234 with David D'Enterria as speaker	-	915	18	NotReady_itIakPe.png	pending
\.


--
-- TOC entry 3421 (class 0 OID 16900)
-- Dependencies: 224
-- Data for Name: database_usermessage; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_usermessage (id, message, seen, message_from_id, message_to_id) FROM stdin;
\.


--
-- TOC entry 3423 (class 0 OID 16908)
-- Dependencies: 226
-- Data for Name: database_userprofile; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_userprofile (id, institution, title, first_name, last_name, status, information, coordinator, speaker, last_login, password, date_joined, email, is_active, is_staff, is_superuser, username) FROM stdin;
3	mit	Dr	Fabio	Espinosa	user	info	f	f	\N	passw	2021-04-18 18:38:09.647868+02		t	f	f	username1
25	\N	\N	Markus	Klute	\N	\N	f	f	2021-04-08 22:49:36.869925+02	!DS3CxHegoHs590tcf5NOIFcc9sraEdFBvTuUFaRU	2021-04-06 20:19:06.216333+02	markus.klute@cern.ch	t	f	f	markus54
26	\N	\N	Tianyu Justin	Yang	\N	\N	f	f	2021-04-08 23:42:21.34249+02	!FFmfpxSCnaXPtpO7zvPSSasBieoeUAfusE7Gj1dZ	2021-04-08 23:42:21.272707+02	tyjyang@mit.edu	t	f	f	tyjyang
27	\N	\N	Paolo	Giacomelli	\N	\N	f	f	2021-04-09 16:51:47.287271+02	!Nk0H9186vfhiyuzqsnwOFfVgOfL343kNAVbUxCw1	2021-04-09 16:51:47.21679+02	paolo.giacomelli@cern.ch	t	f	f	giacomel
28	\N	\N	Christophe	Grojean	\N	\N	f	f	2021-04-12 08:43:11.960958+02	!rLNCWb1P7ZlHn5QWrGTPsIGLnqM46MNQ35FWm5mE	2021-04-12 08:43:11.885949+02	christophe.grojean@cern.ch	t	f	f	grojean
29	\N	\N	Rebeca	Gonzalez Suarez	\N	\N	f	f	2021-04-12 15:50:56.650432+02	!1gKnKAOL5z2AnYjmFlWSzdPmJX9PBSgn4TPTfYhI	2021-04-12 15:50:56.586281+02	rebeca.gonzalez.suarez@cern.ch	t	f	f	rebeca
30	\N	\N	Alain	Blondel	\N	\N	f	f	2021-04-12 19:06:15.031698+02	!oIrYBafGKR9N6rNkbewHl3W64V1tPhiifc15CH7M	2021-04-12 11:15:34.475416+02	alain.blondel@cern.ch	t	f	f	bdl
31	\N	\N	David	Enterria	\N	\N	f	f	2021-04-15 15:05:14.756504+02	!CtPT1GeYB54g95UdcnysnbvL4TVeVejct0zwpQkq	2021-04-15 15:05:14.681996+02	david.d'enterria@cern.ch	t	f	f	dde
32	\N	\N	Patrick	Janot	\N	\N	f	f	2021-04-15 15:08:56.25713+02	!ZThOVn6XWB2nrDbikuFRIVKsOBbwtxCvhtAhaZbL	2021-04-15 15:08:56.184443+02	patrick.janot@cern.ch	t	f	f	janot
33	\N	\N	Juan	Alcaraz Maestre	\N	\N	f	f	2021-04-15 15:10:23.373159+02	!owndUOw7bAz4bAIOpxeW0EYTEy2PuFNVImmgcATM	2021-04-15 15:10:23.303976+02	juan.alcaraz@cern.ch	t	f	f	alcaraz
34	\N	\N	Patrizia	Azzi	\N	\N	f	f	2021-04-15 15:10:26.355542+02	!Ts6NlDR4aUV3eCy388Jujvsqi7nc0eTIiwmXWsfk	2021-04-15 15:10:26.294455+02	patrizia.azzi@cern.ch	t	f	f	azzi
35	\N	\N	Gerardo	Ganis	\N	\N	f	f	2021-04-15 15:10:50.342595+02	!uZGnBfCjPGTnOCsjOzXV6XWCJoF8GBEDGBYlt86y	2021-04-15 15:10:50.276345+02	gerardo.ganis@cern.ch	t	f	f	ganis
38	Uniandes	Dr.	fabio	espinosa2	user	about	f	f	2021-04-18 20:13:50.924629+02	pbkdf2_sha256$150000$RJkDUlTydDu5$T0LCeD5dydgGyAOPn0Ggd8vFCMBDujwcHHFkmlOz6lg=	2021-04-18 20:13:44.827291+02	fabioespinosa@hotmail.com	t	f	f	username3
36	\N	\N			\N	\N	f	f	2021-04-19 00:29:40.963844+02	pbkdf2_sha256$150000$gTvRnENfqvtN$Xuvl5PDdV7wWXMS9L/si1OskLUWlpZ/hsHDhoxTCCcQ=	2019-05-30 15:31:42.666472+02	fabioe@mit.edu	t	t	t	fabioespinosa
24	\N	\N	Fabio Alberto	Espinosa Burbano	\N	\N	f	f	2021-04-08 21:08:20.362549+02	!xhZoCfCNx11QB49mZke8MMo55E3551cCjlwBTblk	2021-03-31 17:40:53.987823+02	f.e@cern.ch	t	f	f	fespinos
18			Markus	Klute			f	f	\N	pbkdf2_sha256$150000$2aLIQ0WPnDaF$4eW78y5ngHLbARF1FpTsq3gwqxTVUsgXkV/jkSx00t8=	2021-04-18 18:38:09.647868+02	klute@mit.edu	t	t	t	klute
19	Oxford	Dr.	daniela	bortoletto	user	FCC	f	f	\N	pbkdf2_sha256$150000$Ujz4jGpuM3Om$GtAE5lWnrKQvsBoq9JeGAMXEAh50mtIQEC6b/ey7TOQ=	2021-04-18 18:38:09.647868+02	daniela.bortoletto@cern.ch	t	f	f	bortoletto
\.


--
-- TOC entry 3443 (class 0 OID 17379)
-- Dependencies: 246
-- Data for Name: database_userprofile_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_userprofile_groups (id, userprofile_id, group_id) FROM stdin;
\.


--
-- TOC entry 3445 (class 0 OID 17390)
-- Dependencies: 248
-- Data for Name: database_userprofile_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.database_userprofile_user_permissions (id, userprofile_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3425 (class 0 OID 16916)
-- Dependencies: 228
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-05-30 15:42:22.685502+02	1	normal users	1	[{"added": {}}]	6	2
2	2019-05-30 15:42:47.147962+02	1	fabioespinosa3	2	[{"changed": {"fields": ["groups"]}}]	7	2
3	2019-05-30 15:53:21.864403+02	3	markus	1	[{"added": {}}]	7	2
4	2019-05-30 15:53:48.187666+02	2	klute, markus	1	[{"added": {}}]	3	2
5	2019-05-30 16:10:18.828297+02	1	HSTD12: 12th International "Hiroshima" Symposium on the Development and Application of Semiconductor Tracking Detectors (HSTD12) , 14-18 Dec 2019, Hiroshima (Japan)	1	[{"added": {}}]	1	2
6	2019-05-30 22:55:24.423473+02	1	theconference	1	[{"added": {}}]	14	2
7	2019-05-30 22:57:02.673604+02	1	theconference	2	[{"changed": {"fields": ["sites"]}}]	14	2
8	2019-05-30 22:57:27.715979+02	2	localhost:8000	1	[{"added": {}}]	10	2
9	2019-05-30 22:57:30.075482+02	1	theconference	2	[{"changed": {"fields": ["sites"]}}]	14	2
10	2019-05-30 23:00:11.560869+02	1	dev-theconference	2	[{"changed": {"fields": ["name", "client_id", "secret"]}}]	14	2
11	2019-08-08 13:18:23.979122+02	1	espinosa, fabio	2	[{"changed": {"fields": ["message_from_admin"]}}]	3	2
12	2019-08-08 13:57:05.836175+02	1	It was a nice conference you made!	1	[{"added": {}}]	16	2
13	2019-08-08 14:56:49.830264+02	3	Espinosa, Fabio	1	[{"added": {}}]	3	2
14	2019-08-08 15:00:38.277948+02	1	espinosa, fabio	3		3	2
15	2019-08-08 15:01:10.227081+02	2	Very good presentation fabio!	1	[{"added": {}}]	16	2
16	2019-08-08 15:47:21.768287+02	913	QuarkMatter2019: 28th International Conference on Ultra-Relativistic Nucleus-Nucleus Collisions, 4-9 Nov 2019, Central China Normal University, Wuhan (China)	2	[{"changed": {"fields": ["coordinator", "status", "url", "town", "information"]}}]	1	2
17	2019-09-10 14:36:37.729668+02	3	hello you!	1	[{"added": {}}]	16	2
18	2019-09-10 14:36:57.970991+02	3	hello you!	3		16	2
19	2019-09-16 19:50:04.408391+02	5	other message	1	[{"added": {}}]	16	2
20	2019-09-16 19:50:10.692685+02	6	dddd	1	[{"added": {}}]	16	2
21	2019-09-16 19:50:22.248665+02	7	dddd	1	[{"added": {}}]	16	2
22	2019-09-16 19:50:30.723728+02	5	other message	2	[{"changed": {"fields": ["message_to", "message_from"]}}]	16	2
23	2019-09-16 19:50:44.326925+02	8	sssss	1	[{"added": {}}]	16	2
24	2019-09-16 19:50:54.207132+02	9	ffff	1	[{"added": {}}]	16	2
25	2020-01-31 15:48:55.887177+01	914	Overview of CMS results from last year: detector performance and physics highlights	2	[{"changed": {"fields": ["information", "presentation_file"]}}]	2	2
26	2020-01-31 20:56:43.020436+01	912	Experimental summary	2	[{"changed": {"fields": ["information", "presentation_file"]}}]	2	2
27	2020-02-04 17:05:10.953266+01	914	Overview of CMS results from last year: detector performance and physics highlights	2	[{"changed": {"fields": ["information", "presentation_file"]}}]	2	2
28	2020-02-04 17:07:23.532803+01	913	Modeling and tuning (ttbar) in ATLAS and CMS	2	[{"changed": {"fields": ["information", "presentation_file"]}}]	2	2
29	2021-03-31 17:31:36.517334+02	4	klute	1	[{"added": {}}]	7	2
30	2021-03-31 17:31:57.377859+02	4	klute	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser"]}}]	7	2
31	2021-03-31 17:38:48.697753+02	1	fcc-ee-conference	2	[{"changed": {"fields": ["name", "secret"]}}]	14	2
32	2021-03-31 17:40:32.577496+02	1	fcc-ee-conference	2	[{"changed": {"fields": ["client_id", "secret"]}}]	14	2
33	2021-04-08 18:31:48.725979+02	9	ffff	3		16	4
34	2021-04-08 18:31:48.742376+02	8	sssss	3		16	4
35	2021-04-08 18:31:48.74474+02	7	dddd	3		16	4
36	2021-04-08 18:31:48.7492+02	6	dddd	3		16	4
37	2021-04-08 18:31:48.751926+02	5	other message	3		16	4
38	2021-04-08 18:31:48.754735+02	2	Very good presentation fabio!	3		16	4
39	2021-04-08 18:32:02.058878+02	6	, 	3		3	4
40	2021-04-08 18:32:02.066325+02	5	, 	3		3	4
41	2021-04-08 18:32:02.069323+02	4	, 	3		3	4
42	2021-04-08 18:37:17.7552+02	914	European Physical Society Conference on High Energy Physics	1	[{"added": {}}]	1	4
43	2021-04-08 18:40:46.853385+02	915	Weak Interactions and Neutrinos 2021	1	[{"added": {}}]	1	4
44	2021-04-08 18:41:09.51441+02	903	TOP2019: 12th International Workshop on Top Quark Physics, 22-27 Sep 2019, Beijing (China)	3		1	4
45	2021-04-08 18:41:09.523436+02	900	TWEPP2019: Topical Workshop on Electronics for Particle Physics, 2-6 Sep 2019, Universidad de Santiago de Compostel, Santiago de Compostela (Spain)	3		1	4
46	2021-04-08 18:41:09.525744+02	885	DPF2019: 2019 Meeting of the Division of Particles & Fields of the American Physical Society, 29 Jul-2 Aug 2019, Boston, MA (United States)	3		1	4
47	2021-04-08 18:41:09.527982+02	878	LP2019: 29th International Symposium on Lepton Photon Interactions at High Energies, 5-10 Aug 2019, University of Toronto, Toronto (Canada)	3		1	4
48	2021-04-08 18:41:09.530341+02	864	EPS-HEP2019: European Physical Society Conference on High Energy Physics, 10-17 Jul 2019, Ghent (Belgium)	3		1	4
49	2021-04-08 18:41:09.532623+02	843	3rd International Iran-Turkey Joint Conference on LHC Physics, 10-15 Jun 2019, Istanbul (Turkey)	3		1	4
50	2021-04-08 18:41:09.534652+02	833	Blois 2019: 31st Rencontres de Blois - Particle Physics and Cosmology, 2-7 Jun 2019, Blois (France)	3		1	4
51	2021-04-08 18:41:09.537198+02	825	SUSY2019: 27th International Conference on Supersymmetry and Unification of Fundamental  Interactions, 20-24 May 2019, Corpus Christi, TX (United States)	3		1	4
52	2021-04-08 18:41:09.539198+02	818	LHCP2019: 7th Conference of Large Hadron Collider Physics, 20-25 May 2019, BUAP, Puebla (Mexico)	3		1	4
53	2021-04-08 18:41:09.541256+02	797	CHEP2019: 24th International Conference on Computing in High Energy and Nuclear Physics	3		1	4
54	2021-04-08 18:51:56.992217+02	916	XXVII Cracow EPIPHANY Conference on Future of Particle Physics	1	[{"added": {}}]	1	4
55	2021-04-08 18:57:47.549301+02	931	Higgs measurements at the e+e- colliders	1	[{"added": {}}]	2	4
56	2021-04-08 19:04:13.083783+02	917	XIX international workshop on neutrino telescopes 2021	1	[{"added": {}}]	1	4
57	2021-04-08 19:08:08.048335+02	932	Heavy neutrino searches at the FCC	1	[{"added": {}}]	2	4
58	2021-04-08 19:12:31.419653+02	918	Recontre de Moriond 2021: QCD & High Energy Interactions	1	[{"added": {}}]	1	4
59	2021-04-08 19:15:06.624532+02	933	FCC-ee project	1	[{"added": {}}]	2	4
60	2021-04-08 22:33:00.483009+02	3	markus	3		7	4
61	2021-04-08 22:36:43.999626+02	919	APS April Meeting 2021	1	[{"added": {}}]	1	4
62	2021-04-08 22:40:56.037373+02	934	Higgs Boson Measurements at FCC-ee	1	[{"added": {}}]	2	4
63	2021-04-08 22:42:24.074699+02	935	Search for additional scalar bosons at the FCC-ee	1	[{"added": {}}]	2	4
64	2021-04-09 15:53:53.972669+02	936	Searches of axion-like particles via photon fusion at the FCC-ee	1	[{"added": {}}]	2	4
65	2021-04-09 15:56:10.559836+02	937	Electron Yukawa from s-channel resonant Higgs production at FCC-ee	1	[{"added": {}}]	2	4
66	2021-04-12 18:05:36.563375+02	938	Heavy neutrino searches at the FCC	1	[{"added": {}}]	2	4
67	2021-04-12 18:10:02.867267+02	939	Tile Multiple Readout and Beyond for FCC	1	[{"added": {}}]	2	4
68	2021-04-12 18:12:04.384161+02	940	Very Forward Calorimetry at the FCC	1	[{"added": {}}]	2	4
69	2021-04-12 18:14:35.144771+02	941	New radiation-hard scintillators for FCC Detectors	1	[{"added": {}}]	2	4
70	2021-04-12 18:16:07.476839+02	942	The dual-readout calorimeter module R&D using innovative 3D metal printing for future e+e- colliders	1	[{"added": {}}]	2	4
71	2021-04-12 18:17:25.322292+02	943	The tracking system of the IDEA detector concept for a future e+e- collider	1	[{"added": {}}]	2	4
72	2021-04-12 18:46:02.88079+02	944	Search for additional scalar bosons at the FCC-ee	1	[{"added": {}}]	2	4
73	2021-04-14 15:48:23.807159+02	920	The 22nd International Workshop on neutrinos from accelerators	1	[{"added": {}}]	1	4
74	2021-04-16 01:45:31.533423+02	935	Search for additional scalar bosons at the FCC-ee	3		2	4
75	2021-04-16 01:51:58.250495+02	937	Electron Yukawa from s-channel resonant Higgs production at FCC-ee	2	[{"changed": {"fields": ["status"]}}]	2	4
76	2021-04-16 01:54:45.396533+02	936	Searches of axion-like particles via photon fusion at the FCC-ee	2	[{"changed": {"fields": ["status"]}}]	2	4
77	2021-04-16 01:57:18.804914+02	938	Heavy neutrino searches at the FCC	2	[{"changed": {"fields": ["status"]}}]	2	4
78	2021-04-16 01:58:11.443645+02	937	Electron Yukawa from s-channel resonant Higgs production at FCC-ee	2	[{"changed": {"fields": ["status"]}}]	2	4
79	2021-04-16 02:07:12.445233+02	945	Higgs measurements at the Future Circular Colliders	1	[{"added": {}}]	2	4
80	2021-04-16 02:09:04.62351+02	945	Higgs measurements at the Future Circular Colliders	2	[{"changed": {"fields": ["status"]}}]	2	4
81	2021-04-16 02:17:14.742798+02	946	Electroweak Precision Physics at FCC-ee	1	[{"added": {}}]	2	4
82	2021-04-16 02:21:38.628494+02	947	Tau-lepton Physics at FCC-ee	1	[{"added": {}}]	2	4
83	2021-04-16 16:10:03.533558+02	937	Electron Yukawa from s-channel resonant Higgs production at FCC-ee	2	[{"changed": {"fields": ["status"]}}]	2	4
84	2021-04-16 21:58:03.597142+02	921	LISHEP 2021	1	[{"added": {}}]	1	4
85	2021-04-16 21:59:53.970378+02	948	The physics of FCC	1	[{"added": {}}]	2	4
86	2021-04-18 17:01:19.881015+02	948	The physics of FCC	2	[{"changed": {"fields": ["speaker"]}}]	2	2
87	2021-04-18 17:09:27.289201+02	949	This is a test presentation	1	[{"added": {}}]	2	2
\.


--
-- TOC entry 3427 (class 0 OID 16925)
-- Dependencies: 230
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	database	conference
2	database	presentation
3	database	userprofile
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	sites	site
11	account	emailaddress
12	account	emailconfirmation
13	socialaccount	socialaccount
14	socialaccount	socialapp
15	socialaccount	socialtoken
16	database	usermessage
17	database	conferenceassistance
\.


--
-- TOC entry 3429 (class 0 OID 16930)
-- Dependencies: 232
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-05-30 15:24:43.409871+02
2	auth	0001_initial	2019-05-30 15:24:43.44765+02
3	admin	0001_initial	2019-05-30 15:24:43.494868+02
4	admin	0002_logentry_remove_auto_add	2019-05-30 15:24:43.514209+02
5	admin	0003_logentry_add_action_flag_choices	2019-05-30 15:24:43.528442+02
6	contenttypes	0002_remove_content_type_name	2019-05-30 15:24:43.551957+02
7	auth	0002_alter_permission_name_max_length	2019-05-30 15:24:43.557857+02
8	auth	0003_alter_user_email_max_length	2019-05-30 15:24:43.569219+02
9	auth	0004_alter_user_username_opts	2019-05-30 15:24:43.580188+02
10	auth	0005_alter_user_last_login_null	2019-05-30 15:24:43.59419+02
11	auth	0006_require_contenttypes_0002	2019-05-30 15:24:43.596936+02
12	auth	0007_alter_validators_add_error_messages	2019-05-30 15:24:43.615221+02
13	auth	0008_alter_user_username_max_length	2019-05-30 15:24:43.631489+02
14	auth	0009_alter_user_last_name_max_length	2019-05-30 15:24:43.647841+02
15	auth	0010_alter_group_name_max_length	2019-05-30 15:24:43.661545+02
16	auth	0011_update_proxy_permissions	2019-05-30 15:24:43.677599+02
17	database	0001_initial	2019-05-30 15:24:43.740698+02
18	database	0002_remove_userprofile_email	2019-05-30 15:24:43.763367+02
19	sessions	0001_initial	2019-05-30 15:24:43.771681+02
20	database	0003_auto_20190530_1327	2019-05-30 15:27:23.818795+02
21	account	0001_initial	2019-05-30 22:35:14.604921+02
22	account	0002_email_max_length	2019-05-30 22:35:14.655326+02
23	sites	0001_initial	2019-05-30 22:35:14.664013+02
24	sites	0002_alter_domain_unique	2019-05-30 22:35:14.67157+02
25	socialaccount	0001_initial	2019-05-30 22:35:14.748621+02
26	socialaccount	0002_token_max_lengths	2019-05-30 22:35:14.797356+02
27	socialaccount	0003_extra_data_default_dict	2019-05-30 22:35:14.805893+02
28	database	0004_auto_20190605_1312	2019-06-05 15:12:13.149207+02
29	database	0005_remove_presentation_length	2019-06-05 17:06:55.749734+02
30	database	0006_userprofile_new_field	2019-06-25 10:31:35.41251+02
31	database	0007_auto_20190808_0942	2019-08-08 11:42:52.711116+02
32	database	0008_usermessages	2019-08-08 13:28:15.15393+02
33	database	0009_remove_userprofile_message_from_admin	2019-08-08 13:28:28.415599+02
34	database	0010_auto_20190808_1132	2019-08-08 13:32:12.645954+02
35	database	0011_auto_20190808_1356	2019-08-08 15:57:35.198611+02
36	database	0012_auto_20190808_1410	2019-08-08 16:10:16.781771+02
37	database	0013_auto_20200129_1710	2020-01-29 18:13:16.865179+01
38	database	0014_presentation_state	2020-02-19 00:53:54.981457+01
40	database	0015_auto_20210418_1559	2021-04-18 18:26:36.58916+02
41	database	0016_auto_20210418_1606	2021-04-18 18:38:15.065061+02
42	database	0017_auto_20210418_1639	2021-04-18 18:57:13.04078+02
43	database	0018_auto_20210418_1710	2021-04-18 19:10:30.739479+02
44	database	0019_auto_20210418_1745	2021-04-18 19:45:26.774262+02
\.


--
-- TOC entry 3431 (class 0 OID 16938)
-- Dependencies: 234
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
pcaza69un0a7l63nuj9mp24jv98agqi6	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-06-13 15:51:44.745341+02
bsedp10g3xzdesgz8tvmjmcgxe2huic6	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-06-13 21:14:09.054797+02
bjv29pp5gh1u0gmo7rvr8vsmns7zau2n	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-06-13 21:15:01.674644+02
5yj33pjppx8pa0qt3nz0a50mlwkh9kyp	MDEyOTM0ODQ1NTM2OGMzNjkzOWE5NzA3YTc2MWE3OWNlZDcwNmZkYTp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwiaDZTYlN5UU16eGVZIl19	2019-06-13 23:01:18.390917+02
c76mgs9freg4aea8n47o1m0k342o4fla	NjI1YTVlOTY3Y2RiNDM1NDdjMWUxYTFjMmI0YTZkMjdiMjUyOGQyMjp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7Im5leHQiOiIvZGF0YWJhc2UvY29uZmVyZW5jZS8iLCJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sIkJuaFU2THduME4xOCJdLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWFhNjk5MmJlZGI1Nzc5MjFjY2YyOGQzMGU3NzUzZTM0NmIwNGVhYiJ9	2019-06-19 15:17:30.687558+02
7cmlmdctawhy42zo615gbgmkf2qiqdi1	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-07-09 09:44:26.766019+02
jz6rc6liw7hkoimg8rgwubhif39w9q05	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-08-22 15:21:42.377563+02
i2xp8niikhphumdg1e0hrjtq7jzb6151	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-08-22 15:45:10.547992+02
jj7znah7jqwi11obu7guj02jszhyolww	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-09-24 14:35:33.361895+02
svor5z1h0ktwb70uqx3aqf4joq6goyg9	YzQwN2NhNDY4MTMxZjRiYjk2YzU5NDBmOTk1NmRiZmY1NWI3ZGI1NDp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwiVTdrV21nU3V6bHVXIl19	2019-10-14 08:28:54.327885+02
1ynd1j8gofwmhmj84im8ns5cso2mmdhs	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-10-14 08:33:44.668963+02
efptoq2bbal3if8759mrdw81e4f1ncga	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2019-10-14 08:37:28.769989+02
ovni52ougcvf17cy8l45rjk4h2kr8x8r	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2020-02-12 18:08:45.25119+01
2yvw04sd0bwedesxp5byg3wicuw5iqxg	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2020-02-12 18:22:42.862071+01
wwf1ev3txiguyaxi4ex6zmyq2o7q6sts	OTk2NTc2NmM3NDE2MTdkODk4YzQ5MTFjMjI3ZGNmZTQ3ZTBkNTY3NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWE2OTkyYmVkYjU3NzkyMWNjZjI4ZDMwZTc3NTNlMzQ2YjA0ZWFiIn0=	2020-03-04 00:44:09.424176+01
m9t0nrl9wdgdupgvxxb0f2ejxmym05f4	MmVlMmJkYjkyYTk3NmNkMzIyNzI0Y2MxMDkzMmI0NzhlNGNlNjA4Njp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7Im5leHQiOiIvZGF0YWJhc2UvY29uZmVyZW5jZS8iLCJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sImRMUUpROFdxWkN2TiJdLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWFhNjk5MmJlZGI1Nzc5MjFjY2YyOGQzMGU3NzUzZTM0NmIwNGVhYiJ9	2021-04-14 02:33:01.10887+02
38jypuffi79d500hvxexxd5tvlaagpzq	NmM3ODFiODdkYzAzODcyYzE3M2ViMjY4NTIxMDMyZWZiYzBmOGZmYjp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmIwNWVmYzZhZDg1MmE1ODQ3YzA1NzE1MzQxYTcxMjVmYjU2Mzk5MiJ9	2021-04-14 17:40:54.073142+02
kr0j11cxlvlufmdul2tfbluv8qggyvf9	NzIwNmJlNjk4YmJlNWNkYTJkZDhhMzYyZTBiMWE5YWMyOTJkMTdiZDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2JmMTkyOTdlZTBhZDVlZDc4MDQ5Y2ZkYmRkNDM5MWVlYTA5YTViIn0=	2021-04-22 22:52:06.639417+02
zhjqg890906lq234qbjs1x67fopmo79f	OWZiY2IyYWM4YTY5MGFiOWVkNDM5NGJlYmIyZTBiYTlkNjU3NmYyMTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWYxZWYzMDMzOGU5NTFhNTI4MjY5ZjM3OTJiMzBlMTllMTg4NzZjZCJ9	2021-04-22 23:42:21.348246+02
932cxx4fxfggd3vwdmrea99hwramhufz	Y2E5NzZlOTk4ZDYyNTdjMzA4OTUxNTc2ODBhZmY5MzYzMDVmZTk3NDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTI0ZjQ5NzEwNTI0NDE0NDcwNjQ4MTMwN2U0YWRiYjAzZGY0MDcyNSJ9	2021-04-23 16:51:47.292986+02
p5t53b3cjbq4kl4ffysomhy5a11q0qgz	YmExYTdjZmUwMTliM2EyYjBmN2RjNjhmNmEzMWIxZGYyNjBjNTA0OTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWNlZjA1NWU3ZTE2NWE3NTdkMmEwMDY2NGFmOTI2MTA5YjdjYmI4MyJ9	2021-04-26 08:43:11.96583+02
a3jx5gi7supssjpms4nl4yhnk2zk9mjx	OGEwYmFjOWRiMmJlZTE0YmZhYTM0ZTg4NmVhZGFjYTRiZWVmNDQ5MDp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwiNTlNaDg2TVpldXlYIl19	2021-04-26 11:15:32.802868+02
uus1bm5z8ejonymw5xd7wt1zhaleh39l	N2U2NjU2MTY5NTEwZDI5MTliN2NlNTUyMzY3MGU4ZTY2MjAzOGZiNzp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgxMGFmNTgwZDQyNTQ3ZWRjYzU5MmY5NzBlZDlmNTNkMTBjMmY3NDgifQ==	2021-04-26 11:15:34.546491+02
z41ilkrqu506mupcqmba79aqz0uro7cz	NzE2OTBmYzkzNzU0NTAzNzEyODFjMGM0ODQwY2FlZjUxYmNhMDU5MDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImIzNDQ5MDU3YWU0NmNjMzc4NWJjYWFiODNhYTFkNjdlMmRjZGZmYWEifQ==	2021-04-26 15:50:56.655308+02
t43bvppy9bej1f9cx5nwflg3en3pcjrk	ZDcyOWVjOGZmMzExNjlkMWM2MTNhOTJmMTUwM2ZmZTFmMmNkYjMwODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjgxMGFmNTgwZDQyNTQ3ZWRjYzU5MmY5NzBlZDlmNTNkMTBjMmY3NDgifQ==	2021-04-26 19:06:15.035927+02
buodt24ae8uptzr98ucjqxg3med9kly0	NTQwNGNiYzcyODllNWNlMDg3OWMwNzdmYzBiYmZjNTJjZTRjNzI3Yzp7fQ==	2021-05-02 20:08:27.646695+02
58rsshyc0vx2iccry680uqyn3glf3ngv	YmMzMmFmN2E2ZWZiMDBjZjZmZmFmMGIzYmQwYzA1MTViMjMxZDA1NTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODBiZWZiOWQ1MmZiNzgyMjAzYzFmYTk4NjYwNGY5NzcxZDAxNWVmYiJ9	2021-04-26 19:09:16.486309+02
51ti8q9hpy5ua67ke1hr8499ja0t8sse	ZmRiYzMzM2VmMGE2MzUzYWYzODZkNmZjOWZhOWRmZDIyMWFmYTZiYzp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg0OGMyODczYjhkZGEzOTQwNDlmZmQ3YjA5YjdkZWQzOGJlMmMyYSJ9	2021-05-02 20:13:52.42882+02
i0pkobrnb4wfbx5v4h1s23h2qlqd375c	ODA5NjU4ODRkMGIzMjk2Yzk3YzA1NTJiM2M4NzczZTIzZTFiMWRiNjp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImQ2NzU1NjgzYzU4ZGJlM2ExZDQ5NTlkOTY1NWI5ZDE4YWEwODE2MGQifQ==	2021-04-29 15:05:14.762451+02
s31i9e9axxespirb1gn5703idchb4iv4	ZWI3NWIxMTJlN2E3MzZlNTljNGE2NDU4NDg5Zjc4MDIxYmJmZjEzMjp7Il9hdXRoX3VzZXJfaWQiOiIzNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWFhNjk5MmJlZGI1Nzc5MjFjY2YyOGQzMGU3NzUzZTM0NmIwNGVhYiJ9	2021-05-03 00:10:48.233968+02
twd1vby4b69y3zoshcof4d12hg4t9xw3	YmY0ZDExOWVlNjZhOTc2OTE3NWE4ODJlYjJiNmFjOThjYWY5MjZhNTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjliZDRmYmJjMTg1MTEyMDc4MTQ1MGRmNDJlZDI1MGNhYjQ0NWQwNDEifQ==	2021-04-29 15:08:56.261707+02
keqktwqdw2a6q8i7h7yfeytpvi4s1t5y	NmU4NWJhZTMwMjI2M2VjZmU2ZTdhYWIxZGUzNGY2MGQ0NjgzY2Q5Yzp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjU1ZjkzMWE4MTcxNGQ1ZWY5ZWQ1ZTcwMGM2MWI0ZWVjN2M0YjI0ZDgifQ==	2021-04-29 15:10:23.377368+02
s6m7ksctk1au9ob0wdiw8x0tpw35wsg4	MTA3ZDg3ZWY5ZTY3ZWM0MmEyZjk1ZTBlMjJjZmE4Yzg0Njk2YzA2ODp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7Im5leHQiOiIvZGF0YWJhc2UvY29uZmVyZW5jZS8iLCJwcm9jZXNzIjoibG9naW4iLCJzY29wZSI6IiIsImF1dGhfcGFyYW1zIjoiIn0sInF4UkhmdGxPRVhDdSJdLCJfYXV0aF91c2VyX2lkIjoiMzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjVhYTY5OTJiZWRiNTc3OTIxY2NmMjhkMzBlNzc1M2UzNDZiMDRlYWIifQ==	2021-05-03 00:29:40.96849+02
x2tk8wj2gl00cexqrxt2jyk96cz2i3is	ZGMxODViZmE3NzNiYThlMGY0M2U3NDAzMDdlYWNmYjMzZGU5NDc5MDp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7Im5leHQiOiIvZGF0YWJhc2UvY29uZmVyZW5jZS85MTUvIiwicHJvY2VzcyI6ImxvZ2luIiwic2NvcGUiOiIiLCJhdXRoX3BhcmFtcyI6IiJ9LCJsQWxDdWNFalR1NE4iXX0=	2021-05-03 00:42:14.33878+02
yh55o3dgjkvyzlx0xmsqq3fkdttm46u6	ZTQ2YzU4MTI2ZmRiZmIwMjhiN2IxZmZmZWEzYzYxMDliMmM0M2MwNDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImYyNjQ0Y2Y5ZTIyY2Y1YmZmZWZhZTYzMDIwYjk2MWRiZGUzODc1ZTcifQ==	2021-04-29 15:10:26.360439+02
4onz3xt1xwvq7zhtb2dncepj3kgy33bj	ZGZiNjc3YzM0NWU4ZjA3N2ZhMTA4ODBhY2NmMDFiYWMxYzlhNTdkNDp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIyOGY1MTNjMTc2OGU5YWNmYjMzYmNmODZjOWY2MmExOWY4YzI5YTMifQ==	2021-04-29 15:10:50.347098+02
96lfp3umr2o20zet2hhm2xw0w16xk0c8	NDUyOTc3M2I4ZmU0M2QyODg0NTAzMTFhNzQ4NzZkYWIyYmQyYWI4Yzp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwicUNtbm9qQ2J2YnRmIl19	2021-05-03 01:00:07.287851+02
\.


--
-- TOC entry 3432 (class 0 OID 16944)
-- Dependencies: 235
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
2	localhost:8000	localhost:8000
\.


--
-- TOC entry 3434 (class 0 OID 16949)
-- Dependencies: 237
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
1	cern	6670595	2021-04-08 21:08:20.332781+02	2021-03-31 17:40:54.020912+02	{"name": "Fabio Alberto Espinosa Burbano", "username": "fespinos", "id": 6670595, "personid": 830513, "email": "f.e@cern.ch", "first_name": "Fabio Alberto", "last_name": "Espinosa Burbano", "identityclass": "CERN Registered", "federation": "CERN", "phone": null, "mobile": null, "groups": ["All Exchange People", "Users by Home CERNHOMEF", "Users by Letter F", "NICE Enforce Password-protected Screensaver", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "cms-icms-int-sw", "cms-icms-int-comp", "info-newphysics-workshop", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cms-dqm-coreTeam", "cms-dqm-oncall", "cms-dqm-certification-experts-dpg", "cms-ml4dc", "cernbox-project-cmsml4dc-readers", "cms-dqm-certification-experts-hi-pog", "cms-dqm-certification-experts-pog", "cms-dqm-certification-experts-hi-dpg", "cms-dqm-offline-developers-dpg", "cms-dqm-developers", "cms-dqm-validation-developers-dpg", "cms-dqm-online-developers-dpg", "cms-dqm-validation-developers-pog", "cms-dqm-validation-developers-pag", "cms-dqm-offline-developers-pog", "cms-eos-web-dqm", "cms-ml4dqm", "cms-dqm-runregistry-admins-dpg", "cms-dqm-certification-experts", "cms-dqm-runregistry-offline-dpg-certifiers", "cms-dqm-runregistry-offline-pog-certifiers", "cms-dqm-runregistry-admins-pog", "cms-dqm-central-dc-tool-developers", "cernbox-project-cmsweb-http-readers", "ep-dep-all", "ep-dep-org-member-flag-no", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything"]}	5
2	cern	324160	2021-04-08 22:49:36.833273+02	2021-04-06 20:19:06.293684+02	{"name": "Markus Klute", "username": "klute", "id": 324160, "personid": 529652, "email": "markus.klute@cern.ch", "first_name": "Markus", "last_name": "Klute", "identityclass": "CERN Registered", "federation": "CERN", "phone": null, "mobile": null, "groups": ["All Exchange People", "atlas-phys", "cms-support", "info-experiments", "service-zephyr-messages", "itum-inform-all", "it-dep-exp-meeting-members", "groups-to-sync-authorization-service", "it-technical-coordination-announce", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "club-football", "asceri-info", "Users PH-UCM", "mac-users", "atlas-sw", "atlas-computing", "project-lcg-af", "project-lcg-peb-apps", "cms-cvsnotify-eventfilter", "cms-grid-support", "opal-football", "Users by Home CERNHOMEK", "lhc-d_higgs", "linuxfc-users", "lhc-d_susy-bsm", "cms-cvsnotify-iopool", "Users by Letter K", "NICE Enforce Password-protected Screensaver", "cms-service-vo-members", "cms-crb-admins", "cms-online-cluster-users", "lhc-d_qcd-ew", "cms-crb", "lhcb-drinks-bbq-invitees", "cms-icms-an-arcmemembers", "cms-ecom", "users-northamerica", "users-nms", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "aims2-upload", "ap-user", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "cms-icms-an-awgconveners", "cms-icms-atlas", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "aims-klogin", "cms-icms-secr-cb", "cms-icms-secr-cbins", "all-cern-users", "all-users-at-cern", "fp-pi-cds-cern", "VC-all-users", "VC-users-tdr2", "info-newphysics-workshop", "cms-B40-secr", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "cernois-es", "chis-membersE", "cern-status-user", "cern-personnel", "cms-tsg-operations", "CMS-German_Guides", "CMS-Guides", "LHC-HIGGS-PUBLIC", "cms-icms-secr-core", "cms-icms-secr-eb", "cms-icms-secr-ebext", "cms-exec-mgmt", "cms-upgrade-l1t-tdr-ucg-access", "lhc-higgs", "cernbox-project-lhchxswg-readers", "cms-pdwg", "ELG-CERN", "cms-ewk-vbtf-links", "cms-crc-on-duty", "cms-service-jobrobots", "wlcg-operations", "wlcg-service-coordination", "GDPR-services", "cms-service-icms", "cms-service-webtools", "test-egroup-expand-snow", "cms-ggus-webtools", "snow-egroup-whitelist", "cernbox-project-cmsweb-http-readers", "cms-service-repserver", "cms-service-crabcaf", "cms-service-buildmachines", "cms-service-tagcollector", "cms-service-phedexagent", "cms-service-integrationtestbed", "cms-service-monitoring", "cms-service-hypernews", "cms-service-visualization", "cms-service-wbm", "cms-service-sdt", "cms-service-webredirector", "cms-service-dbs", "cms-service-hammercloud", "castor-announce-cms", "cms-service-popcon", "cms-service-cmscom", "cms-service-tracker", "cms-service-lumipro", "cms-service-production", "LxVoAdm-CMS", "LxVoAdm-Authorized-Users", "cms-service-db-back-frontend", "cms-service-t0", "cms-service-tier0", "database-cmsr-announcements", "oracle-cms-databases-users", "cern-oracle", "oracle-users", "database-cmsarc-announcements", "cms-service-ecal", "cms-service-crab3htcondor-admins", "cms-puppet-all-access", "cms-service-admins", "cms-service-glideinwms-gitlab", "cms-openstack-project-admins", "cms-openstack-vocmscrab-admins", "cms-openstack-vocmsdb-admins", "cms-openstack-vocmsdocdb-admins", "cms-openstack-vocmsfrontier-admins", "cms-openstack-vocmsglideinwms-admins", "cms-openstack-vocmsicms-admins", "cms-openstack-vocmsproduction-admins", "cms-openstack-vocmst0-admins", "cms-openstack-vocmswbm-admins", "cms-openstack-vocmswebtools-admins", "cms-openstack-vocmscompops-admins", "cms-openstack-bril-admins", "cms-comp-sls-redirectors", "cms-ggus-cafops-admin", "cms-elog-admins", "cms-ggus-webtools-admin", "cms-ggus-sitedb-admin", "cms-ggus-sam-admin", "cms-ggus-hammercloud-admin", "cms-service-xrootd", "cms-ggus-wanaccess", "cms-openstack-critical-admins", "cms-ggus-wanaccess-admin", "cms-service-lumipro-admins", "cms-openstack-pdmv-admins", "cms-service-production-admins", "cms-ggus-anaops-admin", "cms-service-pdmv", "cms-service-pdmv-admins", "cms-service-sdt-admins", "cms-openstack-elastic-admins", "ggus-downtimes-cms", "ggus-downtimes", "cms-service-hypernews-admins", "wlcg-ops-reminder", "cms-ggus-volunteer-admin", "cms-ggus-tier0-admin", "cms-service-crab-operators-admins", "atlas-sw-toberemoved", "atlas-gen-authdb", "atlas-gen", "atlas-gen-old", "cms-members-test", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "OpalParty-2010", "LxPlus-Authorized-Users", "VC-users-lhchiggsxs", "room-booking-users", "room-booking-users-all", "cms-access-caverns", "cms-eos-users", "ap-test-group", "LHC-EWWG", "cernbox-project-lhc-ewwg-eos-readers", "snow-users", "lhc-hcg", "cms-orm-on-duty", "cms-pclMon-auth", "Savannah-admins", "CMS-HiggsToDoubleHadronicTau", "VC-users-desyatfw", "VC-users-cmshcg", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "cmshcg-svn", "bsm-lhc-wg1", "club-running-relay2011-participants", "VC-users-psi46expert", "atlas-eos-users", "vidyo-users", "wlcg-teg-operations", "VC-users-CMSUserCode", "cms-upgrade-office", "vidyo-users-bulk", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cms-exotica-monojet", "mit-htt", "mit-h4l", "mit-wz", "cms-smp-v-xsections", "cern-mac-users", "cms-hzz4l-discussions", "cms-higgs-hww2l2n", "LEP3-Day-Participants-And-Invitees", "cms-russian-t1", "cms-susy-dileptons", "cms-comp-security", "cms-higgs-vbf", "cms-project-lep3studies-admins", "cms-project-lep3studies", "cms-future-conveners", "Joint-Snowmass-Workshop-list", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "cms-comp-ops-transfer-team", "cms-file-invalidations", "fts3-steering", "cms-ggus-datatransfers", "cta-cms-test", "SAPPHiRE-workshops", "cms-computing-web-access-admin", "Higgs-2Mu", "snowmass-ef-cern", "cms-2l2nu-nonofficial", "LxCvmfs-CMS-admin", "lxcvmfs-all", "nationality-all-de", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "cloud-infrastructure-users", "club-football-BBQafterward", "cms-service-cvmfs", "PGMembers-HL-LHC-ECFA", "CMS-BRIL-Project", "occupants-bldg-40", "all-mpa", "cms-authors", "club-football-pepperonies-alumni", "cms-vv-scattering", "cms-l1trigger-hcal", "TLEP-SG", "cms-eos-interlocutors", "eos-announce-cms", "cta-announce-cms", "cta-announce-production", "it-cms-eos-castor-communication", "uscms-up-phase2", "fcc-experiments-hadron", "fcc-study-members", "FCC-EDMS-MEMBER", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-twiki-writers", "fcc-twiki-readers", "fcc-collider-lepton", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "cms-moa-2014", "TLEP-DetectorDesigns", "TLEP-ExperimentalStudies", "fcc-experiments-lepton", "fcc-ee-DetectorDesigns", "TLEP-TopProperties", "fcc-ee-TopProperties", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties", "fcc-ee-H126Properties", "TLEP-H126Properties-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-OnlineSoftware", "fcc-ee-OnlineSoftware", "TLEP-ExperimentalEnvironment", "fcc-ee-ExperimentalEnvironment", "fcc-ee-MDI", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "cms-low-et-monophoton", "TLEP-NewPhysics", "fcc-ee-NewPhysics", "cms-hcal-IB", "occupants-bldg-40-floor-5", "cms-eos-upgrade", "cms-eos-t2-teams", "cms-eos-upgrade-cleaners", "cms-dms", "cms-eos-datamanagers", "lhc-higgs-xsbr", "lhc-higgs-properties", "mit-ch", "CERN-Academic-Training-Program", "german-resident-mpas", "germans-at-cern", "dac-xmas-list", "ph-dep-uo-users_coas_visc_resident", "cern-personnel-on-site", "higgs-couplings-institutes", "cms-us-auto", "cms-us-all", "cms-ph2ec-ib", "cms-chargedhiggssearches", "cms-vbs", "cms-phedex-cern-analysisops-managers", "cms-hgcal-ib-reps", "cms-hgcal-ib", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "uscms-hlup-endcapcal-pi", "uscms-hlup-team", "uscms-up-team", "uscms-hlup-endcapcal-all", "ep-dep-all", "cms-precision-timing-group-2016", "mic-cluster-wb-test-group", "mit-urop", "mit-mex", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "uscms-hlup-trig-all", "cms-chargedhiggs", "cms-orm-shifter-pool", "SP16-18-team", "cms-higgs-working-managers", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "cms-trk-HIP", "cms-trk-HIP-admin", "cms-trk-HIP-core", "cms-hcal-mit-caltech", "nationality-DE-user", "cms-high-lumi-WG", "cern-personnel-comm-en", "cms-chargedhiggssearches-htb", "test-sl-dynamic", "germans-forum-dynamic", "germans-forum", "cms-ECoM17", "cms-ml4dqm", "cernbox-project-cmsml4dc-readers", "cms-mip-timing-endcap-institutes", "cms-mip-timing-detector", "cms-upgrade-P2UG-access", "it-hadoop-nxcals-pro-analytics", "it-hadoop-nxcals-pro", "ai-hadoop-users", "it-hadoop-qa-users", "nxcals-users", "be-dep-co-users", "be-controls-testbed-announcements", "cms-users", "uscms-precision-timing-detector", "cms-mip-timing-detector-contacts", "cms-smp-trigger", "cms-cpu-efficiency", "hllhc-physics", "DarkPhoton-Analysis", "cms-mit", "cms-rfm-2018", "snow-news-membersD", "snow-news-members", "catering-survey", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "iris-hep-team", "iris-hep-servicex", "cms-l1t-ecal-prefiring", "ep-dep-uo-users_coas_visc", "uscms-hlup-MTD", "uscms-hlup-MTD-PIs", "cms-managmnt-cric", "CMS-Managers-1920", "Higgs-2Mu-admin", "cms-crc-debug", "cms-crab-HighPrioUsers-Admins", "cms-orm-debug", "dutch-visits-cms", "cms-offcomp-MetricsAndAnalytics", "it-hadoop-analytix-users", "uscms-hllhc-computing-review-2019", "cms-cccomp", "VBS-hadronic", "chep2019-registrants", "data-preservation-ws", "run3-scouting", "SMLHC-Institutes", "cms-cmpwg", "cms-eos-web-cmscmp", "cms-eos-web-cmscmp-mgt", "cms-hgcal", "rewirement-wlcg-all", "Cms-covid-2020", "covid-19-access-ep-dep", "hllhc-workshop", "cms-EXO-19-008", "wlcg-hl-lhc-review-participants", "lhcc-computing-review-indico-access", "cern-active-users", "cms-SMP-19-008", "fcc-snowmass21", "MPA-CMS", "CMS-management-training-task-force", "cms-ml4sim", "cms-cbi", "vidyo-user-2020", "vertexing-FCCee-informal", "FCC-PhysicsPerformance", "USER_COAS_VISC-resident-in-FR"]}	6
3	cern	7202381	2021-04-08 23:42:21.313617+02	2021-04-08 23:42:21.313695+02	{"name": "Tianyu Justin Yang", "username": "tyjyang", "id": 7202381, "personid": 841672, "email": "tyjyang@mit.edu", "first_name": "Tianyu Justin", "last_name": "Yang", "identityclass": "CERN Registered", "federation": "CERN", "phone": null, "mobile": null, "groups": ["All Exchange People", "Users by Home CERNHOMET", "Users by Letter T", "NICE Enforce Password-protected Screensaver", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "cms-icms-int-comp", "cms-icms-int-cah", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "cms-access-caverns", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "cms-young-us", "cms-under-35", "cms-us-auto", "cms-us-all", "cms-under-40", "mit-urop", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "cern-active-users", "cms-ml4sim"]}	7
4	cern	36250	2021-04-09 16:51:47.253361+02	2021-04-09 16:51:47.253386+02	{"name": "Paolo Giacomelli", "username": "giacomel", "id": 36250, "personid": 395340, "email": "paolo.giacomelli@cern.ch", "first_name": "Paolo", "last_name": "Giacomelli", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227673294", "mobile": null, "groups": ["Users", "All Exchange People", "cms-orca-feedback", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "support-macosx", "Users PH-UCM", "NICE Terminal Services Users", "mac-users", "opal-searches-wg", "club-basketball", "cms-spes", "opal-planefest", "it-service-ce-lic1", "opal-project-mette", "opal-hlf-wg", "opal-football", "event-hemingway", "cnic-users-exchange", "info-experiments", "service-zephyr-messages", "itum-inform-all", "x-experiment-sysadmins-view", "accsoft-devtools-authorized-groups", "accsoft-devtools-ldap-root", "Users by Home CERNHOMEG", "Users by Letter G", "NICE Enforce Password-protected Screensaver", "cmf-local-admins", "cmf-info", "project-dream-gen", "labview-users", "cms-dt-usc55", "cms-barrel-mu-upgr", "cms-dt-run-meeting", "CMS-Muon-General", "cms-icms-an-arcmemembers", "CMF_NSC_632 Users", "cms-project-grounding", "users-italy", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "ap-user", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "edms-users", "test-service-pvssauth", "support-pvss-users", "lhcb-online-admins-allow-post", "en-dep-jira-users", "en-dep-ice-jira-external-users", "readthedocs-users", "unicos-download", "industrial-controls-nexus-users", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "CMF_NSS_78 Delegated Admins", "CMF_NSS_78 Admins", "cms-icms-secr-cb", "cms-icms-secr-irepr", "cms-icms-int-da", "cms-icms-int-mu", "cms-icms-int-sw", "cms-icms-int-ph", "cms-icms-secr-cbins", "all-cern-users", "all-users-at-cern", "fp-pi-cds-cern", "VC-all-users", "VC-users-tdr2", "info-newphysics-workshop", "cms-icms-secr-cbvoting", "cmscaf-announce", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "cernois-es", "cern-status-user", "cern-personnel", "opal-at-cern", "OPAL-Z", "NICE Web Library Proxy Users", "en-dep-ice-users-support", "jira-external-trusted", "cms-communications", "lhc-higgs", "cernbox-project-lhchxswg-readers", "ELG-CERN", "CMF_NSC_165_NSU", "CMF_NSC_165 Delegated Admins", "CMF_NSC_165 Admins", "cms-members-test", "ws", "computing-groups", "dphep-lep-shared", "poll-respondents", "LxPlus-Authorized-Users", "testpanel-cms", "sir-cms-rp-testers", "room-booking-users", "room-booking-users-all", "lhc-physics", "cms-access-caverns", "mathcad-users", "VC-users-cmshcg", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "cmshcg-svn", "CMSGEM-Management", "VC-users-psi46expert", "vidyo-users", "library-proxy-users", "VC-users-CMSUserCode", "ph-dep-UO-TL-DTL-2DTL", "cms-pubcomm-HIG", "cms-publication-committee", "cms-upgrade-office", "vidyo-users-bulk", "cms-HIN-11-013", "cms-icms-an-arcchairmembers", "ESPG-Submission", "bfernan-svnadmin-wstest", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cern-mac-users", "cms-hzz4l-discussions", "cms-CB-career-committee", "cms-CB-career-alumni-admins", "cms-CB-career-networking", "cms-CB-career_information", "cms-physics-italy", "cms-fwd-det-upgrade-advisory", "Training-Horizon-2020", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "nationality-all-it", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "occupants-bldg-28", "all-mpa", "cms-authors", "gem-tdr-editors", "cms-gem-dpg-reco", "cms-gem-dpg", "cms-muon-phase2-upgrade-simulation", "cms-muon-detectorperformance", "GEM-Institutes", "fcc-experiments-hadron", "cms-moa-2014", "TLEP-DetectorDesigns", "fcc-ee-DetectorDesigns", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "cms-gem-italia", "AIDA-2-coordination-office", "aida-members", "AIDA-2ContactPersons", "TLEP-NewPhysics", "fcc-ee-NewPhysics", "AIDA-2calorimetry", "AIDA-2silicon", "AIDA-2_Gas_Counters", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "cms-aida2", "occupants-bldg-28-floor-S", "gas-detectors-italy", "AIDA-2microelectronicsinterconnections", "AIDA-2Common-DAQ", "WhatNextSM-writers", "lhc-higgs-xsbr", "lhc-higgs-properties", "lhc-higgs-bsm", "fcc-experiments-hadron-detector", "CERN-Academic-Training-Program", "cms-comms-interested", "AIDA-2020-SteeringCommittee", "AIDA-2020-Members", "AIDA-2020-Management", "AIDA-2020-CoordinationOffice", "AIDA-2020-GoverningBoard", "AIDA-2020-USP", "AIDA-2020-GoverningBoard-vote", "AIDA-2020-GoverningBoard-beneficiaries", "drupal-admins-aida2020", "drupal-site-admins", "cernbox-users", "AIDA-2020-WP5", "ph-dep-uo-users_coas_visc_resident", "cern-personnel-on-site", "AIDA-2020-WP10", "AIDA-2020-WP13", "edms-users-all", "cms-gem", "ep-dep", "atlas-computing-denominator", "ep-dep-all", "mic-cluster-wb-test-group", "cms-muon-IB-address2", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "AIDA-2020-Newsletter-subscribers", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "Alumni-project-team-1", "alumni-project-phase3", "nationality-IT-inst", "nationality-IT-user", "cern-personnel-comm-en", "cern-former-students", "cern-former-students-admins", "test-sl-dynamic", "alumni-project-phase2", "career-event-organisation", "cms-EXO-17-006", "cms-users", "hllhc-physics", "house-renovation-forum", "ep-dep-UO-TLN-DTLN-2DTLN-no197", "EP-RDET-WG2-Gas", "EP-RDET-general", "cms-HIN-16-003", "catering-survey", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "ep-dep-uo-users_coas_visc", "idea-testbeam-analysis", "RD-FA_Simulation", "cms-EXO-18-005", "cms-muon-nominations-committee", "AIDA-plus-PPT", "AIDA-plus-TC", "AIDA-plus-EoI", "ICHEP2020-IAC", "key4hep-sw", "idea-dualreadout", "CMS-Italy-voting-SP2020", "key4hep-sw-admin", "GEM-IB-RMO", "cern-active-users", "MPA-CMS", "ICHEP2020-Newsletter", "FCC-WSPE-4-PIAC", "HGG-Interference", "People-over65", "fcc-experiments-sw-meetings", "CMS-Italia-RL-RA-Extended", "ismd-boe", "AIDAinnova-Management-team", "AIDAinnova-admincontacts", "AIDAinnova-scientific-contacts", "AIDAinnova-WPcoordinators", "AIDAinnova-Steering-Committee-members", "AIDAinnova-legalcontacts", "AIDAinnova-members", "AIDAinnova-SIAP-members", "AIDAinnova-Governance-Board-members", "USER_COAS_VISC-resident-in-FR"]}	8
5	cern	83027	2021-04-12 08:43:11.932129+02	2021-04-12 08:43:11.93216+02	{"name": "Christophe Grojean", "username": "grojean", "id": 83027, "personid": 477840, "email": "christophe.grojean@cern.ch", "first_name": "Christophe", "last_name": "Grojean", "identityclass": "CERN Registered", "federation": "CERN", "phone": null, "mobile": null, "groups": ["All Exchange People", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "Users PH-TH", "support-macosx", "mac-users", "Users by Home CERNHOMEG", "Users by Letter G", "NICE Enforce Password-protected Screensaver", "cern-mpa", "cern-personnel", "fp-pi-cds-cern", "cern-personnel-on-site", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "edms-users", "users-germany", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "VC-all-users", "info-newphysics-workshop", "th-leshouches", "e-group-owners-admins", "LHC-HIGGS-PUBLIC", "NICE Web Library Proxy Users", "lhc-higgs", "cernbox-project-lhchxswg-readers", "lhec-all", "LHeC-workshop-notifications", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "ELG-CERN", "FP7-Marie-Curie", "FP7-project-leaders-coordinators", "lcd-wg1", "lcd-all", "lcd-wg6", "clicdp-wg-detopt", "new-phys-character", "poll-respondents", "LxPlus-Authorized-Users", "VC-users-lhchiggsxs", "room-booking-users", "room-booking-users-all", "T3-dynamic", "t3", "computing-groups", "LHC-EWWG", "cernbox-project-lhc-ewwg-eos-readers", "bsm-lhc-wg1", "bsm-lhc", "bsm-lhc-wg2", "bsm-lhc-wg3", "library-proxy-users", "vidyo-users-bulk_d60", "ESPG-Submission", "bfernan-svnadmin-wstest", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cern-mac-users", "LEP3-Day-Participants-And-Invitees", "lhcp2013-pc", "CDR-signatory-email", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "SAPPHiRE-workshops", "nationality-all-fr", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-PhenomenologicalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "service-twiki-users", "Twiki Users", "fcc-twiki-readers", "fcc-ee-phenomenologicalstudies", "lhcp2013-plenary-chairs", "all-mpa", "Snowmass-paper-others", "cds-collection-responsibles", "FCC-coordination-group", "fcc-indico-governance", "fcc-office-hr", "fcc-experiments-hadron", "fcc-leaders", "fcc-edms-leaders", "fcc-indico-leaders", "fcc-coordination-physics", "H2020-Marie-Curie", "H2020-newsletter", "H2020-Research-Infrastructures", "H2020-ERC", "lhc-higgs-theory-advisory-committee", "lhc-higgs-xsbr", "lhc-higgs-properties", "lhc-higgs-bsm", "fcc-experiments-physinj", "fcc-experiments-hadron-detector", "fcc-ee-PhenomenologicalStudies-CoordinationGroup", "fcc-ee-PhysicsCoordinationGroup", "lhc-higgs-xsbr-tth", "ship-theory", "ph-dep-uo-visc", "edms-users-all", "higgs-couplings-institutes", "higgs-couplings-participants", "ship-physics-paper", "lhc-dmwg", "lhc-dmwg-material", "lhc-dmwg-contributors", "th-dep-sp", "t3-primary-account", "th-dep-visc", "th-dep-cosmology", "th-dep-only", "TH-world", "nationality-DE-inst", "nationality-FR-user", "cern-personnel-comm-fr", "FP7-H2020-Scientists-in-Charge", "test-sl-dynamic", "th-dep-dynamic", "th-dep-all", "ep-dep-info-seminars", "th-dep-twiki", "vbscan-general", "clicdp-wg-physicspotential", "lhc-higgs-vbf", "lhc-higgs-prop-fidSTXS", "hllhc-physics", "hllhc-wg2", "hllhc-wg3", "fcc-cdr-ee", "fcc-cdr-editors", "house-renovation-forum", "clicdp-advisory-board", "th-dep-info-seminars", "Collider-Cross-Talk", "catering-survey-fr", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "lhec-workshop-announcements", "ep-dep-uo-users_coas_visc", "lhcb-implications-bulletins", "ECFA-Newsletter", "MUONCOLLIDER-DETECTOR-PHYSICS", "SMLHC-Institutes", "fcc-ee-conf", "lhc-higgs-offshell-interpretations", "lhc-higgs-offshell-interpretations-models", "th-dep-BSM", "lhc-physics-to-inscribe", "lhc-physics-tmp", "LHC-eftwg", "cern-active-users", "fcc-snowmass21", "sslp-lecturers", "fcc-ee-PhysicsBenchmarkCommittee", "germans-forum-non-germans", "EPFL-HET-seminars", "vidyo-second-mailing_d36", "smlhc-conveners-hig", "smlhc-conveners", "ecfa-iac-members"]}	9
7	cern	350373	2021-04-12 15:50:56.621112+02	2021-04-12 15:50:56.621135+02	{"name": "Rebeca Gonzalez Suarez", "username": "rebeca", "id": 350373, "personid": 664945, "email": "rebeca.gonzalez.suarez@cern.ch", "first_name": "Rebeca", "last_name": "Gonzalez Suarez", "identityclass": "CERN Registered", "federation": "CERN", "phone": null, "mobile": null, "groups": ["All Exchange People", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "Users PH-UCM", "club-micro-info", "readthedocs-users", "readthedocs-external-users", "spanish-gang", "accu-members", "accu-minutes", "Users by Home CERNHOMER", "Users by Letter R", "NICE Enforce Password-protected Screensaver", "atlas-guides", "cms-icms-an-arcmemembers", "service-guides-cafe-dynamic", "PER-Seminar-Invites", "users-sweden", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "atlas-women", "ap-user", "atlas-dev-dynamic", "hn-atlas-exotics-wg", "atlas-phys-exotics", "atlas-phys-allgroups", "atlas-phys-gen-announcements", "hn-atlas-topphysicswg", "users-sweden-postmasters", "hn-atlas-top-reconstruction", "hn-atlas-rpv-long-lived-susy", "hn-atlas-susy-wg", "atlas-phys-exotics-susy-llp-forum", "hn-atlas-exotics-llp", "cms-centre-users", "atlas-id-slhc-track-trigger", "atlas-eos-access-det-htt", "all-cern-users", "all-users-at-cern", "fp-pi-cds-cern", "VC-all-users", "VC-users-tdr2", "ATLAS-Outreach", "atlas-outreach-coordination", "service-cds-referee-atn-oreach-admins", "service-cds-referee-atn-oreach", "service-cds-referee-atn-all", "ATLAS-Outreach-admin", "atlas-outreach-avc", "atlas-outreach-avc-maintenance", "atlas-outreach-info", "atlas-outreach-lego", "Protocol-ATLAS", "atlas-outreach-editors", "atlas-outreach-moderators", "atlas-outreach-media-requests", "atlas-outreach-speakers", "atlas-subsystems-speakers-comm", "atlas-outreach-cern-pressoffice-contacts", "atlas-outreach-cds-access", "atlas-outreach-virtual-visit-team", "atlas-virtual-visit-protocol", "atlas-outreach-instagram", "atlas-com-media-moderators", "atlas-com-media-editors", "atlas-outreach-data-and-tools", "atlas-outreach-conveners", "atlas-dataprep-earlyeventscanning", "atlas-otrc-conveners", "atlas-pub-otrc-2019-01-contact-editors", "atlas-pubcom-contact-editors", "atlas-pub-otrc-2019-01-editors", "atlas-ana-otrc-2019-01-contact-editors", "atlas-plot-otrc-2019-01-analysis-team", "atlas-plot-otrc-2019-02-analysis-team", "atlas-pub-otrc-2015-01-contact-editors", "atlas-pub-otrc-2015-01-editors", "atlas-pub-otrc-2016-01-editors", "atlas-pub-otrc-2016-01-contact-editors", "atlas-outreach-virtual-visit-editors", "drupal-admins-atlasvirtualvisit-web-cern-ch", "drupal-site-admins", "atlas-outreach-web-team", "atlas-outreach-cds-editors", "atlas-outreach-communication-team", "cernbox-project-atlas-outreach-writers", "atlas-outreach-comms-request", "ippog-forum", "ippog-cds-contributors", "atlas-comms-updates", "cernbox-project-atlas-outreach-admins", "atlas-outreach-cds-video", "atlas-outreach-flickr", "atlas-outreach-ichep2020", "atlas-public-web-feedback", "info-newphysics-workshop", "atlas-active", "atlas-readaccess-active-members", "service-twiki-users", "Twiki Users", "hn-atlas-access-allarchives", "atlas-webaccess-operation", "atlas-readaccess-twiki-computing", "atlas-webaccess-computing", "atlas-readaccess-twiki", "atlas-readaccess-main", "atlas-computing-denominator", " Twiki Atlas web ", "atlas-upgrade-web-loi-readers", "strmmon-auth", "atlas-otp-web-users", "atlas-active-authdb", "atlas-readaccess-svn", "atlas-sw-git-access", "cmscaf-announce", "cernois-es", "chis-membersF", "cern-status-user", "cern-personnel", "atlas-women-eyh", "copino-vertical-integration", "cms-communications", "cms-portal-receive-news", "cms-service-caf", "atlas-dev-dynamic2", "cms-online-trigger-shifts", "lhc-higgs", "cernbox-project-lhchxswg-readers", "ELG-CERN", "cms-tesco", "cms-service-caf-backup", "cms-members-test", "fax-users", "zp", "computing-groups", "ph-dep-mic-linux-cluster-groups", "cernbox-project-atlas-software-dist-readers", "LxPlus-Authorized-Users", "VC-users-lhchiggsxs", "room-booking-users", "room-booking-users-all", "LOG-Meeting", "undisclosed-list", "zp-dynamic", "cms-eos-users", "Collider-Cross-Talk", "lhc-hcg", "cern-women-eyh", "atlas-tdaq-testbed", "cms-icms-secr-women", "cms-slimos", "cms-safety-all", "VC-users-cmshcg", "cmshcg-svn", "iPPOG-database", "cmseos-lhe-rwo", "VC-users-psi46expert", "cms-singletop-tw", "library-proxy-users", "VC-users-CMSUserCode", "cms-project-highpuperf", "vidyo-users-bulk_d60", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cms-self-rescue-mask-training", "cms-higgs-hww2l2n", "lhc-toplhcwg", "uppsala-atlas-group", "cms-jira-trk-dpg-developers", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "tH-working-group", "club-micro-membres", "holidays-to-calendar", "nationality-all-es", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "TLEP-PhenomenologicalStudies", "fcc-ee-phenomenologicalstudies", "all-mpa", "survey-citymobil", "tH-working-group-admin", "cms-singletop-code-development", "atlas-jobs", "atlas-phys-susy-direct-sbottomstop", "atlas-phys-exotics-hqt", "spain-staff-local", "cms-moa-2014", "cms-less36", "TLEP-DetectorDesigns", "fcc-ee-DetectorDesigns", "TLEP-TopProperties", "fcc-ee-TopProperties", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties", "fcc-ee-H126Properties", "cms-blog-authors", "TLEP-ExperimentalEnvironment", "fcc-ee-ExperimentalEnvironment", "fcc-ee-MDI", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "fcc-collider-lepton", "TLEP-NewPhysics", "fcc-ee-NewPhysics", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "uscmsatcern-postdocs", "lhc-higgs-xsbr", "atlas-activequal", "atlas-qual-authdb", "atlas-readaccess-current-physicists", "Atlas TWiki Users", "atlas-activequal-1", "atlas-activequal-glance", "atlas-current-physicists", "atlas-physics-readers", "od-policy-implementation", "atlas-active-1", "atlas-active-glance", "atlas-active-members", "atlas-gen", "atlas-active-members-all", "atlas-otp-users", "atlas-active-glance-1", "anti-copino", "atlas-activequal-glance-1", "atlas-phys-exotics-llp-hnl", "cms-virtual-guides", "monotop-atlas", "cernbox-users", "cms-smp-vv-ww2l2n", "edms-users-all", "atlas-public-web-admins", "drupal-admins-atlas-public-dev", "drupal-admins-test-atlas-public-web-cern-ch", "drupal-admins-atlas-public-web-cern-ch", "drupal-admins-test-atlas-public2-web-cern-ch", "drupal-admins-test-atlas-public3-web-cern-ch", "atlas-public-web-moderators", "drupal-admins-atlas-public-d8", "drupal-admins-atlas-public-d8-v2", "drupal-admins-test-migration-atlas", "atlas-collaboration-web-admins", "drupal-admins-test-eduardo-d8", "drupal-admins-atlas-collaboration-d8", "drupal-admins-test-fborgesa-drupal", "drupal-admins-test-tilecalor-d8", "drupal-admins-atlas-tilecal-d8", "drupal-admins-test-atlcoll-d8", "drupal-admins-atlas-collaboration", "drupal-admins-atlas-public-d8-alpha", "drupal-admins-atlas-public-d8-copy", "conf12-all", "cms-gen-xsec-taskforce", "cms-tW-13TeV", "cms-tW-13TeV-admin", "ep-dep", "lhctopwg-members", "lhctopwg-extended-members", "ep-dep-all", "mic-cluster-wb-test-group", "Weekly-editorial-meeting-members", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "atlas-outreach-socialmedia", "wit-matters", "atlas-comp-ml-announce", "atlas-computing", "lhc-llp", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "cms-TOP-16-008", "cms-TOP-16-005", "nationality-SE-inst", "nationality-ES-user", "cms-TOP-16-001", "cms-TOP-16-003", "cms-TOP-16-006", "atlas-sweden-analysis", "cern-personnel-comm-fr", "cms-TOP-12-039", "cms-TOP-16-016", "cms-TOP-15-001", "cms-TOP-15-015", "cms-TOP-14-008", "test-sl-dynamic", "cms-TOP-15-008", "cms-TOP-14-013", "CMS-Evacuation-Drill-EYETS2016", "cms-TOP-16-010", "guides-es", "guides-fr", "guides-en", "cms-TOP-16-007", "alumni-registered-mp", "alumni-members-all", "cern-eyh-2017", "Diversity-newsletter", "cms-TOP-16-023", "cms-TOP-17-005", "cms-TOP-15-016", "cms-TOP-17-009", "cms-TOP-16-020", "cms-TOP-17-003", "cms-TOP-16-014", "cms-rfm-2018", "cms-uxc55", "cms-TOP-17-002", "cms-TOP-17-007", "cms-TOP-17-018", "alumni-activated-accounts", "cms-TOP-17-015", "cms-TOP-17-013", "catering-survey-fr", "atlas-tdaq-htt-offline", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "llp-hnl", "atlas-tdaq-htt", "ep-dep-uo-users_coas_visc", "atlas-phys-gen-common-dark-matter", "atlas-phys-exotics-topDM", "atlas-diversity-inclusion-forum", "sweden-european-strategy-input", "atlas-outreach-opendays-volunteers", "atlas-sweden-uu-all", "atlas-sweden-all", "ECFA-Newsletter", "fcc-eos-read-ee", "atlas-phys-exotics-darkmesons", "atlas-ana-exot-2019-17-analysis-team", "atlas-mgt-active-members", "atlas-dev-static1", "atlas-mgt-current-physicists", "atlas-inst-se-uppsala-active-members", "atlas-inst-se-all-active-members", "atlas-inst-all-active-members", "atlas-inst-se-uppsala-current-physicists", "atlas-inst-se-all-current-physicists", "atlas-inst-all-current-physicists", "atlas-ana-topq-2018-10-editorial-board", "atlas-tdaq-htt-firmware-design", "atlas-tdaq-firmware-design", "atlas-mgt-zp-active-members", "atlas-inst-zp-current-physicists", "atlas-mgt-zp-current-physicists", "atlas-inst-zp-active-members", "lhc-llp-committee", "atlas-comp-ml-anomaly-detection", "codex-b", "uu-masterclasses", "nuc2020-all", "uu-masterclasses-admin", "atlas-trig-id-unconventional-track", "EuCAPT-news", "guides-atlas-cavern", "guides-ad", "guides-sm18", "guides-cast", "guides-ccc", "guides-lhcb-exhibition", "guides-microcosm", "lhc-llpwg", "LHC-eftwg", "accu-voters-chairperson-election-2020", "cern-active-users", "atlas-tdaq-htt-test-vectors", "muon-wide-particpants", "cernphone-users", "ICHEP2020-Newsletter", "llp-itn", "dark-showers-snowmass21", "fcc-ee-EPJAuthorsPart2", "LLP-FCCee-informal", "vidyo-second-mailing_d36", "FCC-nordic-day", "vertexing-FCCee-informal", "FCC-PhysicsPerformance", "FCC-sweden", "FCC-nordic", "FCC-sweden-admin", "ECFA-DetectorRDRoadmap-Sweden", "phoenix-event-display"]}	11
6	cern	40392	2021-04-12 19:06:14.997742+02	2021-04-12 11:15:34.512477+02	{"name": "Alain Blondel", "username": "bdl", "id": 40392, "personid": 375821, "email": "alain.blondel@cern.ch", "first_name": "Alain", "last_name": "Blondel", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227675827", "mobile": "+41754114058", "groups": ["Users", "All Exchange People", "Users PH-UFT", "harp-board", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "atlas-larg", "hep-mgt-bene-admins", "nu-fact-wg", "NICE Terminal Services Users", "mac-users", "lep-ew", "harp-authors", "hep-ecfa-wg", "aleph-wwlept", "aleph-guests", "ab-mgt-physicsatmwatt", "pg-sg-council", "mgt-nupac-participants", "aleph-editorial", "forum-harp-analysis", "aleph-wwjets", "harp-collaboration", "hep-mgt-bene", "sg-contribution", "aleph-general", "service-electronics-pool-users", "pofpa-wg", "club-dancing-ancien", "sl-perc", "sg-council", "Users by Home CERNHOMEB", "iss-ecc-wg", "Users by Letter B", "NICE Enforce Password-protected Screensaver", "itinere-academic", "cern-project-t2k-admins", "paf-wg-cc", "harp-sc", "harp-sc-admins", "mpgd", "na61-all", "na61-collaborators", "na61-soft-sender-whitelist", "na61-board", "na61-board-admins", "hep-project-laguna", "mpgdcontact", "atlas-larg-geneva", "cern-project-t2k", "CMF_NSC_632 Users", "EuCARD-WEB", "info-greybook-teamleaders", "users-switzerland", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "info-experiment-teamleaders", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "ap-user", "edms-users", "club-dance-toutesdanses", "club-dancing", "project-eucard-scitechcontacts", "all-cern-users", "all-users-at-cern", "fp-pi-cds-cern", "VC-all-users", "info-newphysics-workshop", "EuCARD-GoverningBoard", "eucard-participants", "EuCARD-newsletter", "accelerating-news", "VC-users-na61papers", "cernois-es", "e-group-owners-admins", "Eucard-tech-contacts", "cern-status-user", "cern-personnel", "EuCARD-WP2-DCOcontacts", "cafe-neutrino", "spc-formerdelegates", "EuCARD-NEu2012-admin", "ELG-CERN", "atlas-gen-authdb", "atlas-gen", "xu", "computing-groups", "vq-admins", "computing-groups-administrators", "lcd-wg6", "lcd-all", "clicdp-wg-detopt", "ESHEP-Supervisors-10", "LxPlus-Authorized-Users", "room-booking-users", "room-booking-users-all", "lhc-physics", "EuCARD-NuFact11-LOC", "cern-ambassadors", "EuCARD-NuFACT11-invitees-admin", "EuCARD-NuFACT11-invitees", "na61-ana", "na61-th", "na61-sos", "VC-users-desyatfw", "ENTW-PC", "hep-project-laguna-lbno-IB", "hep-project-laguna-lbno-EC", "ph-dep-UO-TL-DTL-2DTL", "hep-laguna-lbno-WP4-ND", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "building-1", "entw-inv", "cern-mac-users", "aida-wp852", "LEP3-Day-Participants-And-Invitees", "LEP3-Day-Admin", "na61-hard", "hep-project-laguna-lbno-ND-admins", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "SAPPHiRE-workshops", "TLEP3-steering-group-admins", "CENF-PTM-Members", "CENF-General", "eos-experiment-cenf-general-readers", "hep-project-laguna-proto", "nationality-all-fr", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "service-twiki-users", "Twiki Users", "fcc-twiki-readers", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "fcc-collider-lepton", "TLEP-PhenomenologicalStudies", "fcc-ee-phenomenologicalstudies", "TLEP-Admins", "ThEC2013-all", "occupants-bldg-1", "all-mpa", "survey-citymobil", "rd51-vote2013", "OD-BosonsMore-update", "TLEP-SG", "FCC-coordination-group", "fcc-indico-governance", "fcc-office-hr", "ENTW2014-PC", "entw2014-inv", "fcc-experiments-hadron", "fcc-coordinators", "fcc-event-kickoff", "fcc-egroup-tempadmin", "neutrino-unige", "fcc-leaders", "fcc-edms-leaders", "fcc-indico-leaders", "fcc-experiments-lepton-admin", "fcc-coordination-physics", "TLEP-DetectorDesigns-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "TLEP-TopProperties-admin", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-ElectroweakPhysics-admin", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties-admin", "TLEP-OnlineSoftware-admin", "TLEP-FlavourPhysics-admin", "TLEP-ExperimentalEnvironment-admin", "fcc-ee-MDI-Coordination", "fcc-ee-MDI", "TLEP-OfflineSoftware-admin", "ship-collaboration", "TLEP-NewPhysics-admin", "TLEP-QCD-admin", "occupants-bldg-1-floor-1", "Baby-MIND-MAIN", "CENF-MIND", "CERN-Academic-Training-Program", "AIDA-2020-Technical-Contacts-Benef", "AIDA-2020-Members", "ph-dep-uo-users_coas_visc_resident", "cern-personnel-on-site", "AIDA-2020-GoverningBoard", "FCC-ee-Optics", "AIDA-2020-WP8", "edms-users-all", "higgs-couplings-institutes", "Acceleratingnews-members", "na61-conveners", "conf12-all", "AIDA-2020-GoverningBoard-vote", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "na61-doc-devel", "ep-dep-all", "mic-cluster-wb-test-group", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "CENF-EU", "AIDA-2020-Newsletter-subscribers", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "contacts-TC-EVH", "nationality-FR-user", "nationality-CH-inst", "FCC-addenda-contacts", "cern-personnel-comm-fr", "fcc-ee-PolarizationAndEnergyCalibration", "fcc-ee-PolarizationAndEnergyCalibration-admin", "test-sl-dynamic", "AIDA-2020-GoverningBoard-beneficiaries", "fcc-social", "TPC-EOI-at-CERN-admin", "alumni-registered-mp", "alumni-members-all", "CENF-ND", "CENF-ND-Wg1", "mailing-tls", "SuperFGD-RD-CERN", "SuperFGD-RD-CERN-admin", "fcc-cdr-ee", "fcc-cdr-editors", "ep-dep-UO-TLN-DTLN-2DTLN-no197", "CDC-Ballroom", "alumni-activated-accounts", "nuSTORM-Gen", "catering-survey-fr", "Assign-Office365ProPlusForFaculty", "CMF_NSC_2233_NSU", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "ep-dep-uo-users_coas_visc", "ECFA-Newsletter", "fcc-experiments-sw-core", "FCC-PhysicsAndExperiments-SteeringGroup", "SMLHC-Institutes", "nuc2020-all", "drupal-admins-fcc-ee", "drupal-site-admins", "fcc-ee-conf", "drupal-admins-test-d8-fcc-ee", "oc2-exceptional-ep-dep", "lhc-physics-tmp", "fccis-wp5-members", "fccis-all", "fccis-wp2-members", "fcc-twiki-editors", "cern-active-users", "fcc-snowmass21", "fcc-ee-PhysicsBenchmarkCommittee-admin", "ICHEP2020-Newsletter", "FCC-WSPE-4-PIAC", "FCC-WSPE-4-conv", "fcc-ee-EPJAuthorsPart2", "fccis-eb-members", "fcc-edms-governance", "LLP-FCCee-informal", "fcc-ee-EPJAuthorsPart2-admin", "fccis-wp5-epj", "fcc-experiments-sw-meetings", "ecfa-iac-members", "USER_COAS_VISC-resident-in-FR"]}	10
8	cern	279133	2021-04-15 15:05:14.724349+02	2021-04-15 15:05:14.724382+02	{"name": "David Enterria", "username": "dde", "id": 279133, "personid": 393469, "email": "david.d'enterria@cern.ch", "first_name": "David", "last_name": "Enterria", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227671857", "mobile": "+41754114558", "groups": ["All Exchange People", "cms-physics-qcd", "cms-sw-fastsimul", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "linux-announce", "Users PH-CMG", "cms-oscar-support", "cms-fast-simulation", "NICE Terminal Services Users", "project-lcg-simu", "atlas-enews", "lhc-event-generators", "club-ypp", "bulletin-alert", "cms-castor", "hep-project-upc", "club-dancing-ancien", "Users by Home CERNHOMED", "globe-info", "mc4lhc-06", "forward-lumi-2007", "Users by Letter D", "NICE Enforce Password-protected Screensaver", "tan-integration", "cms-service-vo-members", "project-lhcsafety", "cms-icms-an-arcmemembers", "linux-users", "CMF_NSC_632 Users", "info-volontaires-jpo08", "alice-off", "alice-offline-announce", "senior-staff", "ap-ph-staff", "staff-all", "aisbi-tpr-merittool-users", "aisbi-tpr-users", "aisbi-domain-users", "aisbi-all-users", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "fax-candidates", "cern-staff", "cern-personnel", "fp-pi-cds-cern", "cern-personnel-on-site", "aisbi-tpr-dashboard-meritscatterplot-users", "aisbi-tpr-dashboard-users", "CERN-Pension-Fund-Survey", "comms-survey-groups", "staf-fell-pjas-at-cern", "sc-dep-dist-reports", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "info-climbing", "edms-users", "ap-members-all", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "ap-ph-members", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "ap-vote-46-55", "retequarkonii-i3hp2", "club-fitness-20082009", "CERN-Fitness-COVID19", "cms-icms-secr-off", "cms-icms-int-sw", "VC-all-users", "VC-users-tdr2", "cms-icms-secr-b40", "info-newphysics-workshop", "ski-boots-on-foots", "cms-B40-secr", "cms-cern-staff", "cms-cern-staff-fellows", "Cms-covid-2020", "covid-19-access-ep-dep", "cms-all-cern", "cms-cern-all", "eds-09", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "cernois-es", "e-group-owners-admins", "chis-membersE", "ph-dep-cmg-alld", "ph-dep-cmg-all", "CMS-French-Guides", "CMS-Guides", "MBUE-LHC", "MPI-2012", "LHC-HIGGS-PUBLIC", "ph-dep-cmg-cmst3-announcements", "lhc-higgs", "cernbox-project-lhchxswg-readers", "lhec-workshop", "lhec-all", "LHeC-workshop-notifications", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "ELG-CERN", "diffraction-lhc", "new-phys-character", "cms-members-test", "staff-cat1and2", "atc-enquiry", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "LxPlus-Authorized-Users", "VC-users-lhchiggsxs", "room-booking-users", "room-booking-users-all", "lhc-lumi-days", "ph-dep-cms-members", "EUprojects-Contacts", "EUprojects-ReadonlyUsers", "lhc-physics", "cms-access-caverns", "cms-eos-users", "ap-test-group", "LHC-EWWG", "cernbox-project-lhc-ewwg-eos-readers", "lhc-hcg", "VC-users-cmshcg", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "cmshcg-svn", "cern-status-staf", "lhec-cdr-authors", "lhec-authors", "VC-users-psi46expert", "cern-QuantumDiaries", "VC-users-CMSUserCode", "cms-totem-discussion", "cms-pubcomm-SMP", "cms-publication-committee", "cms-pubcomm-FSQ", "cms-pubcomm-pps", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cms-pubcomm-PRF", "cms-self-rescue-mask-training", "lhc-ewwg-vjets", "qm2012-iac", "Marie-Curie-former-individual-fellows", "cms-communications-translations", "CMS-Spanish-guides", "cms-hi-institutes", "cms-eflow-hpu", "CDR-signatory-email", "CERN-Direct-Employees", "CERN-Employees", "eduroam-users", "cms-gen-matrixelement", "cms-fell-phd-tech-instCH", "IS2013-list", "nationality-all-es", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "qm2014-longlist", "lhc-fwdlhcwg", "occupants-bldg-40", "all-mpe", "cmg-physics-chat", "cms-authors", "cms-gen-tunes", "cms-vv-scattering", "fcc-experiments-hadron", "fcc-collider-lepton", "spain-staff-local", "hot-quarks-announcements", "cms-moa-2014", "TLEP-H126Properties", "fcc-ee-H126Properties", "cmg-cmgtools", "cms-totem-pps", "cernbox-project-ctpps-writers", "cernbox-project-ctpps-readers", "TLEP-QCD-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-QCD", "fcc-ee-qcd", "fcc-ions", "isvhecri-2014", "HighPT-workshop-IAC", "occupants-bldg-40-floor-1", "qgp-conflist", "lhc-higgs-xsbr", "lhc-higgs-properties", "lhc-higgs-bsm", "lhc-dmf", "lhc-dmwg", "lhc-dmwg-material", "CERN-Academic-Training-Program", "H2020-Scientists-in-Charge", "H2020-newsletter", "FP7-H2020-Scientists-in-Charge", "hr-summ-ms-super", "hr-summ-nms-super", "FCC-ee-Optics", "edms-users-all", "developers-forum-contacts", "conf12-all", "sqm2016-longlist", "ep-dep-cmg", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "ep-dep-staff-senior", "ep-dep-staff", "ep-dep-mpe", "ep-dep-cern", "ep-dep-booking-4S030", "ep-dep-cmg-alld", "ep-dep-cmg-all", "ep-dep-cmg-cern", "ep-dep-all", "mic-cluster-wb-test-group", "ep-dep-cat1", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "members-hr-summ-requestor", "members-hr-summ-reserved-requestor", "cms-FSQ-13-010", "cms-FSQ-12-004", "TH-world", "lhc-pdf4lhc", "upc-enthusiasts", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "nationality-ES-cern", "ep-dep-cmg-staffd", "ep-dep-cmg-staff", "cern-personnel-comm-en", "cms-TRK-15-002", "cms-HIN-14-009", "cms-FSQ-13-009", "cms-FSQ-12-001", "cms-FSQ-16-002", "ep-dep-cms-staff-fellows-CMx", "ep-dep-cms-staff-fellows", "cms-FSQ-16-004", "test-sl-dynamic", "cms-PRF-14-001", "PBC-info", "cms-PPS-17-001", "vbscan-general", "ats-custom-basic-users", "ats-all-users", "ats-basic-users", "cms-FSQ-16-008", "cms-FSQ-14-002", "cms-FSQ-16-005", "hllhc-physics", "JetQuenchingTools-member", "cernbox-project-jetquenching-writers", "ap-college-16-ep", "cms-BTV-16-002", "cms-TDR-17-004", "cms-TDR-17-002", "cms-TDR-17-003", "hllhc-wg1", "hllhc-wg2", "hllhc-wg5", "cms-TDR-17-005", "cms-MUO-16-001", "cms-FSQ-15-005", "cms-TDR-17-006", "cms-TDR-17-007", "proton-oxygen-science-case", "cms-TRK-17-001", "cms-FSQ-16-011", "cms-FSQ-16-007", "th-dep-info-seminars", "Collider-Cross-Talk", "cms-fsq-17-001", "catering-survey", "cms-cernt3-htcondor", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "cms-TAU-16-003", "cms-FSQ-16-012", "cms-FSQ-15-009", "lhec-workshop-announcements", "cms-JME-17-001", "cms-GEN-17-001", "cms-FSQ-12-033", "cms-FSQ-15-006", "cms-TAU-18-001", "jettools2018-bergen", "disws-registrants-eicusers", "lhcb-lbems-users", "qm2019-public", "cms-FSQ-18-001", "ECFA-Newsletter", "cms-hi-top-pbpb2018", "dutch-visits-cms", "cms-FSQ-16-006", "cms-TDR-19-001", "PPG2020-QCD", "fcc-eos-write-ee", "fcc-eos-read-ee", "cms-PRF-18-001", "cms-cernt3-eos-lightbylight", "cms-PRF-18-003", "FCC-PhysicsAndExperiments-SteeringGroup", "cern-personnel-meyrin", "MUONCOLLIDER-DETECTOR-PHYSICS", "MUONCOLLIDER-FACILITY", "cms-MUO-17-001", "cms-JME-18-002", "cms-JME-18-001", "cms-TDR-19-003", "cms-SMP-18-005", "cms-inst-cern", "honex-comb", "CERN-EN-Staff", "cms-TRG-17-001", "CHIS-obligatoires", "CHIS-members", "nuc2020-all", "lhc-dmwg-contributors-tchannel", "cms-PRF-18-002", "summ2020-supervisors-Round2", "th-dep-qcd-all", "lhc-physics-tmp", "cms-light-by-light-2018", "CMS-English-Guides", "malt-office-EP-volunteers", "cern-active-users", "CMS-restart-teams", "CMS-Covid-short-2020", "oc2-exceptional-ep-dep", "HP2020-session-conveners", "HP2020-session-chairs", "HP2020-session-managers-and-chairs", "muon-wide-particpants", "lhapdf-announce", "nms2020-onlineproject-mentors", "ICHEP2020-Newsletter", "lbems-users", "cms-members-cern-staf", "ep-cmg-staff-ic", "FIPs2020-scalar", "FIPs2020-pseudoscalar", "cms-fms-llp", "fcc-ee-EPJAuthorsPart2", "cmg-website-page-editors", "EPFL-HET-seminars", "Higgs2020-Participants", "EU-projects-active-2021", "cms-SMP-18-011", "cms-members-static"]}	13
9	cern	34537	2021-04-15 15:08:56.227496+02	2021-04-15 15:08:56.227534+02	{"name": "Patrick Janot", "username": "janot", "id": 34537, "personid": 402624, "email": "patrick.janot@cern.ch", "first_name": "Patrick", "last_name": "Janot", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227679459", "mobile": null, "groups": ["Users", "All Exchange People", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "cms-sw-fastsimul-admins", "Users PH-CMG", "cms-btau-tracker-developers", "nu-fact-wg", "NICE Terminal Services Users", "aleph-phys", "cms-trig-ptdr", "ph-dep-cma-rescat-admins", "aleph-rescat", "aleph-editorial", "aleph-staff", "hep-mgt-bene", "cms-cb-publication", "aleph-general", "ph-dep-cma-physicists-admins", "aleph-ep-news", "sl-perc", "Users by Home CERNHOMEJ", "cms-sw-issuetracking", "Users by Letter J", "NICE Enforce Password-protected Screensaver", "project-dream-gen", "ph-dep-cmg-all-admins", "cms-service-guides", "ph-dep-cmo-gls", "cms-icms-an-arcmemembers", "cms-icms-an-ancontacts", "cms-ecom", "cms-cmg-topanalysis", "CMF_NSC_632 Users", "vecbos-cms-work", "senior-staff", "ap-ph-staff", "staff-all", "aisbi-tpr-merittool-users", "aisbi-tpr-users", "aisbi-domain-users", "aisbi-all-users", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "fax-candidates", "cern-staff", "cern-personnel", "fp-pi-cds-cern", "cern-personnel-on-site", "aisbi-tpr-dashboard-meritscatterplot-users", "aisbi-tpr-dashboard-users", "CERN-Pension-Fund-Survey", "comms-survey-groups", "staf-fell-pjas-at-cern", "sc-dep-dist-reports", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "edms-users", "ap-members-all", "info-diplomatic-status", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "ap-ph-members", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "ph-dep-cmg-co-admins", "cms-icms-int-mu", "cms-icms-int-tk", "cms-icms-secr-off", "cms-icms-int-cae", "cms-icms-int-ph", "VC-all-users", "VC-users-tdr2", "cms-icms-secr-b40", "cms-icms-secr-cern", "info-newphysics-workshop", "cms-B40-secr", "cms-icms-cern-cms", "cms-cern-staff", "cms-cern-staff-fellows", "Cms-covid-2020", "covid-19-access-ep-dep", "cms-all-cern", "cms-cern-all", "cmscaf-announce", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "cernois-es", "cms-pvtrepresentatives", "e-group-owners-admins", "chis-membersF", "ph-dep-cmg-ps-staff", "ph-dep-cmg-alld", "ph-dep-cmg-all", "cms-SUS-09-001", "francais1-au-cern", "francais-au-cern", "ph-dep-cmg-cmst3", "cms-met-commissioning", "cms-service-caf", "ph-dep-cmg-cmst3-announcements", "ELG-CERN", "ph-dep-cmg-cmst3-announcements-admin", "cms-asc", "ph-dep-cmg-co-fell-admin", "ph-dep-cmg-co-staff-admin", "Madeleine-Retirement", "cms-service-caf-backup", "cms-members-test", "staff-cat1and2", "atc-enquiry", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "lcd-wg6", "lcd-all", "clicdp-wg-detopt", "LxPlus-Authorized-Users", "room-booking-users", "room-booking-users-all", "ph-dep-cms-members", "cms-access-caverns", "cms-eos-users", "EuCARD-NuFACT11-invitees", "Savannah-admins", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "cern-status-staf", "VC-users-psi46expert", "VC-users-CMSUserCode", "cms-project-highpuperf", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cern-mac-users", "cms-hzz4l-discussions", "LEP3-Day-Participants-And-Invitees", "gfc-membres", "cms-project-lep3studies-admins", "cms-project-lep3studies", "Joint-Snowmass-Workshop-list", "CERN-Direct-Employees", "CERN-Employees", "eduroam-users", "SAPPHiRE-workshops", "cms-fell-phd-tech-instCH", "TLEP3-steering-group-admins", "ph-dep-cmg-cmst3-admin", "holidays-to-calendar", "nationality-all-fr", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "fcc-collider-lepton", "TLEP-Admins", "TLEP-PhenomenologicalStudies", "fcc-ee-phenomenologicalstudies", "cms-tth-leptons", "cms-ttH", "occupants-bldg-40", "all-mpe", "cmg-physics-chat", "cms-authors", "TLEP-SG", "FCC-coordination-group", "fcc-indico-governance", "fcc-office-hr", "fcc-experiments-hadron", "fcc-coordinators", "cms-EXO-09-002", "fcc-leaders", "fcc-edms-leaders", "fcc-indico-leaders", "fcc-experiments-lepton-admin", "fcc-coordination-physics", "cms-moa-2014", "TLEP-DetectorDesigns", "fcc-ee-DetectorDesigns", "TLEP-DetectorDesigns-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "TLEP-TopProperties", "fcc-ee-TopProperties", "TLEP-TopProperties-admin", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-ElectroweakPhysics-admin", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties", "fcc-ee-H126Properties", "TLEP-H126Properties-admin", "TLEP-OnlineSoftware-admin", "TLEP-OnlineSoftware", "fcc-ee-OnlineSoftware", "TLEP-FlavourPhysics-admin", "TLEP-FlavourPhysics", "fcc-ee-FlavourPhysics", "TLEP-ExperimentalEnvironment-admin", "fcc-ee-MDI-Coordination", "fcc-ee-MDI", "TLEP-ExperimentalEnvironment", "fcc-ee-ExperimentalEnvironment", "cmg-cmgtools", "TLEP-OfflineSoftware-admin", "cmg-physics-susy", "TLEP-NewPhysics", "fcc-ee-NewPhysics", "TLEP-NewPhysics-admin", "TLEP-QCD-admin", "TLEP-QCD", "fcc-ee-qcd", "occupants-bldg-40-floor-1", "TLEP-twitter", "TLEP-twitter-admin", "fcc-vo-admin", "fcc-twiki-admin", "fcc-ai-sysadmin", "fcc-ai-build-login", "fccee-website", "ph-dep-cmg-ps-all", "ph-dep-cmg-ps-all-admins", "CERN-Academic-Training-Program", "cms-w-mass", "fcc-eos-access", "FCC-ee-Optics", "edms-users-all", "higgs-couplings-institutes", "developers-forum-contacts", "co-authoring-trial-participants", "ep-dep-cmg", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "ep-dep-staff-senior", "ep-dep-staff", "ep-dep-mpe", "ep-dep-cern", "ep-dep-booking-4S030", "ep-dep-cms-gls", "ep-dep-cmg-addition", "ep-dep-cmg-all", "ep-dep-cmg-alld", "ep-dep-cmg-cern", "ep-dep-all", "mic-cluster-wb-test-group", "ep-dep-cat1", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "cms-hlt", "cms-SMP-16-001", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "nationality-FR-cern", "ep-dep-cmg-staffd", "ep-dep-cmg-staff", "cern-personnel-comm-fr", "fcc-ee-PolarizationAndEnergyCalibration", "fcc-ee-PolarizationAndEnergyCalibration-admin", "ep-dep-cms-staff-fellows-CMx", "ep-dep-cms-staff-fellows", "test-sl-dynamic", "ats-custom-basic-users", "ats-all-users", "ats-basic-users", "dual-readout-calorimetry-RD", "ap-college-16-ep", "fcc-cdr-ee", "fcc-cdr-editors", "ep-dep-RD-steering-committee", "catering-survey-fr", "cms-cernt3-htcondor", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "idea-testbeam-analysis", "fcc-experiments-sw-core", "FCC-PhysicsAndExperiments-SteeringGroup", "cern-personnel-meyrin", "HR-TA-AFC-Proponents-EP", "HR-TA-AFC-Proponents", "Assign-O365ProPlus-OnRequest", "CMF_NSC_2233_NSU", "ep-dep-RD-participants", "cms-inst-cern", "HR-TA-TSC-Proponents-EP", "HR-TA-TSC-Proponents", "CERN-FR-Staff", "SMLHC-Institutes", "CHIS-obligatoires", "CHIS-members", "drupal-admins-fcc-ee", "drupal-site-admins", "covid19-closure-ep-dep", "summ2020-supervisors-Round2", "drupal-admins-test-d8-fcc-ee", "lhc-physics-to-inscribe", "lhc-physics-tmp", "fccis-wp5-members", "fccis-all", "malt-office-EP-volunteers", "fcc-zenodo-phex", "fcc-twiki-editors", "cern-active-users", "CMS-restart-teams", "CMS-Covid-short-2020", "oc2-exceptional-ep-dep", "fcc-snowmass21", "nms2020-onlineproject-mentors", "ms2020-onlineproject-mentors", "fcc-ee-PhysicsBenchmarkCommittee-admin", "cms-members-cern-staf", "FCC-WSPE-4-PIAC", "FCC-WSPE-4-conv", "test-pablo-hr1-730_d60", "fcc-ee-EPJAuthorsPart2", "fccis-eb-members", "fcc-edms-governance", "fcc-ee-EPJAuthorsPart2-admin", "fccis-wp5-epj", "fcc-experiments-sw-meetings", "zoom-announce", "CERN-FCC-Meetings-Admins", "CERN-FCC-Meetings", "FCC-PhysicsPerformance-admin", "ecfa-iac-members", "cms-members-static"]}	14
10	cern	65483	2021-04-15 15:10:23.345039+02	2021-04-15 15:10:23.345089+02	{"name": "Juan Alcaraz Maestre", "username": "alcaraz", "id": 65483, "personid": 369666, "email": "juan.alcaraz@cern.ch", "first_name": "Juan", "last_name": "Alcaraz Maestre", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227666388", "mobile": null, "groups": ["All Exchange People", "cms-sw-fastsimul", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "linux-announce", "cms-project-muon-h4mu", "amsa", "Users PH-UCM", "NICE Terminal Services Users", "mac-users", "l3-wphys", "lep-ew", "l3-analysis-coordinators", "castor-announce", "lep-exotica-wg", "l3-www-admins", "l3-www", "l3-paper-committee", "l3-support", "info-experiments", "service-zephyr-messages", "itum-inform-all", "l3-talk-committee", "lep-tgc", "l3-management-board", "ams-tbeam04", "cms-mgt-cbec", "Users by Home CERNHOMEA", "cms-exrootanalysis", "l3-analysis-coordinators-admins", "l3-talk-committee-admins", "ams-talk-committee-admins", "Users by Letter A", "NICE Enforce Password-protected Screensaver", "cms-service-vo-members", "cms-tutorial-speakers", "cms-dt-run-meeting", "CMS-Muon-General", "cms-icms-an-arcmemembers", "linux-users", "comer", "CMF_NSC_632 Users", "bdg-32-3c", "info-greybook-teamleaders", "users-spain", "cern-users", "monit-users", "gis-gisportal", "gis-BIM", "info-experiment-teamleaders", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "aims2-upload", "ap-user", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "edms-users", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "cms-icms-secr-mb", "cms-portal-news-editors", "cms-exec-mgmt", "cms-upgrade-l1t-tdr-ucg-access", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "cms-ewk-contacts", "cms-ewk-contacts-admins", "acat-info", "cms-physics-validation", "cms-centre-users", "cms-icms-secr-cb", "cms-icms-secr-irepr", "cms-icms-int-mu", "cms-icms-int-sw", "cms-icms-int-ph", "cms-icms-secr-cbins", "all-cern-users", "all-users-at-cern", "fp-pi-cds-cern", "VC-all-users", "VC-users-tdr2", "info-newphysics-workshop", "cms-icms-secr-cbvoting", "cmscaf-announce", "VC-users-admin", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "VC-librarians-cmsew", "cernois-es", "VC-users-cmsew", "e-group-owners-admins", "cern-status-user", "cern-personnel", "NICE Web Library Proxy Users", "cms-service-caf", "VC-users-CMSSWCiemat", "VC-librarians-CMSSWCiemat", "ELG-CERN", "VC-librarians-cmswz", "VC-users-cmswz", "cms-ewk-vbtf-links", "cms-W-extraction", "cms-service-caf-backup", "cms-members-test", "fax-users", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "LxPlus-Authorized-Users", "room-booking-users", "room-booking-users-all", "lhc-physics", "cms-access-caverns", "cms-eos-users", "LHC-EWWG", "cernbox-project-lhc-ewwg-eos-readers", "Collider-Cross-Talk", "lhc-hcg-contacts", "lhc-hcg", "cms-top-Whelicity", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "VC-users-psi46expert", "VC-users-CMSUserCode", "ph-dep-UO-TL-DTL-2DTL", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "project-lhcathome-es", "ais-ws-foundservices-egroups", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cms-test-EXO-11-024", "cern-mac-users", "lhc-ewwg-vjets", "cms-communications-translations", "cms-hadstops", "cms-press-contacts-ICHEP", "lhc-toplhcwg", "CMS-senior-interviewees", "lhcp2013-pc", "epshepp-prize-nominators", "people-bat32", "cms-B32-secr", "CDR-signatory-email", "cms-stop-onelep-MT", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "nationality-all-ch", "nationality-all-es", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "cms-searchcommittee", "occupants-bldg-32", "all-mpa", "cms-authors", "CMS-PhNobelPrize-interviewees", "fcc-experiments-hadron", "cms-EXO-09-002", "cms-EXO-09-001", "cms-EXO-09-003", "cms-EXO-09-004", "cms-outreach-contacts", "spain-staff-local", "cms-moa-2014", "TLEP-ElectroweakPhysics-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties", "fcc-ee-H126Properties", "fcc-hh-design", "fcc-collider-hadron", "fcc-cdr-contributors", "occupants-bldg-32-floor-3", "CMS-Shiftleaders", "snow-egroup-whitelist", "lhc-dmf", "lhc-dmwg", "lhc-dmwg-material", "CERN-Academic-Training-Program", "lhc-ewwg-wmass", "cernbox-users", "ph-dep-uo-users_coas_visc_resident", "cern-personnel-on-site", "ESHEP2015-advertising", "cms-trigger-data-mc-comparison", "cms-EXO-12-054", "cms-icms-secr-tl", "LHCP2016-PC", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "ep-dep-all", "cms-httbar", "mic-cluster-wb-test-group", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "cms-hlt", "SP16-18-team", "lhc-pdf4lhc", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "btosll-workshops", "cms-publication-process-review", "cms-trk-HIP", "nationality-ES-user", "nationality-ES-inst", "nationality-CH-user", "cern-personnel-comm-en", "test-sl-dynamic", "ESHEP-Supervisors-16", "vbscan-general", "cms-users", "mailing-tls", "hllhc-physics", "cms-muon-highpt", "hllhc-wg1", "hllhc-wg2", "hllhc-wg3", "hllhc-wg4", "clicdp-advisory-board", "ep-dep-UO-TLN-DTLN-2DTLN-no197", "cms-HIG-17-024", "catering-survey", "git-cmsswciemat-users", "Assign-Office365ProPlusForFaculty", "CMF_NSC_2233_NSU", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "CMS-Shiftleaders_Jan_Aug2018_All", "ep-dep-uo-users_coas_visc", "survey-on-peer-review-2018", "cms-ShiftLeaders-RC-2018", "CMS-Shiftleaders_Sep_Dec2018", "ECFA-Newsletter", "esg-ppg-bsm", "PPG-BSM", "PPG2020-BSM", "HCPSS2015-Supervisors", "fcc-eos-read-ee", "LC19-participants", "CMS-Shiftleaders_Oct_Dec2019", "SMLHC-administrators", "cms-EXO-19-010", "SMLHC-IOC", "cms-b2g-ttbarres-run2", "LHC-eftwg", "cern-active-users", "CMS-restart-teams", "CMS-Covid-short-2020", "Cms-covid-2020", "covid-19-access-ep-dep", "oc2-exceptional-ep-dep", "MPA-CMS", "muon-wide-particpants", "CMS-Shiftleaders_LOCAL_July2020", "cernphone-users", "cms-HIG-19-006", "cms-OCMS-voting-list", "cms-OCMS", "HGG-Interference", "cms-cbi", "fcc-ee-EPJAuthorsPart2", "all-things-eft", "People-over65", "Higgs2020-Participants", "fcc-experiments-sw-meetings", "zoom-announce", "anto-rucio-test", "t2-es-ciemat-local-users", "vertexing-FCCee-informal", "FCC-PhysicsPerformance", "cms-voters-cb2021-2022", "cms-members-static"]}	15
11	cern	261150	2021-04-15 15:10:26.329612+02	2021-04-15 15:10:26.329641+02	{"name": "Patrizia Azzi", "username": "azzi", "id": 261150, "personid": 371777, "email": "patrizia.azzi@cern.ch", "first_name": "Patrizia", "last_name": "Azzi", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227671551", "mobile": null, "groups": ["All Exchange People", "cms-software", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "Users PH-UCM", "cms-sw-analysis", "cms-btau-wg-vertex", "mac-users", "cms-tk-padova", "cms-tk-italia", "Users by Home CERNHOMEA", "cms-tk-magnet-test", "cms-sw-develtools", "globe-info", "Users by Letter A", "NICE Enforce Password-protected Screensaver", "cms-icms-an-arcmemembers", "event-ycc-mr-yd-2007", "cms-ecom", "cms-cmg-topanalysis", "service-guides-cafe-dynamic", "PER-Seminar-Invites", "cern-mpa", "cern-personnel", "fp-pi-cds-cern", "cern-personnel-on-site", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "cms-members", "cms-portal-receive-news", "cms-portal-receive-news-cms-all", "cms-authorized-users", "cms-hcal-ngccmserver", "cms-rackwizard", "es-monit-kibana-cms", "cms-bril-briltdr2021", "info-climbing", "ph-dep-cmg-all", "cms-web-access", "service-twiki-users", "Twiki Users", "CERNTS-cerntscms-users", "cms-db-web-access", "cms-web-access-1", "cmsonline-users", "cms-results-searcher", "od-policy-implementation", "cms-members-library", "cms-physics", "cms-eos-web-generators", "cms-eos-web-generators-wo", "cms-centre-users", "club-fitness-20082009", "CERN-Fitness-COVID19", "cms-icms-int-mu", "cms-icms-int-tk", "cms-icms-secr-tk", "VC-all-users", "VC-users-tdr2", "cms-icms-secr-b40", "info-newphysics-workshop", "cms-B40-secr", "cmscaf-announce", "cms-zh", "cms-eos-phys-smp-disk-usage-mon", "cms-pvtrepresentatives", "cms-tk-operation", "cms-tk-operation-tkib", "CMS-Italian-Guides", "CMS-Guides", "ph-dep-cmg-alld", "CMS-French-Guides", "NICE Web Library Proxy Users", "cern-march8", "cms-service-caf", "cms-pdwg", "ELG-CERN", "cms-project-dqmcafsubs", "cms-project-dqmharvreq", "cms-service-caf-backup", "cms-members-test", "zh", "computing-groups", "ph-dep-mic-linux-cluster-groups", "lcd-wg6", "lcd-all", "clicdp-wg-detopt", "LxPlus-Authorized-Users", "room-booking-users", "room-booking-users-all", "ph-dep-cms-members", "lhc-physics", "cms-access-caverns", "cms-offline-conveners-pvt", "brains-on-the-roof", "cms-eos-users", "LHC-EWWG", "cernbox-project-lhc-ewwg-eos-readers", "cms-icms-secr-women", "cms-slimos", "cms-safety-all", "cms-physics-access", "cms-private", "cms-tdr-diff-users", "VC-users-psi46expert", "TOP-011-007analysers", "VC-users-CMSUserCode", "cms-project-highpuperf-admin", "cms-upgrade-office", "cms-icms-an-arcchairmembers", "ESPG-Submission", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "cern-mac-users", "cms-top-partners", "LEP3-Day-Participants-And-Invitees", "cms-exo-vvsearches", "cms-susy-dileptons", "cms-project-lep3studies", "cms-physics-italy", "CERN-Direct-Researchers", "CERN-Researchers", "eduroam-users", "holidays-to-calendar", "nationality-all-it", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "TLEP-PhenomenologicalStudies", "fcc-ee-phenomenologicalstudies", "occupants-bldg-40", "all-mpa", "latinos-hep", "cms-authors", "cms-eos-pag-b2g", "cms-eos-t2-teams", "cms-eos-pag-b2g-cleaners", "TLEP-SG", "fcc-experiments-hadron", "fcc-collider-lepton", "cms-moa-2014", "cms-susy-fakes", "TLEP-DetectorDesigns", "fcc-ee-DetectorDesigns", "TLEP-TopProperties", "fcc-ee-TopProperties", "TLEP-TopProperties-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "fcc-ee-PhysicsBenchmarkCommittee", "TLEP-ElectroweakPhysics", "fcc-ee-ElectroweakPhysics", "TLEP-H126Properties", "fcc-ee-H126Properties", "cms-b2g-past-management", "TLEP-NewPhysics", "fcc-ee-NewPhysics", "TLEP-QCD", "fcc-ee-qcd", "cms-boosted-btag", "occupants-bldg-40-floor-3", "cms-eos-upgrade", "cms-b2g-csa14", "cms-jme-boostedtriggers", "CMS-Shiftleaders", "snow-egroup-whitelist", "cms-ttDM", "lhc-dmf", "lhc-dmwg", "lhc-dmwg-material", "CERN-Academic-Training-Program", "cms-comms-interested", "lhc-dmf-contributors", "lhc-monotop", "cms-B2G-13-006", "fcc-eos-access", "Entrepreneurship-Network", "edms-users-all", "eam-logins", "eam-users", "bo-cmms-users", "aisbo-domain-users", "bo-cvg-users", "aisbi-cmms-users", "aisbi-domain-users", "aisbi-all-users", "eambi-users", "dir-eambip-users", "ep-dep-cmg", "ep-dep", "readthedocs-users", "atlas-computing-denominator", "ep-dep-cmg-assocd", "ep-dep-cmg-all", "ep-dep-all", "cms-precision-timing-group-2016", "mic-cluster-wb-test-group", "fcc-ee-InteractionRegion", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "fcc-ee-MDI", "ep-dep-sass", "ep-dep-cern", "ep-dep-booking-4S030", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "eam-logins-test", "wit-matters", "cms-orm-shifter-pool", "info-LHC-interpretation", "cms-upgrade-eb", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "nationality-IT-inst", "nationality-IT-cern", "cern-personnel-comm-en", "cms-B2G-16-006", "cms-B2G-16-001", "cms-tracker-phase2-TDR", "fcc-ee-PolarizationAndEnergyCalibration", "test-sl-dynamic", "cms-dpg-coordination-extended-board", "fcc-social", "guides-it", "guides-en", "cms-barrelcalo-tdr-editors", "fcc-eos-access-users", "vbscan-general", "cern-eyh-2017", "yoga-with-anna", "cms-users", "dual-readout-calorimetry-RD", "hllhc-physics", "CMS-UPSG-HLLHCWG", "hllhc-wg1", "hllhc-wg2", "hllhc-wg3", "hllhc-wg4", "hllhc-wg5", "hllhc-wg1-admin", "cms-TDR-17-007", "Women-in-science-day", "eam-user-meetings", "catering-survey", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "cms-shiftleader_Sep_Dec2018_Group3", "idea-testbeam-analysis", "RD-FA_Simulation", "cms-ShiftLeaders-RC-2018", "CMS-Shiftleaders_Sep_Dec2018", "CMS-Shiftleaders_Mar_June2019", "ECFA-Newsletter", "CMSTRK-DCS_PixelCR_Operators", "dutch-visits-cms", "cms-upsg-fnp", "PPG2020-EWK", "vbscan-combination", "fcc-eos-write-ee", "fcc-experiments-sw-core", "cms-TOP-18-011", "FCC-PhysicsAndExperiments-SteeringGroup", "cern-eyh-2019", "hsf-edm4hep-wg", "MUONCOLLIDER-DETECTOR-PHYSICS", "Assign-O365ProPlus-OnRequest", "CMF_NSC_2233_NSU", "LHCP2020-IAC-group", "key4hep-sw", "idea-dualreadout", "CMS-Italy-voting-SP2020", "guides-avc", "guides-ams", "guides-ad", "guides-sm18", "guides-cast", "guides-lhcb-exhibition", "guides-microcosm", "CMS-English-Guides", "cern-active-users", "CMS-restart-teams", "CMS-Covid-short-2020", "Cms-covid-2020", "covid-19-access-ep-dep", "oc2-exceptional-ep-dep", "fcc-snowmass21", "snowmass-EF08-CEPC", "LHCP2021-IAC-group", "fcc-ee-PhysicsBenchmarkCommittee-admin", "ICHEP2020-Newsletter", "cms-cern-sass", "cms-all-cern", "cms-cern-all", "FCC-WSPE-4-conv", "fcc-ee-EPJAuthorsPart2", "LLP-FCCee-informal", "cms-MTD-Padova", "cms-MTD-TEC", "cms-eos-web-mtdtec", "cms-eos-web-mtdtec-mgt", "fcc-experiments-sw-meetings", "zoom-announce", "climbing-tonight", "vertexing-FCCee-informal-admin", "vertexing-FCCee-informal", "FCC-PhysicsPerformance", "FCC-PhysicsPerformance-admin", "cms-members-static"]}	16
12	cern	34705	2021-04-15 15:10:50.31414+02	2021-04-15 15:10:50.314165+02	{"name": "Gerardo Ganis", "username": "ganis", "id": 34705, "personid": 393971, "email": "gerardo.ganis@cern.ch", "first_name": "Gerardo", "last_name": "Ganis", "identityclass": "CERN Registered", "federation": "CERN", "phone": "+41227676439", "mobile": "+41754111128", "groups": ["Users", "All Exchange People", "Users PH", "GP Apply Favorites Redirection", "NICE Profile Redirection", "GP Apply NoAdmin", "event-chep06-interest", "Users PH-SFT", "NICE Terminal Services Users", "cern-cnl-info", "project-lcg-peb-apps", "sft-root", "project-lcg-app-lim", "geant4-announce", "heposlibs-users", "cernbox-project-lcg-readers", "lep-exotica-wg", "project-lcg-af", "info-experiments", "service-zephyr-messages", "itum-inform-all", "aleph-general", "service-electronics-pool-users", "roottalk", "sft-root-ext", "club-dancing-ancien", "Users by Home CERNHOMEG", "project-lcg-af-admins", "Users by Letter G", "NICE Enforce Password-protected Screensaver", "hep-event-sc4workshop", "cernvm-talk", "CMF_NSC_632 Users", "project-cernvm-support", "alice-off", "alice-offline-announce", "italians-at-cern", "senior-staff", "info-fonct-italiens1", "info-fonct-italiens", "info-aifi", "ap-ph-staff", "staff-all", "aisbi-tpr-merittool-users", "aisbi-tpr-users", "aisbi-domain-users", "aisbi-all-users", "atlas-dev-cat", "ais-users", "users-at-cern", "360-panorama-default-access", "gis-panoramic-rooms-default-access", "gis-panoramic-streets-default-access", "eambi-cern-users", "dir-eambip-allcern", "dir-all-eambip", "fax-candidates", "cern-staff", "cern-personnel", "fp-pi-cds-cern", "cern-personnel-on-site", "aisbi-tpr-dashboard-meritscatterplot-users", "aisbi-tpr-dashboard-users", "CERN-Pension-Fund-Survey", "comms-survey-groups", "staf-fell-pjas-at-cern", "sc-dep-dist-reports", "atlas-dev-dynamic", "hn-atlas-patdevelopment", "atlas-computing", "project-lcg-spi-internal-admins", "project-lcg-spi-internal", "project-lcg-peb-appwork", "VOBox-Responsible-SFT", "it-service-backup-tsm522", "it-service-backup-b513", "it-service-backup", "root-planning", "root7-discussion", "ph-sft-cluster-admins", "test-egroup-expand-snow", "snow-egroup-whitelist", "cernbox-project-lcg-admins", "cernbox-project-lcgdocs-admins", "cernbox-project-lcgdocs-writers", "project-lcg-spi", "sftjenkins-admins", "ep-sft-lcgapp-interactive", "project-lcg-spi-db", "project-lcg-app-lim-admins", "ap-members-all", "hn-atlas-gridannounce", "summer-students-supervisors", "ap-ph-members", "project-cernvm-administrator", "rd-multicore", "cern-computing", "acat-info", "VC-all-users", "info-newphysics-workshop", "ph-sft-admins", "it-service-backup-tsm523", "it-service-backup-tsm618", "it-service-backup-b613", "cernvm-infrastructure", "cernvm-webmaster", "cernvm-developers", "VC-users-atlasoff", "atlas-active", "atlas-readaccess-active-members", "service-twiki-users", "Twiki Users", "hn-atlas-access-allarchives", "atlas-webaccess-operation", "atlas-readaccess-twiki-computing", "atlas-webaccess-computing", "atlas-readaccess-twiki", "atlas-readaccess-main", "atlas-computing-denominator", " Twiki Atlas web ", "atlas-upgrade-web-loi-readers", "strmmon-auth", "atlas-otp-web-users", "atlas-active-authdb", "atlas-readaccess-svn", "atlas-sw-git-access", "cernois-es", "VC-users-atlastest", "VC-users-atlasusr", "chis-membersE", "cern-sci", "VC-users-atlasgrp", "NICE Web Library Proxy Users", "atlas-dev-dynamic2", "atlas-cat-ph", "ELG-CERN", "VC-users-vippolitsvn", "ilc-dirac", "ph-sft-coverity-users", "fax-users", "staff-cat1and2", "atc-enquiry", "xu", "computing-groups", "zp", "ph-dep-mic-linux-cluster-groups", "cernbox-project-atlas-software-dist-readers", "sf", "poll-respondents", "sft-t3-wg", "cvmfs-talk", "cvmfs-announce", "LxAdm-Authorized-Users", "LxPlus-Authorized-Users", "room-booking-users", "room-booking-users-all", "EUprojects-Contacts", "EUprojects-ReadonlyUsers", "whole-node-task-force", "zp-dynamic", "cernvm-monitoring", "snow-users", "VC-users-ificuwrepo", "alice-analysis-operations", "genser-dev", "genser-announce", "hepmc-announce", "cernbox-project-lcg-writers", "rivet-announce", "lhapdf-announce", "cern-status-staf", "project-lhcathome-ph", "project-lhcathome", "ai-admins", "itmon-es-public", "timber-users", "timber-users-rw", "groups-to-sync-authorization-service", "club-running-relay2011-participants", "atlas-eos-users", "cvmfs-monitoring", "cvmfs-devel", "library-proxy-users", "cernvm-copilot-talk", "dbondemand-users", "cvmfs-stratum-operations", "ESPG-Submission", "bfernan-svnadmin-wstest", "cern-accounts-primary", "CERNTS-cernts-Users", "foundservices-access-egroups", "monit-users", "project-lhcathome-es", "ais-ws-foundservices-egroups", "gis-gisportal", "gis-BIM", "dir-bcrepsp-users", "dir-all-bcrepsp", "lpwan-service-doc", "be-op-logbook-users", "building-2", "cern-mac-users", "italiani-al-cern", "LxCvmfs-sft", "lxcvmfs-all", "root-admin", "root-core", "sft-electriccommander-root", "cernbox-project-root-eos-admins", "cernbox-project-root-eos-writers", "wlcg-ops-coord-tf-xrootd", "CDR-signatory-email", "project-lcg-gdb-clouds-wg", "CERN-Direct-Employees", "CERN-Employees", "eduroam-users", "DPHEP-IB", "DPHEP-at-CHEP", "DPHEP-ALL", "lep-data-conservation-discuss", "DPHEP-workshop7.cern.ch", "cvmfs-testing", "IS2013-list", "nationality-all-it", "ca-allowed-user-certificate-mp", "ca-allowed-user-certificate", "TLEP-ExperimentalStudies", "TLEP-DesignStudy", "fcc-ee-DesignStudy", "fccw2019-info-mail", "fcc-cdr-authors-contributors", "fccis-kickoff-announcement", "fcc-experiments-lepton", "fcc-study-members", "FCC-EDMS-MEMBER", "fcc-twiki-writers", "fcc-twiki-readers", "TLEP-PhenomenologicalStudies", "fcc-ee-phenomenologicalstudies", "cloud-infrastructure-users", "qm2014-longlist", "Volontaires-PBB", "pbbflow-users", "atlas-sw-pat-am-format-tf", "sft-electriccommander-projects", "atlas-sw-pat-am-framework-tf", "occupants-bldg-2", "all-mpe", "club-running-relay2013-participants", "club-running-relay2013-captains", "adopt-a-neuron-list", "cernvm-openstack", "cvmfs-grid-support", "cvmfs-announce-admins", "cvmonl-admins", "g4-eos-admins", "computing-groups-administrators", "wlcg-ops-coord-wg-middleware", "hot-quarks-announcements", "DPHEP-WS-JAN2014", "cvmfs-devs", "TLEP-OnlineSoftware", "fcc-ee-OnlineSoftware", "TLEP-ExperimentalEnvironment", "fcc-ee-ExperimentalEnvironment", "fcc-ee-MDI", "TLEP-AcceleratorStudies", "fcc-injectors-lepton", "fcc-collider-lepton", "cvmfs-repository-maintainers", "TLEP-OfflineSoftware-admin", "TLEP-ExperimentalStudies-CoordinationGroup", "fcc-ee-ExperimentalStudies-CoordinationGroup", "TLEP-OfflineSoftware", "fcc-ee-OfflineSoftware", "fcc-experiments-sw-dev", "cernbox-project-fccsw-web-readers", "fcc-ee-PhysicsCoordinationGroup", "cvmweb-admins", "TRA-Purchasing-Disclosure_contract", "FON-Purchasing-Disclosure_Contract", "occupants-bldg-2-floor-R", "fcc-twiki-admin", "qgp-conflist", "emergency-guides-b2", "emergency-guides-ep", "atlas-active-1", "atlas-active-glance", "atlas-active-members", "atlas-gen", "atlas-active-members-all", "atlas-otp-users", "atlas-active-glance-1", "LxCvmfs-FCC", "ph-dep-supervisors", "CERN-Academic-Training-Program", "ai-playground", "cernbox-users", "openlab-summerstudents-supervisors-2015", "fcc-eos-access", "ph-sft-admins-admin", "root-interest", "developers-forum-contacts", "ATTRACT-eNews", "drupal-admins-d35c7d8c-web-cern-ch", "drupal-site-admins", "conf12-all", "cvmfsmon-admins", "plan-users", "aisbi-ais-pm-plan-users", "aisbi-ais-pm-users", "aisbi-ais-users", "sqm2016-longlist", "ep-dep", "readthedocs-users", "ep-dep-staff-senior", "ep-dep-staff", "ep-dep-mpe", "ep-dep-cern", "ep-dep-booking-4S030", "ep-dep-deputy-group-leaders", "ep-dep-all", "aleph-preservation-tenant-access", "drupal-admins-ep-dep-web-cern-ch", "afs-phaseout", "ep-dep-sft-staff", "ep-dep-sft-ext", "ep-dep-sft-admins", "ep-dep-sft-dynamic", "ep-dep-sft", "ep-dep-sft-systems", "mic-cluster-wb-test-group", "drupal-admins-ep-dep-sft-web-cern-ch", "drupal-admins-ep-dep-dt-web-cern-ch", "drupal-admins-cernvm-web-cern-ch", "ep-dep-limited-for-seminars", "ep-dep-info-seminars", "rd-software", "drupal-admins-ep-news-web-cern-ch", "swan-betatesters", "swan-talk", "fcc-experiments-comp", "NICE Folder Redirection - CERNBox Redirected", "NICE Folder Redirection - Deny Everything", "nationality-IT-cern", "drupal-admins-iml-web-cern-ch", "cern-personnel-comm-en", "drupal-admins-coder-web-cern-ch", "test-sl-dynamic", "cernvm-workshop", "cvmfs-coordination-meeting", "cernbox-project-fccsw-web-admins", "cernbox-project-fccsw-web-writers", "ats-custom-basic-users", "ats-all-users", "ats-basic-users", "drupal-admins-test-my-test-web-cern-ch", "DPHEP-CERN-Certification", "ap-college-16-ep", "chep-info", "root-team", "root-dev", "root-ppp", "root-svn", "root-cern", "drupal-admins-ep-dep-ags-web-cern-ch", "fcc-vo-users", "indico-creators-1438", "snow-news-membersD", "snow-news-members", "ep-dep-cat2", "chep2018-authors", "catering-survey", "cern-visitor-guarantors-mp", "cern-visitor-guarantors", "LxCvmfs-sw-hsf-org", "project-lcg-spi-ci-notifications", "cernbox-project-nxcals-readers", "WLCG-Russia-JINR", "gitlab-jira", "ep-drupal-migration", "ep-sft-ironic-admins", "drupal-community", "fcc-eos-write-ee", "fcc-eos-read-ee", "fcc-eos-admin", "fcc-experiments-sw-core", "ep-sft-project-leaders", "atlas-mgt-active-members", "atlas-dev-static1", "atlas-inst-ch-cern-active-members", "atlas-inst-cern-all-active-members", "atlas-inst-all-active-members", "FCC-PhysicsAndExperiments-SteeringGroup", "cern-personnel-meyrin", "cvmfs-jenkins", "hsf-edm4hep-wg", "cernbox-project-key4hep-writers", "cernbox-project-key4hep-readers", "Assign-O365ProPlus-OnRequest", "CMF_NSC_2233_NSU", "drupal-admins-test-d8-ep-sft", "fcc-software-workshop", "fcc-eos-workshop", "fcc-eos-workshop-admin", "atlas-mgt-zp-active-members", "atlas-inst-zp-active-members", "HR-TA-TSC-Proponents-EP", "HR-TA-TSC-Proponents", "chep2019-registrants", "CERN-EN-Staff", "CHIS-obligatoires", "CHIS-members", "nuc2020-all", "key4hep-sw", "idea-dualreadout", "drupal-admins-fcc-ee", "key4hep-sw-admin", "openlab-summerstudents-supervisors-2020", "cernvm-workshop-admin", "ep-rdet-wp7-software-invitees", "summ2020-supervisors-Round2", "drupal-admins-test-d8-fcc-ee", "lhc-physics-to-inscribe", "lhc-physics-tmp", "drupal-admins-test-ep-news", "alice-o2-pdp3-review", "ep-rdet-WG3-Cal-Noble-Liquid", "cern-active-users", "fcc-snowmass21", "drupal-admins-ep-dep-dt", "drupal-admins-ep-dep-sft", "openlab-systems-arm", "openlab-systems-users", "test-pablo-hr1-730_d60", "drupal-admins-ep-news", "ep-dep-supervisors", "fccis-wp5-epj", "fccis-all", "project-lcg-spi-web-admins", "fcc-experiments-sw-meetings-admins", "fcc-experiments-sw-meetings", "vidyo-second-mailing_d36", "CERN-deputy-group-leaders-all", "sft-electriccommander", "vertexing-FCCee-informal-admin", "vertexing-FCCee-informal", "FCC-PhysicsPerformance", "CERN-FCC-Meetings-Admins", "CERN-FCC-Meetings", "openlab-summerstudent-supervisors-2019", "summ2021-supervisors-round1", "summ2021-supervisors-round2", "reportingtool-sailor-DH-GL-SL-roles", "reportingtool-sailor", "summ2021-assigned-round1", "phoenix-event-display"]}	17
\.


--
-- TOC entry 3436 (class 0 OID 16957)
-- Dependencies: 239
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	cern	fcc-ee-conference	fcc-ee-conference	2DgfCtyGh4cTdFUAmCipALj1w9pXtRWi0DsheRSI2OE1	
\.


--
-- TOC entry 3438 (class 0 OID 16965)
-- Dependencies: 241
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
2	1	2
\.


--
-- TOC entry 3440 (class 0 OID 16970)
-- Dependencies: 243
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
2	6nfDhQL4egCsJOM8dvO1z8Yf6yyauyMzpVIEejrhtRsILSTXybYDFEScKh5LHkQ-HVM5Z11RYiV99B8krtro9luh9_GC0S_ukA_QWnp-HoJfpnUdNM_BXQjccmypbgPB59TFhSUhpYph4aX7pF1apUJt0a11-9xr5ncpNcfK-_aqEhKyd1whJJ5KA21-msaDyVXTOg8AnPZjPaLnKSw7vQSj05aFWLML-jNYIXrRzgON8yr8DTSPPkaOYkOK0QhiKXTZmaR7Ei1lb4jpl6xI86nv7FOM4d23Tbd1yexKuDOYU7O9RT2Esi9qyGP5iFKGz5ihEPUe9PABwKwdOhjwWrhNorX6lgpFjQMQwX45xhPV1mx59ebmjV_Q4q_drYOTaHqma7KWheQKnWfvvzHDSsQaK0hoOL0dBc1NmaT__DzTZl4M9rwhBLzeGMRyu3MyjNSbcxTY49ZfgxfX3KVrqUXF7k0TrQst0oh-FIK7WjATRnEOSM8HnFntIv87DesYXvJDfZ0AIAYP5fl7d1HUqeVrXF54etcPlq18iZsjeLV4OIIZUmTi7b4lKKgFI4U9cW6y3R3fgU-DAht8JsMopRFBouzA3fbn4eIPw35o_PAwk0GHVg2FEKNAc05G96KvvCf60QtIO69MtauZL8GoJFkG4O3Sc7CmbVoF0UUJtdMlsxolXJf34UgnZvm5fCkyt3qmgeFScPcuH5q1MfOI0k15Ak49RG-BrbNoeVav8s54iIgNAWTyfPjgAKdELMxTJxRLlJ5HUtZtvNO8lI6jd8deXf4npb_wJarY4YhMBwCHry6jCxuaV6B5N-5a-KHquEPlBxVdM5xovaQOP_hDxfkB9_royJZZJMuzJRBKKRI8XegQplUDpcASv_51zc9gq1DHLQAAOKh3O0Wbnw2sPSipCuE	1M2B-O4XH3lZt_URqvS91-u5KokKmB5UK6gNPfcWOrFXkqUxRvXAZ1TdluMr2icm7J-UNLNrY65Hv-U_dowrSu4wDeeGwLOSq2ZpoBO8c68ThAg_EHRU-rbqE245g4K-FDavGiuEQaKOP5KpP2aP6eThUlhgSsyLV78lyJ5QDzSVi_y6lsnB0IwXm4N_q1Rz_nAxBcy8L3kMeeR17cxAVz8uyxhXCBNiGIH9XO5qpe_Hsip1ZjZ5RZU5zTrYClZ5846L8qZ_Ye0Jpb2-dNGqBZi450qrQ4y18_4YNXCUHzhX7Jv8rogPmVARGVa1jCA5IAFb22C1Ke1NZExSgoWuAKMEHW580pc0jneAdIaBtNuXwqaUdIhKh98KPpfxq5qCzBBqVVoHFB7SxLqdIy3h6aSaYnCPC7hryVkWyYuGfWXmhNpTD8JyYGGOv5LnC2qovmaBB8wijvLrTwLBh2xnC9O0PIhlNGn5bq6qjCY3-XYnUYbIdpZPSd8VyjJf_JhPfcEKWjbiFqRTMgJyCbyxgFX2uQ0WEe6UEDOYJPQmecLkPCfShrj0EYcDWzJwUQ0o-ibirFc4Vu0BeCpxXgGSeF5-17XxzNGKpt1s8h71aMot6wE3R1yL4Hl3gepE8IQIYqdyhNvgbnXGFE5ViuoxJSAapSLshmKGRrAJycPPtperkGQMhIYHRF-GNz_RrCi3xiJidrxzJ2uHLDt31sq3IY3SfywFHXPfMEbvl7tyiT4DdaTu4pYrKpSjvir3qiJMR65DQpzECI3l5jSrUl1jBzNTkiTFb49AQUfvQqrbN-6j5welZ0Zy4jx87JNeBEqOjxgFACpA3cA73p5YPviYq5Vqr895jalWjMU4PLK3O_fSXRzAopq3H48lWfesNMYa23oXJWJCMnKWV1TLH8LHNo6sml4	2021-04-08 23:09:34.75641+02	2	1
3	x_--yHJgI2SuMYBE0mTCviZ876Kjj0H_8RIrNpD797YMtvYnwDc-ja_eKHYtQ87cQhulL1VvztAadLw80mc4NcB_4FvzwOZj6045SI_45IdcMGXmgOkEYX4MDM980O9DhOOyGZk1ATEw5b1HICtAyP1Wrf9hHEwqbqKH0cTTcXy4azPZJFIRWwWsdcB9jNOdWisGnLhYu2IXMNbxPCTmuH5XQgAt7r-4so7s1IjTX1zZp2pZs_PuFG0RPnuzpBkqaFONVvBmVUuZMAsiEi9aURKicb3a_J0xmdqTyNiXsGOgQTcftwSrtfVI3bOr316tH5ls8qbc139YADai0zjRuS-b-WCcdHxtkYWoxXv0Iv5SIE48L95AeIIFEuP-8lrG-FI0V12v8JC-eoc9c-lGbwOjT65XyID23kn23QcnJ1qS5eQDk19vO7AxseS_hBrTAhgtDeBYH0YZQA40hkPCw5FzAu6f3l6ThHMBErWoQrnFCgcOhjzcxSyWsGAEDPT6efV65_65Nz3xHRmLiLvWUYI8y3OTFg_RvgxbsCvXOu-BL7t7yQCe7dXat4SLdLZ-aVxuBhF9SAC7g10SmH_k7VzSdQXf7porVmfDOq6xUotqEBQ1Kx4pYcaYRG4Y-B1Iy5amlHv_AUhI7bXeELK10XGvJPgxhBTCtj6-XmFK6_OrfycNCksB5lNccaDk5Dyh2UIoTsHsIzGNWj-6orjDiUZTir9LuJx6zZ4ec33pET5qBBJvho7NnT7iaSw7ZvVL-Z8OUkYakShATtGITHZDJIqdRKqHjHM5ibkFi2oCComQttsyzh9YqHfIW_aTIDiDs6QuBE53mR0i3Vy_vOnAR2edYrLZr_lWduEisdL72FYPXT-iji5LohMcSjecBGTfA_wsKA	jQCCkGO-U4lpZlVUnDnVnlqcuDbVgc2_xKQPHOAY2rOqxI7CKnAxsirc_b8sQAD0cjkAwL4cHkyG22CjVu2S_N3yOYueIW9KoK89WZnBU0qyHU5uP8-0PjzQBrv0Cb50GPTRCjxDHyGB3aJHWtkH88qZq9QYYj9OV_EJ8NvQyxmDEMKVLri9SOcnDlyfD7XQsIddPC9PLWZsi3cvx9lhTUJrUPSZgrB0JPqZ8uNVLsL99ya6ESX1QQNOwSlcqTG2V1BJlssuixiK7tA235EIL0dCRvnErBfTZ4QPsh0zLe4w_EySpooZ-sXtPv0ERkA6PQdtV5L83ASX4ZU3Gf8bRapUVRPJOfA0004KwMe_Z0-KqNT_ULNHe5-_NOqjIram5IFi1e_xmWaHYwJD6dmSkEZKeE67ho5xOFwe9W8OitjWpcfw52p7q9HJnsdiEMxxYrictgOScIglbWrneT-iVz7OgD0uBz2v__5CqORLWOu1r9TXthHS0INVjLa6VglvFBaWWn4VOSLjp3i_BunaScutyJDl4GK1JDP4IyFk908dppA7DjOCpPzSPB1vKJmAh6wHgrM9M16P3m7BSHPvQRGCIGtkIfu6NtRe6jVYkbL_1fRqK_2HTEUwlKtI2P4wePOILxKr1XY5yJzgYO1NBcU58oIi4mvs4SQhi1I8nNH4d0tkShYpAmuol4quLcw8LYxGHE6wL78L6ozwWQjGFE9A4X1eXzJSMG_jB6PtGLZg5qGfbwqSZOkB7_ZokYqyUCb0AkHPgLl-QRVImZTfScy00QGgSr04npv1MX6C41DTPkMq75rWb1AUALLkRp5N6qXW-ki5pmz26vkOfnWnuCvV8YEnjjo1heOGY1UsIKczDT9JAL_O0KW7A-HeSte6H-hl2Q	2021-04-09 00:02:19.912095+02	3	1
4	F2tp3PSpxePO5w4Xb2dqPIgUcp3QSQs3jQW4wOlmSuQakMWEYmUmRVfym4dZ4lzVM8DZVepruyg_r-xad-SsVSX1TfrtvVVZ7uwNBwq3--zuXYA4DW8zDNyQvxiXjXRcEA7BrH3Kq4NaWzklaWsP9hFTcH8GTTx88LsfukO_CL_obhj90wW96zdrthOKPTEziKISuUaMVwYWHZxaOZ4jnjGqXAeMLbg4wev-P4dsIIAaQUWCN-uoUGOBzQA1NKRt02iSX6BCptWwGe9AVTkAO9VMuUEwylN71fI8ZH6WPPa7yHbT0ydmMy_CQGmuu5U3LKh-35mxcliF66JseYLfZsSOQvqbapg6L6NbrQAUl1ioYS-iR3yHrJetkb8xhRUuuS_MF6INlYDXiiMLaOPrTuh36KXG7akndpf2yZnGJKc3FJfRSSvhT1zMSbOMoL1ylUOxAu-0cMmqrorPlddiYqISFiF9rymStKgSf9ApDNaYdIYPIiAwX2FLx-L9FinCXRgRgtJYv5WI4oahMespVcaJFOivkh2AjeDzEbzbNDPLkK4B03aEMYLkYyy84pbJuFC5e0Uioq1DSI95H1caLdaxHIlgTrXlnNdIBFcExsNgxm1AQpb2ARbIhQ4SWCdowv8HPpNWn5DDC5XoO78rEg9JSpvg34Vh956TvdO3bm9beRQzTpCCLwWficfkr3K_mqDawd4z-uHNB5yR_1Dxt2Xz75zgpc7NY1yxrX5wbsLcx6nv7SAZK_g2rcVOJ6ELMWDQ-fjgIXJkZV8c_C144JWTOXDbQ6g8nKfhP7R6Kv3Ii9hhfEjXPn2A1p0R9FGmYxubFTn9JwldHKKoPc_MLb7PNIipp5T1HpBDJ2pj82BYnrbfC8FYmNmQ6Om-Cn-USCuu3922Ucd8U5W0PKocwwUIRSij1w9PQux0olz_uC8O0G9l	UkKy9XtD3-vlQGC7CXs5Mg0lGcq1I73nf3j4IK45X5nHhpqmcMjjEfdCkbl7oQNnnr5Sxqi7rBZOmE2eJ64Fv8P8HUw2J-WCYaX9GlYPIPuvNv15t-2Xf6vLm5HtEAMQK32I1GKchWiVEexQLvaAbBuqtOM0g1GrkyF-Z7BiLokvEF9hFAdnDjvO-40OxAfXATK0E0yFsEC9_otziFTgWiYiDv7yvGc4j9lOuZPQ03h68dS-kE7pqv3YS7gpyqYcvReVnLppXRnSo_rq8ZF3tudHWYTRRcOudobGisdsYtify3kOZKvoE_O5ow5Sx7HDt72Bu_VC2Z4-eu33kpoK5_BR7ViMesGoNZ65dKa_tijcZ4Wfqn_Yx-QzJtprxkKK8oWnlVNeiI8-cc072hcYhU9JMfxOiMSxlyta8UGFnm7ggrD-mDgDMzss0ubqiPBdEPul9-0PO4lLOWGZYTbHPfxj5siiSj11vqVdtuFgjKztc__9E4INxWQXAK4IUYo23laBdqdnOi6fky-MC86X1JVvPmkPTAyYYRbRz2xbpkzAQGn6ntdEFCBKGoyUGpCgRqjIlK-OI9GEprq2PAAtoxP9zDGRmO6MFDtHxacKrSVZOICuP1J__t9FFgMJqMtVxWpQ08TcOydx9DOOBFCDtSmIKb2IFkgy8z-HE8qgD_vltmKiRBRaT8ujfnukM7Rvanxvd_LILXpH4VhWhoszh90JQ1BnhuUNmoBcTfZ5C8vxsGitHkeVxlBWJGLDZg-VUdfxPQHAThjy_f4DAL7AAyKuL-vTz1-_KCe9r7db4qjhdUyTRptY_bkF-1Z7LiWOAC21tuaJeOuN_KeMg6mTY9popthWs-ByBhf2Pr_Jl-Jc25GsF1QKyxBUG31acjry_b_LK6uegW91J0yZpYshNhbgp8h3aIK95yl0AV6gBnIWomXh	2021-04-09 17:11:45.510402+02	4	1
5	zXLEOk-piRHImTp2bs_EgvA3LlPegzSkMbdOo-8ODwYdQ7qask-yMJ6M0Rs1dCVH250yKkzrcnSbpTC1_9r67tFOHTobxxIO55Oy1-vu-ufrx_kbpdSF2p3hd7eH2i9SNntlzRJDqPczBqpxz-5zOW8dCBdEHTM-4zLNr0xs4DtkSvfrbDy5HByf4h5Txr4HHjpRdjmWLoOpb464MW3jbrds7Md-SWmcceVdGsHmDXm1R3YowX_giJMVzqEywzxA2D6M3cVEfWfK3nYTH75giD1CLvlzEn1kpEHx_9hyr2824N841Nw1lBL0KMMOiSKBO7RS4QGuhUr_qQVegY7q5hHz6S4gmkOO6MBUH15UjHmXI5jL-n_7HeOmefzDU9NesLq_ghcaFk-HpSYQn5-Y8qMqwxL53oScERa_j7CsbnkfkjvOnI1q-iyNLOa1_jLi_tBHADkbtrkqG4M_pFYCcnppn4q-EXoXtIlQCLInBDoAZweNP9e5u_BuWL76g6kJOIeI5MolvLwP3mfbIIG9NtDpif-jyUAozxvVjItFsDq9KPszv9L38iiE-HWiDcvfePBqq0BvBk49Vb3lNm-XFVkmXaudhbFtSZ5DR-wlnM3BrQeNVIGBaxejaOv_9jQkIGiqchW8RTytZJmB8rDW5EZJD4qH6XNSUN3Qz_zEO8MFK0o3601vU8XvnVWqmBHSG1QVYAjZkb2BdxuLNJE8mYNtUUdiL5fhvYUwt4RiRxmfsvXcPKYzSCDiBWECIKU4Cch_niobg9x9vB-bqtNoxRjeC6rVR-RAhYsPNA-pN5zeyyaIJDqizuQInOV_6BFDWxZ-mas8IswFvl2vL_syrlfe9w2ehxSZ1gwCh_VT70L4f8NNRa11O4RB_9M6TSmyukZTdA	BaaAGm19p1z37W1hfwgPkE22q-9hIBLA8q-S6R5GvKPOlsc96cupLaN3sCPuZ8IpgwSmb-8c2_4C_IgbP0BwTWFIaCVKIwGEczlmO0lWW5eBIB4GAM2gxZJP2fNxgA-9-ns794w3TGQLMmyUBh--h1ESSME8xOermCrDuGYmVmksQcIttAMOquq6Btm9h5eEbr2F4YkiStzagxIfWrdMix7BBqhlorvqL9esLogauvBwWfTtgemsuLMD4eZkpO9QcxiH7O1yoMBG0QdRzUS6x5RnmVLUu7YQzHU0g9nDDOt9nzQ88_CMSBTVxPaNFGqoNj7zAHjR03uSQKAK-001CmojYaP1fY4aKu1H3DndSlBaNI_FryrXryoP-Kuil06KP-ShG-6JZlB9SNouxo_Ah5XUNQpkxrK7Edjgl8QyDEofF72DVc8FVzOFWGYmFzc78-uISGy-4dh99pTIbECOBnU-d2y1DSnAPzcpsX6_FRXxQKY0cCBxSWKWMDDYSPg3SDjJoOv-hlY4grMsVKHXtVJ3OdYVG9DNAfzW21NbxuMm96-tFVCc-JyxIaNRh7I67FfHGUuFjq3h803ahCVNB0H5CdRVsAxip3z9tstZ4Jisj995YNmYbCBSEq0X0MqAEWEtpX8LQmTrzUoGVs2ta-rQYnJ69anhO0zwmKgb8wmcz2iL2ZNKePBf71GuxpOX9QoJkHKdYTDVDOY0Q5SRjX8HWRLtLWGD9hTd3ThIf1S-oqwxAypVGojQUbTT4omffwnn6TDc2GYa4K7SXMMnrRMNtvMWDt2f-oD6-3HI3Y0FzJCcx1o-GcSjG_-f82enx8uyb-dK5nkvz8apLtoJOlN0WCVyRf0WBTS8WZytyi8gjokQi6vtmy-27w9mqKLhpke86g	2021-04-12 09:03:10.438365+02	5	1
7	e4bPnPjbK71ukbj97wcJyvi3aTcHnBgITeJB7fchp4P-zMSDHu4Fxj5sNBjtRTBT-F69_BnlIgfrwFlFGKjn--nqHRKeTf8ffLvqc5x42F8G-wl9YqJAs60eDGUaTvow3Ty6Sr7F9grXEPZTpWLe0iIyhPUa94C6uSx-HCwgN159bA4XE5l3TS1-JjvEY_xfA8TOBygoQ_h71Yc38uxjWd2JjmMsd6W__n4I0kul_H9Hl-XkgiU83_N8f_dOKVLmLn5pT9Jfa-CJi56uA9ST71BpYJ29Sp021XvCFt65CyKOwMV1TgakHnArUAPUwiUqalaQxmCgSSbt7ZslDih_sUZEPXrT8yGfK5qYhT2LSAqjwQd7IumFOlGcFVErO5xRdIt6Dc-fBeHx4v0Dt0EV8GZqEMdkRwjt02yGylJmY51Mw-KIksAm2uRfQWUIJkc47y9N_8foCRzkqM6D4am4Z1tQ1I9kQ4udbK9uUUmxlvWUen9Em0kuCUyp0VXlw4hSjRxEyTBD8LXCtuOINRsApY4oB814nawRAm4SwaN5Y3cUPOTP2B80zfF2fYWOd7QUpTBq7dyc_MX3JBFui3w79s81paGvsJ8PHQQea0XsoRYRtQYI3RNuMWc9aXhCA9fSm-tF6OHE_hmNhKIb9fKF3f5T2k7i76aDOAp5qZ0XEfULl7YneHbU5Mdm-qiYBxcko9njFM-27qrJrJYdFUa2iFFiteDodPY5A3699mLXsJKN-AK_rrEakGNcy0RRqKfo3H6UDwmquWhgc6euJCA0fWB5Ggm1DF_dq-BmM076oiEJYmRlcBi4zQd2BsgNT1jUXNfZFF11utBZgDObHKTqXlvk2HM0GjOFq1qNlSqt_JkvB2Tl3cmgqsc48pK4tgll-4BFeW4_sNGsVgzDWCaSs8YZzd4	6QxGKHaOtcXC-HsBWEqZC7bxozPAygrfbQkzRlKy3Pay4YrszfeFTbb5lyjF2nxBjS3EbZaMYnzpFrLxoPVld93OM6yUy7rhjHk3AHZH7AT5Ul4MzxtaTpKjA39B5oe5NWJva4I7luMvYYOZ6HCRNaqHwsq12J2OxFWAFvLKxguatEcKEkKCAsCxRgkOla5JoHkup41GhjSduxL0cVjdKkiFaqseW1Q6NGXvfnv34PgFOS4hobh74HsWJE6Dwx_0pI6eXEKNqoMDy_Vw0Bz609L29L8yaf3LR_v-t0nidJeoYTf0_Lt75y3oZm8VMm5qqk96ao26mA60jeaqmGlz2r1qV94SRo4KJk01C4nkzoUqUmZzfXmbsqoXaKmKPFTOX604lUBAyufJDWUbjgoXe5WCODoLHqqxtc5PqVnAzgYW1B84zcQ6fRMh0HJJixIgal6zE2VCgawScGuN1OceqRvr2kikZVh5lXzylKzkNznMBEi_Pz2YmyCNhj9K-kgUgSHaN11hKjWU8sHl1ndWNi86mO9vRxsQksw5K5hqybXjrafW5bgYKlzq3ByBru2odN_pBjAFCU_R9YFnxFkXPj8EE3lI9twR3PDhrA9HTeBOGWzQc04oLJwKRNG5mFyrlfxL9Lx3NL_0gE9WxStsqDMbRxsyCSXoB8YLT1NnNnEnysb475GUDFgVeruPuru9znim8vMHdDza8YjbA1jScVmfAWUTJfGMf__11i1yP8PcelMBu4rmGRS1OCKRSwLuRFLFck0Ygk6lvTxUPR4hizK_lNLaoyIU1I05X7R0YYanoS_in6G4sR1JW-Ez0FYXENJlbKILxFFVMyYF-8iBPpBHLQTbKa7McOaxjO3t1rEkz4SWO51OX9Tlf-_u1h4n4DABtV5QBf9lmx1Zc3zHXr5FNMU	2021-04-12 16:10:54.635954+02	7	1
6	JjMy4qt4fMs9BYjJ8PZx6I_gFXe-ezu16IBXLlC_50CYFAhE0dgkn5rtS-sKJ0mlS5hQdE3r9BUX8Prb9rx2QxZgi6h9zAcF5df4i4S4Ax8Zdt9jFCUXHGjvcbglpRs50TEF4VBJkTvhdYZlpP6OstKsHCgnEaAOtjp3Y6gl6iBGJPSv_p1CuvnjEbNWUdjGBlDKA1qrK9K7E8R9RiNeddNraye47FSUfjoVYcHkJoNg0gGaG-t7US4LwGIa2bZUZSCnz8TCdcWTFpkVKxdUaDTYnUEIqtu9Zvcyn5yOmfYHozIHHTGxAyfVN1uamUo3sgikjt6bfgU3luWsEg6vpYkQQ6zAx-ndVle5VKro3__EsX2eCe-XCrG0Xb_3I63egFDEO3eSR-3nksxzUtF4d7KpC7jp4SPjMYV59zaZgNHk4DjC5uQlGzJFZ7a90TTwpT_Vi-rfYf8GoeBXrRQg_emLQquDbKE_WJQkKka6uac35yMl92iF0o_eOdPM9YFFrcPuzOU60lyHH2bz-EIOY8z7vJSV25NLLYtzEfmce2KvV5zvVEGCHWcJB_yEOikWsXBW8h-d0fxma2heqMLHe2VAwV38CpLmGdwcKgL7CCfZqSZd7hbOpvxzn-W9LXHE6-rXECDM1rqg9ySprp5ioGLokyNeGZyqXAeYzMYmZzYyotLbVLYLF2ZwmqvfWOGJluSsHUzHTlIfupXVfxx41kqSq5KZQN4HDi_fZe9Q1XzRXHXZsQHfXkfDWAsvtJtJYWl5U5HYYCLnnAhZY_xA8MUAL6xa609N4GjOSkIPJheAz4ey-O35wP0dPhgaQUdrkF8hZudapDwJGfh3Xbm55n84hK1wF2WFHbmvvlDxrPlK7Vb0aTQ_v_NjK4y3msXig8yXbBR40xr3FObhBgW6ZFTiWDgQpG-_NbrELmTa-62Wlac2BDfhTu7xPjQZVfDFiq-_sA	Emg2ibM9rSAluqMp9nQ5OiXpP1DdrsR_yzz6wFemEpCtLSsLpA-7DmtcCGvyAWLkg2A5Ep1Jf5occPiyBYkxvd11p6RrbOFSjZX8dq2qRhyAVWZorg0ipY_jPWg-38IRhFPBxfefpZjHbbuYUHQQd0mY-0nrcmPhm_zDVDZnvB9MoDrrPsrv1mjWqNaEGfUi4awO1Zpuscaat2ZqT-q9IPxxNYUliFQBgJJimXWEoGBtNISLXBvijl2Y3tcssTNtpvWeMXBMv6JdVi0qxK7dwF4WrUBcsBvzFpHstMOGoP1CC-I77ASGE7M2nptgqStaheVXnJ-OYwBqsnDtmCxP1pn2eHRlZO7284X_xsEHG-XgqO2bWBWF5W1I_lYOMWLopG4Yc9yr02XDkGnP6-CuI3EA71qkaQhQPx6b-7xY4tS2-AduakUlrRBFqRjK5A7hnMvJ80gF6pogRXImzUCRIdbVGJlRcxde8gZuOF6AR3x6Jg9VBHptx6LRTdrRwPLw2ukblMw9YU0LYgn0wC7x9MHaKFDuX2d3eaDggkWhIoKLNTuIeZ8dGcfcwYFkW4S33TK5xX8mUlp6vdeW4wZSIKAt3AkZJf2IxEC6jfJfTjlTNHfMOcaHq7cMZibe-TI-41Xw_cWua57HYbR2wPJ0Q_QxhG6UXyjWotM82ltpR8ypfG3xju9SM7jkDb_PkKriNncJimihyyJfLzH084AXa0NqHxk6RCmgQ7NwIMxzbDAdlX7bYPBVpzGTjYWM7wxVzWxnRmERLsnP5uMBVMSZwOF0JiB8hTWX3S2LSOzzqCgs7TJ03fXIkrP_l6IglDr7ox38UNPW1B6QE6rzxgwL13iMyZUTzd9kABLCbZlAQkInlJm3FWUH8-d05S7KHiC_B0swvYTZrx_fgKqKbBV3bWz5e7tI8crJvsFzVf7FJoIae7KEHIB-xT7bNrFdSfPV_SZALQ	2021-04-12 19:26:13.280577+02	6	1
8	4VFczZgr855ELXhkCUQ6SI8LmUN4IgFlP55bOOfeMzzrO0pmZaFXOQDukmWR_dGNcwb_XcpnBqm5EwUtH8MkDVS6BBZ3Nil9WThelCzkP1mSipfR1cIAsnMDBxW_ZnWaZD38h2HVz94b-VJgCOxQ4AJFlmhLk82fZLfyDEd-jDq0yCyG4TTxoyV6hDkpRLClGmUGRUMJ-1TwMzWNb0nS73zg4AFgFscDqPxQ_aihT9t1iOg9lCueGIRey_4PedQNnWHj3SYQmVnbiCuWhRTTeyg_AvqRa_nFWlXwP6vi6CntiSJjsMCweloPRfYRx2Bbc1TDCqb5LrUgDdvHLPwWHq99KZ7e0sUJOc5OVF6UQmg9eVDZBsnBNSIrEADumzhrtZaIerbvtbda9eOe0Iyu7FmqhdIOM7f4O9wRQgEHN6A5nxhCFUauUfFdFBQwcGGyPrw1pixmbGVmxEPLjOGnuI0GXfMU2zNBiy2XQusq-40wsuXn50USIuO8ozuVx4Uh5P_6FwHHSHtdnryuqUHJ4X3TPDqCZqcZFuzIOXFi4BYpO-4ZeesrPheNgxfDJ3VCLw9ctaI0cZbWqkXEML5YeTa7S0mp9_VXfifwy8cCQMhXQM2C0YwLJbuHl9ZejG06jvUT_b7hMHoedSvtPiZ-gDhUAXqc8u7kbDjW9ZxxO0B1Picofn7A23OyjXZpCxJsjT6O_YyXlvPNnknbZV3nUYVMYjhCcugXiTRSMYI376rBGBHRUviUKpaY5jflMeAJkmvkXqlBcHs4jBJT_d8rjbyLWwWcm0vz1EzNpOhUmMw1qIEmUS_LFz_EEKK7UfOXWDLMve6QhrIyZiY4A06nInOybG-YFoqzT5DqMf3kpzyi5GnQz8bgWqy0rhOysr3M9R2MtaVQhN7jITExkse7lQZYFmD99XwgksPGpVvIseDyCrwD	r6Ps08go4SsIMY0vKlWeH56OC8AWVMhgyT8CxxZo_UPFcdmhYo7UAUizHZSJjmu3IDXabWmCFQHgiwQKP4QLfHH0fzVuq6e--gu7sO8EsHu6-KJl1T64Dh_rT5HOECBa12YeoEpzyJDsFHRoltPzidTegirazL4J3msNJ79yfxV61Z9EaBrsi6O8t4oeA51FrrCH9hSzOR3uq9QJtdez5E7zxC9xkaK2XVRxeuFIIE3o2ouDxI7UhNa4u3jkBJlbSfu5Ztavi2s1zbAL6o4uAV2IHr-qRfaovO76NDrgOH6E2dinmga-TDbh6woBG7Vbf9bcvy1cG-3dDjL_GogUaZbHZFUdKhE7ZVPkJ9K_YBcUzLSvfpf3dn0FTyJ6cIQtHmGd5MZFipIruHG9f2aJDmShbOAAq2-nz3VerXVq2of2kYTR6Ewa4LpI80Vz4KEIV2tQHqnxVfMNUthWQhlrngQI0Q0DAG4irIlemiKDTaHssEL5_QO1ntacP9G710Kkccd1Fz6H2Ai8hNS3XerOdsx6pnuY3CtGpeI51LtxWIgZYRKlZl0le9-dZxBUc1ha5fCPzaEZOBC1aVq1lHsnxLwUe7cVlJkRinyrXq6PI8KzdDDNO08KLmiOUy-mdQQifq6xIikGeYrM5ZWylLJz5p1rxytERi718EDDVdoOU2tfCfsP0Mdhscl11yQkYRXUYGjCfcNrJW7RtZzYXBDKRDQRJyp1JJHiW3UQR-_q-wMaH1hCeOD_6oXJxKs8mMtF02vzB-0IInLSTRnaaZr9x8Xg9Hmwv3eheAaTrJaxaWaob4OAKPRunZii1Kc375b7avYa_d8ocatzz7_qJsY12RvyuFSi8US0JnbzzvOBBAIax02iAxJwRdjGy3FUpdtHRdjcwq36FKZEkAQ92Yxott7sZ_fZo2QRSzWcIIZehV2G1T-i	2021-04-15 15:25:12.794548+02	8	1
9	Pj20rdCNtlsXmmCPOi28FYfPOYj3Lxk7R1FToPpGwm6yvycedtiP5BfGsyS-5noDKKn5n5wmabrFsOdrCeaMAAAxRI7yq0mlMtnKOXAfb_xkY_HxNDN_9LwrRsEHBvZeh1tDWoUIIZ_KFuxMg9aN-Rh3NRQSO4Y0q7expPB6VooCLR42p0vloJTarb5qcxnE8Sojpnv3aU3vHQtJo3oyEJoMw8Vu3VkvygWPa6Ya_EYR7_a36_wGWn_NbweEFPEnMCOe335ldhNuu5SYyaBThKEZupB9A-VN4nABNh-Ui7QP1uDDqcqAOyfkmKmww1_g-XzaZ3xFtbgYNIIgqY4kw_W4jTro2J92QPo8IqmUSIRT8aqiidwGQf9CMwwik87ctNIRGSH3cOXKLNbIsUVjwh6MCSqMpvd63e5wlVVLOHxvpJAcr-KzCaJFcfBUQ2FP10D0tk7PpokJZ_qn_GbcIofocXmOo3wrL8ys4SZ1Enk1Gkkx0JPu308e6hFRa-nNUxPr6C13VMZYo_nlO6ZzzR1ObQ8lJi31j3J8rsOQkMZCxFMVLGQccMyz_t1952v-I4UKII29hMGafERb_0KKekJf8KNJuLCDYRpECg7Z2odiZ6w2UTX66sL9KVzqRolNsUloEkh4E0xiLsrWai7RyKZyRmv0kP0ITRcW98MNA0wCmDcq51L9AFEFPm-wF1BVHbpuZ-DBCCfSSVXyx8WAsoCbK2bh7-Lf2jxS0pLg7SMIyXIX_Y4OxotYpR_e7hMIdI0wDgO2ci9U2cxrX2ebXxYyAoatdjKT78Ryl7zvYdvrJlfy6-G1o54oHspuo5pS8utapGxuEYnF4fpCvFJbmRCmMetdOEQpa4ZOb9WoFSqPxEwoBl50thSdXx6iOnyuNGEVskLFwJ21zaswo87VE3Vj51A	XRh06euiI_iY3pevlBRbgNyT6FmmHfNkUrjNwRkxIGBm2E8FYy8BYk-XlYYMQ6Qw_a1KsSzGNMzoUgtS3zQTSr2M140IvOOEn5FoywjZ2unt1lqAZ6MBRxt7-R5odialqHyuoIpAwIuCykmH2j1lF7wEZl8wT5o5zGTt6UwXkeGYE3f79k7pNI-jpx8vGV2Zy1c6q3d8IAXNam27NtaXE3lSMomsULDJptYXfGGsXffWQVJEIScek6OsVL-xTZIcl_ieRyNd58TBJuL1Lc5_SG5fP3QpQ-esKhLm1niAn2SZCz9hSXuiKSDfAGkC1CGBQBgaWcoAa3ba2YbWj2CKtlZCAWwLPw0PSkocXgiPsNixNuU9Uz-0zEfqg7e2RItkm4wIdvwpiOjZzHre-ZCd3vXM9AKwwLM16M3-cNBu0KtGylJgtDOG6j4EhDVI5jnt_pOV10B5xSFkci6R7cg7ww2Wl2CaOm0tTyL0SvUkSaKJOwpDBjWApIwsbBuX2YenDjniB8FG0PlGD3YOT-gEYnnAAQL6cubGZH8TbBd_plPPSufVge3-e6qEVjujjvLC6iHYtBTMJHaHQ4nmeeNJSdX3q_XXfPD12r5LTPkiMJi7-XAcuL-WS2SUBPVFugCym3LmpC90Q5-gVmury5eZTQD1396vvgr3iEKma_guwIWKdVAacOGHVc6zEp-JwQ95LN5SutY3MwXio_RqgoioXN3PfJ27o3zUGiR-7vKf_iFK6S8xxmpaSdzQ-f9Wk5c-Nl1nR6rxf1ydCR5l9NwnAKi2RBEa2idy5FDXcstqAZAeYlYHuCUaAy6uGc469jRyrTD5EczJTz0J1-g89J5hlli4XNzOuCWCNF8EEbsAJCks5Pr3HVUnFTLxHLBXwkps0bVLsnqpqp8AMPS3w5nJ2ewPsX4	2021-04-15 15:28:54.405538+02	9	1
10	fWO3i25nGi2gdJpjVt2_G8Aca4SYzIHrntYrGYIWzFPQNenOxUX24o6-uae7dqGCndAzfhU0qoelMTInQD7WQxc4eLwVv5_KxzdDmXLAZpdaOWqIPHcTYBUEEkGi4qLh4lPeKTpikcW2X36txaHJ4hypaRkH7I9jNCDd31-XDfveQKI--QbBzveMz0QbV3J52fFaU2Uxt_aH_09lsrkDg4q2xftNmdd602xAJ6jIUSr6a3yIa43PcBemjsTvWzpzwU6tw2C4DTOaBLH3sR1iEfMvZ2GkFOXtumTV1W5xKBAw6UeQAQFaBuCFKNhzwKUPa6sBK4pSEfUWW_UG6bXINlHP_TrqNSLmD4a1hH2d2KhHxzeCzs4O2AydVu4kSNANqP2S5fwYJEMkFPeAv_eZAkbflrb2RzaiesYcfpqsFbBe1otfPK5NuragRU_3xVKuY34-AUesQuKcbfGtT1vGs_goAs0b9gwqNkL-r1WvAzBwxVtdzKYLboADJyhFw3OdjyfV1DoWYTD37DvLl94rR6XyLNqSJt_vKI5e_usdjsH2Qq09sAzG3rtvtt3K0Xrls6vEqq8u7KYOqzTOfrgdLYphqFG-tWOfMr0jmgQCG4FZgZx27hFHvBYK2Jus8pbWceEPGK5n6asr4vHKBlBE7lwRX6gyhYgwDpFHju1LyfgaY-72To_NZ8ZkQJbMukUS4oTcrRdsmvBsxeMCfiYyNwYa8NPeFUUE8HhzGOx7hplrrIDn0lW3e7GV6UJ5kSXNyofFXaT7DSJV4RNQYDto5D5uwKZNQAfMuCkw0tMfgobwiM2jJNmp6wSACePJ7oyX1HmBKRvY2IY27wHvXR22DEsUhc_UYruqn0h2iVC_K3nrq_AS1E2nfzhzavY_8x92eDrbFRP_kwch0TpJwoDNIY9PxjbyoiLuYio1Ssjo2-EL9H_XQZwobmjyrgkKGInBvvQdyTdHbIsjtGpNsneE7c0HB9o	gD_kVmnGLJacM_rRGa9UXA9Z-W9TihI4Udd_AhVJz0C672igrOmxeTDlNCwDBLy8AihDIXYukI37tSyQK7IUUD7ccXXJh0uljPE9SZ_hfG0Is0U7pA-dATEzaq2Lislp9nR6zMWi5QmE41COv-2jchNBbS_Vl8qt7vHRKKwODS9BHX3rH43i1wYsELsfPgUkh0ZYiUXsLaGR2hyf0_veNgcwYvP8asXIuvRTjby3hCOBtLARaiZLGwXCw7ZUnhg_pxBKPr7Gn3_6DIMqRaBLRMKO3FoN2E9SdSONWqnef_hku8DmUmEL5amn2pZIc2ECqtxXXeEarD32Rp6PO63DooKFDUYqlZP1GcjKdqDdL1YSXMHtnJtBOTZkNYHFT5_h9o4_d5xrEDKzd3lLzBv0WdSPF3WRvTWFcVhy6BFAmWOG68R7BKFeEKtuOiEMsMpTKIlW-P6BwBtGdw5V6CNZPDdYL_vlPXj-TipqH3Biu9c6kbjSsbKtszVamCsFaGLfNvjZT98P8EcFBPwHMSm7gppZHNl7--r6piTXCPms-f-vwwh-qT7SfS8sKqfbg9YAy2ekcDZfums4sYVMmMDKpBvKoGbNS7aD21INM7vXypfyMwXUqdhjkxxp_6roCBypWPYWX05taUO_sV_3byx5RFUZdRTdQFK4BiVajTmsUVLTOugnJdQrdLYfScIVXPEBKK5x1hv9h3R7DSiJHfyEp7xmOWzQY9IrEA9M0HDgb0ED5p51N1l18ZQfw6pMykEF20sC-JlztjGbZk0_dC_tMmZTDTwpiwfQa1Flwn4LtYt-_TGRIECocm5xudGZpwjloMN145vWfcg_0kR66pLt2PtApXwRXIDhFCDfWASzEGSwEbwGd7_WxtOMqgrRFWa7lAjBPxf-zUEibkUVU1eT6kpJRNbb2oLuJrrvnUr9SlzVut5GMepw1Jxe0AhYedUgAXkS3QjwNHSyqerF4U8pI6JVuRQ	2021-04-15 15:30:21.581243+02	10	1
11	PQ0ORq69ovaXN2CLfDQjqxrJWNEFi7r9iafAup0Ue6UH0UJ13a4JiS2OGnU2JKxO6yviGA-gh9ZVcx8oDwBs6FQbJ7yP175mH35naMwc0P_j2MHhy1pl_ysQ2sUW0BblOn0VcfhiZtExcWEvS8fpB8TZfjWy9npNmWUUQ-edhI4uw9HoImVORXHCNoEBB96vWZh0UbqUEKqY_VDyu70piHL3VdvhpdlaNfpO-mWdTSZB_iSUEE8kboMUYZJACEzotQnRQysU5mZP5vmrWxzw6gT8t8HTbkhYoLy5iG1vZ7aWmEeyTDClUJPRs5GEWbCgF95w2zRnpbWS5mSoacpsSokjh2O5bkEVzBNS219hSBdZL6PCaT2_MNdS6yiO-3XwfjXVoLj5zXvpHrzXnFLF0TiZ_BlALPzZy_kBI-MuS167n22bDRrPDbzdBHacXTJdFEAiBU3ED3EQxk5g09jbA6pZrrwwkDgGrwDBy44vnZO7wTSyhsHayuoWHWB-EjYp8gXZ14O-iwcJDVCqUggqfUy2Zs_d04jNgUUZjks5M-JWowi6Yh2WpwdXBdaE-31nCxHCKSj8TeO1msPHg9ttwOw6bgccn46EVDxQfCCB0p8GHpfu_59fCaDGuw77vVRmpZXYnikHBZuUiEoh-urBb9W6AD3AhMejLb1Mwhcn908xMXJkcq9ZgtJBAKv9ILnACTMdsoBxfRaXCKhskkcqy3J8MwNDDKTm00dDw2YRJQNnT5kSf_qfEB1ue-SEei3ijxYmKHiCZUuHlOYSt7M-qeHTbmkBQP2MIb-lji8XTDXFxHgp6WvtovutrrSJzbrBtxOsbqbl2g5rZ-X1CvdzEyWtbx27UVibxaKON0bwW6Iewvh1CLTz9-7MCJeqAOYNeZX83Ssn9pI-YAMuQ3_RI_8ibIXWIIddzGaG923YZ3sxaDKz	VkZrfQhdHQlfHfQFEx7KYKHAULk395RouwQF6lhXobfV_e9Ecpg2YKAVKgJVoQZ99xVq1ait9cqgxVDVDYxdrtisvVWzTptgIYPGlYS6popCcqLS2UouA29kV_psEsrF3-hhz2etRu_zmec9pYneIuNmCWC-WpbRN_j9YkRDYM6u0uP5lr1IDMUEDNj8OkPV4Rq9N0f6-iDH9Rrkb9HIHcKRdq_JO0V_d9-iIhY4bdJYwj1WAXRqO2IoVWjnusv4YkMAeylT9DFp2wLF7EPGNTv2x9gTFWb6-XBj0wvimoeVG8uFG7u2FbjqDYDrDmSGOxysJOZC19r1gHBAtuIvoNjvxdjtM7rS54cUTxFzxUSs6L-tt-1bGWmbvA-p4bqANCEM1N9k79DUlkVHHKpKORpnh0w8tCDEWw8T5ng5eoMyeJxCRhmwXGG1TNahGJGRiajLQz8oA7qBMj37zY-uMz9r7pPGejnyGRrT7Izy6WqFhKmRf5Ys6uzxoMxRgYcVblebundXluZMvD5u3YD7b7rtW2zsYA5k-AJ99D6l-E5QqjpPEWEMMq2Oa9kxYw5bmem-wju0JNHkulMVTgB-e_25V7mznt3iwGJvU_-_Eog4cD4PFeAloQ7WOTeGhbB8S6kfZyDW0YE9ea13Of9rwdxPGdijAqUP5-1JPPS2QPoL13VzE4H-KIOr7oi7znGn3rg9jmqzYnMzpxBMsuttmNbhMhVw19eQvz6h0a0OIxGWKlLOrHVuMooT6Ag1OVxS0ES4WHAw-Axo1j_OAM0eBq3N8mGfhiVeaN3vU-hgaFgMOuYwz_z0e2CVKccynSdrNtCdRh7_xexJAqBwJQNHZi4NwqVCt81hdIf_a5RgCK3e1uOA3FSDoIBk2I6ah_wqAFWQf69rsL36MI5o6H4jnvv-y5M7bziMEpFKTPcK3d5__3DW	2021-04-15 15:30:24.52482+02	11	1
12	y68Ac4M6Z0DIIzD_bG-iwp8HBX0pCi5V2FhWUxqs4Qup57X_fk-ZVxQwOxWL8b5i6HdcbqYOamzATykDcBctj_HKhSGtRqvxslBoMACMujHjEA10kpJXe2uBfsIH-w3xYNsquIW9cmeUJmdIB1FhKGpkhVkSzoMo-Ib_cjZUtETW4LPgXACCfTGbXwEOKLZFNX8L-2ruGktgxZOreqagcDWwHhI4mAfckTi9UuIdsBcCHdOAdEBvRJ0Qi9MSH5dxK1wCVbAMhlsZaRwsnVfDXYegBt3tYPfyZxFOjj53AiubZzxq8kejD6Oqnd0BMNhxWreMVdHG4rS4tD47cJHdlp74ftGaCHGqghuySTjmBoNkwPLUQZLcTHwjCLEBOybPXP8aEsI0WxQKfE_3jLqrnuhtPUzUVL_fibTLiD71vOQhz9xeZqoYjlOQ8bS4sw3Sh2-jkWOiR3upFIE7L4xjc9UoriBteYpKhKDWRsqF6cd_BPf8YcsTBWzTokfVgPf2uQTvNDS_dU9pCTiiweOwzePbpNfN7045pKTKQhOiXDwq_YaHx2dszjZut3XowK8_w7DahkbN8Mijumnn8Hst-Ynp3sosHVzJRoa0Z7ynZ0tg-eMawpP4C4j-nitu_LjsP-80AjzFmqqp0a_shZLSrhPavQlYiwRlqnhY1SQm78I85Zv6fiOvg2KHAK5wZGLPjMDUs2sGyVLptxchjYht3KBojvsFI0ZZmakH5oyE1U_dWCNBRAzHlJgXa2wk9t4RwrKFBluVnzrn6mYiiX_aMCODeYHjITAYITIDLH0SwGauKTuwGCN2_lmSfTkn33de_E1UWqq3w7JRvVU3Axa8st6Es-1pl0DP3o4Hs7DhnR6AI8CpDyZToNQ4Q6cwqGQ1iXjjwjHmBAwRgCcB2Klacb4l7KAOyQdAIIjVmHs4sULRdN0Q	KdxtiYQzQiGTCkBrOAd49XTxQEWvCjoGUtmLKHiw2O_cP4k6yPaNlf9UMf4C_cYLZZ1kJ4F92ZQvb3ghQjNqlClLi38Mj8Srtj--utY5ZRO6N1YhN4_9B1x852o7cbW-cUI4FOL8ggNAVIggk3QT2PK7HuZzhZ8LCuisffNnbMQlS8J7wtILCgAv_a5xWx62wVtKMSZ_0szWMjzZEJesx6AFil9Pf6J0Rv6SN71T6hEt6c9oKvEFDGpGNEKNsE_GIsFH-3NuqlDIUEyC9OeanlSOypzHdtdXMkIQXVAqLjMstCdyT-FXgw-nlZJYXP1A7EcLyq9wCZHBzioQ2yKuR4eEOhMHau7ayoYp5oxc3X6dd9EnNjI0i2D1LGzOsBu4UIupRtVUoiH52nPaIlqCNDeqGUjRnDebeLiVHJF7m8al8WNQNWlPDSfb36IqrAP3yk06tN2ddIdZCrfkPdV_nhhEL2gRqHhlH7wcyy0UjcgTIewpStM6dsOBkUF3BMQbd9bn4QCI71wJ5NTfWgyNPjMSuDm8RhuprVTUq3V9nx2tRTq5Nl7FsJhU5GD0YPgh8cG0YVkcMn5jwCCjtbWZK0DWlzgI-r1yk86TRvzCygj3Blu0NiK1yhmkIOXD5nDhZSw7ZcyE13UtYlDBcRVd9zF4y2QdmnXkEW2kDi6UiyI9tRwF9hkO8dhSsB2oVcrkldHC7aOnLD6ZjL9tO8WX62LBW-WIpBFs8v9GYWbAebvQcAGZeAaWzDe4i8U1OfOquLFUQk8kvRBkTf3XveQkicQOOy1Fq1znJaiqs5nCF-QaipsHraWbqnKsi5pEZFJ_swRqPpVA_Ae9kdcdcO0GU7SneK-bKda-dMB-KHmSSEtkBL-RxRLVpy6j7znQzfxBtnIw6FIXPOSnBVXxOEqadX5FCbSDzJMNdFlhfAkjrd1hMt18	2021-04-15 15:30:48.311026+02	12	1
\.


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 203
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 12, true);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 205
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 17, true);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 219
-- Name: database_conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_conference_id_seq', 921, true);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 221
-- Name: database_conferenceassistance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_conferenceassistance_id_seq', 1, false);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 223
-- Name: database_presentation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_presentation_id_seq', 949, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 225
-- Name: database_usermessages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_usermessages_id_seq', 9, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 245
-- Name: database_userprofile_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_userprofile_groups_id_seq', 1, false);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 227
-- Name: database_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_userprofile_id_seq', 38, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 247
-- Name: database_userprofile_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.database_userprofile_user_permissions_id_seq', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 229
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 87, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 236
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 238
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 12, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 240
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 242
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 2, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 244
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 12, true);


--
-- TOC entry 3135 (class 2606 OID 17001)
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- TOC entry 3137 (class 2606 OID 17003)
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- TOC entry 3142 (class 2606 OID 17005)
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- TOC entry 3144 (class 2606 OID 17007)
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 17009)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3152 (class 2606 OID 17011)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3155 (class 2606 OID 17013)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 17015)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 17017)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3160 (class 2606 OID 17019)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 17021)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3171 (class 2606 OID 17023)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3162 (class 2606 OID 17025)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 17027)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 17029)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3165 (class 2606 OID 17031)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3179 (class 2606 OID 17033)
-- Name: database_conference database_conference_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conference
    ADD CONSTRAINT database_conference_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 17035)
-- Name: database_conferenceassistance database_conferenceassistance_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conferenceassistance
    ADD CONSTRAINT database_conferenceassistance_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 17037)
-- Name: database_presentation database_presentation_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_presentation
    ADD CONSTRAINT database_presentation_pkey PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 17039)
-- Name: database_usermessage database_usermessages_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_usermessage
    ADD CONSTRAINT database_usermessages_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 17408)
-- Name: database_userprofile_groups database_userprofile_gro_userprofile_id_group_id_0ea7e3a5_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_groups
    ADD CONSTRAINT database_userprofile_gro_userprofile_id_group_id_0ea7e3a5_uniq UNIQUE (userprofile_id, group_id);


--
-- TOC entry 3239 (class 2606 OID 17384)
-- Name: database_userprofile_groups database_userprofile_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_groups
    ADD CONSTRAINT database_userprofile_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 17041)
-- Name: database_userprofile database_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile
    ADD CONSTRAINT database_userprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 17422)
-- Name: database_userprofile_user_permissions database_userprofile_use_userprofile_id_permissio_bb5ff00a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_user_permissions
    ADD CONSTRAINT database_userprofile_use_userprofile_id_permissio_bb5ff00a_uniq UNIQUE (userprofile_id, permission_id);


--
-- TOC entry 3245 (class 2606 OID 17395)
-- Name: database_userprofile_user_permissions database_userprofile_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_user_permissions
    ADD CONSTRAINT database_userprofile_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 17428)
-- Name: database_userprofile database_userprofile_username_4f81a0e1_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile
    ADD CONSTRAINT database_userprofile_username_4f81a0e1_uniq UNIQUE (username);


--
-- TOC entry 3199 (class 2606 OID 17045)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 17047)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3204 (class 2606 OID 17049)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 17051)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 17053)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3213 (class 2606 OID 17055)
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- TOC entry 3215 (class 2606 OID 17057)
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 17059)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 17061)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- TOC entry 3224 (class 2606 OID 17063)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- TOC entry 3222 (class 2606 OID 17065)
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 17067)
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 17069)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- TOC entry 3234 (class 2606 OID 17071)
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- TOC entry 3133 (class 1259 OID 17072)
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- TOC entry 3138 (class 1259 OID 17073)
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- TOC entry 3139 (class 1259 OID 17074)
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- TOC entry 3140 (class 1259 OID 17075)
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- TOC entry 3145 (class 1259 OID 17076)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3150 (class 1259 OID 17077)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3153 (class 1259 OID 17078)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3156 (class 1259 OID 17079)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3166 (class 1259 OID 17080)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3169 (class 1259 OID 17081)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3172 (class 1259 OID 17082)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3175 (class 1259 OID 17083)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3163 (class 1259 OID 17084)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3180 (class 1259 OID 17085)
-- Name: database_conferenceassistance_assistant_id_e3a7887d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_conferenceassistance_assistant_id_e3a7887d ON public.database_conferenceassistance USING btree (assistant_id);


--
-- TOC entry 3181 (class 1259 OID 17086)
-- Name: database_conferenceassistance_conference_id_a1a652cf; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_conferenceassistance_conference_id_a1a652cf ON public.database_conferenceassistance USING btree (conference_id);


--
-- TOC entry 3184 (class 1259 OID 17087)
-- Name: database_presentation_conference_id_45750c80; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_presentation_conference_id_45750c80 ON public.database_presentation USING btree (conference_id);


--
-- TOC entry 3187 (class 1259 OID 17088)
-- Name: database_presentation_speaker_id_cd535a0a; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_presentation_speaker_id_cd535a0a ON public.database_presentation USING btree (speaker_id);


--
-- TOC entry 3188 (class 1259 OID 17089)
-- Name: database_usermessages_message_from_id_de4abc0b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_usermessages_message_from_id_de4abc0b ON public.database_usermessage USING btree (message_from_id);


--
-- TOC entry 3189 (class 1259 OID 17090)
-- Name: database_usermessages_message_to_id_5ac5718c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_usermessages_message_to_id_5ac5718c ON public.database_usermessage USING btree (message_to_id);


--
-- TOC entry 3237 (class 1259 OID 17410)
-- Name: database_userprofile_groups_group_id_95195aa5; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_userprofile_groups_group_id_95195aa5 ON public.database_userprofile_groups USING btree (group_id);


--
-- TOC entry 3240 (class 1259 OID 17409)
-- Name: database_userprofile_groups_userprofile_id_9351a7a6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_userprofile_groups_userprofile_id_9351a7a6 ON public.database_userprofile_groups USING btree (userprofile_id);


--
-- TOC entry 3243 (class 1259 OID 17424)
-- Name: database_userprofile_user_permissions_permission_id_b7f6e50f; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_userprofile_user_permissions_permission_id_b7f6e50f ON public.database_userprofile_user_permissions USING btree (permission_id);


--
-- TOC entry 3246 (class 1259 OID 17423)
-- Name: database_userprofile_user_permissions_userprofile_id_b420adc7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_userprofile_user_permissions_userprofile_id_b420adc7 ON public.database_userprofile_user_permissions USING btree (userprofile_id);


--
-- TOC entry 3194 (class 1259 OID 17429)
-- Name: database_userprofile_username_4f81a0e1_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX database_userprofile_username_4f81a0e1_like ON public.database_userprofile USING btree (username varchar_pattern_ops);


--
-- TOC entry 3197 (class 1259 OID 17091)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3200 (class 1259 OID 17092)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3207 (class 1259 OID 17093)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3210 (class 1259 OID 17094)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3211 (class 1259 OID 17095)
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- TOC entry 3220 (class 1259 OID 17096)
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- TOC entry 3227 (class 1259 OID 17097)
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- TOC entry 3228 (class 1259 OID 17098)
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- TOC entry 3229 (class 1259 OID 17099)
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- TOC entry 3230 (class 1259 OID 17100)
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- TOC entry 3247 (class 2606 OID 17446)
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3248 (class 2606 OID 17451)
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3249 (class 2606 OID 17115)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3250 (class 2606 OID 17120)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3251 (class 2606 OID 17125)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3252 (class 2606 OID 17130)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3253 (class 2606 OID 17135)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3254 (class 2606 OID 17140)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3255 (class 2606 OID 17145)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3256 (class 2606 OID 17150)
-- Name: database_conferenceassistance database_conferencea_assistant_id_e3a7887d_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conferenceassistance
    ADD CONSTRAINT database_conferencea_assistant_id_e3a7887d_fk_database_ FOREIGN KEY (assistant_id) REFERENCES public.database_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3257 (class 2606 OID 17155)
-- Name: database_conferenceassistance database_conferencea_conference_id_a1a652cf_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_conferenceassistance
    ADD CONSTRAINT database_conferencea_conference_id_a1a652cf_fk_database_ FOREIGN KEY (conference_id) REFERENCES public.database_conference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3258 (class 2606 OID 17160)
-- Name: database_presentation database_presentatio_conference_id_45750c80_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_presentation
    ADD CONSTRAINT database_presentatio_conference_id_45750c80_fk_database_ FOREIGN KEY (conference_id) REFERENCES public.database_conference(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3259 (class 2606 OID 17435)
-- Name: database_presentation database_presentatio_speaker_id_cd535a0a_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_presentation
    ADD CONSTRAINT database_presentatio_speaker_id_cd535a0a_fk_database_ FOREIGN KEY (speaker_id) REFERENCES public.database_userprofile(id) ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3260 (class 2606 OID 17170)
-- Name: database_usermessage database_usermessage_message_from_id_79f8ad8c_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_usermessage
    ADD CONSTRAINT database_usermessage_message_from_id_79f8ad8c_fk_database_ FOREIGN KEY (message_from_id) REFERENCES public.database_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3261 (class 2606 OID 17175)
-- Name: database_usermessage database_usermessage_message_to_id_402ac794_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_usermessage
    ADD CONSTRAINT database_usermessage_message_to_id_402ac794_fk_database_ FOREIGN KEY (message_to_id) REFERENCES public.database_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3270 (class 2606 OID 17402)
-- Name: database_userprofile_groups database_userprofile_groups_group_id_95195aa5_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_groups
    ADD CONSTRAINT database_userprofile_groups_group_id_95195aa5_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3272 (class 2606 OID 17416)
-- Name: database_userprofile_user_permissions database_userprofile_permission_id_b7f6e50f_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_user_permissions
    ADD CONSTRAINT database_userprofile_permission_id_b7f6e50f_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3269 (class 2606 OID 17397)
-- Name: database_userprofile_groups database_userprofile_userprofile_id_9351a7a6_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_groups
    ADD CONSTRAINT database_userprofile_userprofile_id_9351a7a6_fk_database_ FOREIGN KEY (userprofile_id) REFERENCES public.database_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3271 (class 2606 OID 17411)
-- Name: database_userprofile_user_permissions database_userprofile_userprofile_id_b420adc7_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.database_userprofile_user_permissions
    ADD CONSTRAINT database_userprofile_userprofile_id_b420adc7_fk_database_ FOREIGN KEY (userprofile_id) REFERENCES public.database_userprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3262 (class 2606 OID 17185)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3263 (class 2606 OID 17190)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3267 (class 2606 OID 17195)
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3268 (class 2606 OID 17200)
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3265 (class 2606 OID 17205)
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3266 (class 2606 OID 17210)
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3264 (class 2606 OID 17441)
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-04-18 18:18:47 -05

--
-- PostgreSQL database dump complete
--

