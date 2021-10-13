--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.10.1)

-- Started on 2021-10-13 14:58:35 EAT

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 240 (class 1259 OID 17473)
-- Name: core_store; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


--
-- TOC entry 241 (class 1259 OID 17480)
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 241
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- TOC entry 242 (class 1259 OID 17482)
-- Name: house_amenities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_amenities (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 243 (class 1259 OID 17487)
-- Name: house_amenities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 243
-- Name: house_amenities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_amenities_id_seq OWNED BY public.house_amenities.id;


--
-- TOC entry 244 (class 1259 OID 17489)
-- Name: house_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_features (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    description character varying(255),
    cost bigint
);


--
-- TOC entry 245 (class 1259 OID 17497)
-- Name: house_features_houses__houses_house_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_features_houses__houses_house_features (
    id integer NOT NULL,
    house_id integer,
    "house-feature_id" integer
);


--
-- TOC entry 246 (class 1259 OID 17500)
-- Name: house_features_houses__houses_house_features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_features_houses__houses_house_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 246
-- Name: house_features_houses__houses_house_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_features_houses__houses_house_features_id_seq OWNED BY public.house_features_houses__houses_house_features.id;


--
-- TOC entry 247 (class 1259 OID 17502)
-- Name: house_features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 247
-- Name: house_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_features_id_seq OWNED BY public.house_features.id;


--
-- TOC entry 248 (class 1259 OID 17504)
-- Name: house_reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_reviews (
    id integer NOT NULL,
    comment text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 249 (class 1259 OID 17512)
-- Name: house_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 249
-- Name: house_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_reviews_id_seq OWNED BY public.house_reviews.id;


--
-- TOC entry 250 (class 1259 OID 17514)
-- Name: house_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_types (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 251 (class 1259 OID 17522)
-- Name: house_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 251
-- Name: house_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_types_id_seq OWNED BY public.house_types.id;


--
-- TOC entry 252 (class 1259 OID 17524)
-- Name: house_utilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.house_utilities (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 253 (class 1259 OID 17529)
-- Name: house_utilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.house_utilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 253
-- Name: house_utilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.house_utilities_id_seq OWNED BY public.house_utilities.id;


--
-- TOC entry 254 (class 1259 OID 17531)
-- Name: houses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.houses (
    id integer NOT NULL,
    "Description" text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    description text,
    location jsonb,
    visible boolean,
    cost bigint,
    verified boolean,
    house_type integer,
    location_name character varying(255)
);


--
-- TOC entry 255 (class 1259 OID 17539)
-- Name: houses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.houses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 255
-- Name: houses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.houses_id_seq OWNED BY public.houses.id;


--
-- TOC entry 256 (class 1259 OID 17541)
-- Name: houses_types__types_houses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.houses_types__types_houses (
    id integer NOT NULL,
    house_id integer,
    type_id integer
);


--
-- TOC entry 257 (class 1259 OID 17544)
-- Name: houses_types__types_houses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.houses_types__types_houses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 257
-- Name: houses_types__types_houses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.houses_types__types_houses_id_seq OWNED BY public.houses_types__types_houses.id;


--
-- TOC entry 258 (class 1259 OID 17546)
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 259 (class 1259 OID 17554)
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 259
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- TOC entry 260 (class 1259 OID 17556)
-- Name: roommate_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roommate_preferences (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 261 (class 1259 OID 17561)
-- Name: roommate_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.roommate_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 261
-- Name: roommate_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.roommate_preferences_id_seq OWNED BY public.roommate_preferences.id;


--
-- TOC entry 262 (class 1259 OID 17563)
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


--
-- TOC entry 263 (class 1259 OID 17569)
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- TOC entry 264 (class 1259 OID 17571)
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 265 (class 1259 OID 17579)
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 265
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- TOC entry 266 (class 1259 OID 17581)
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 267 (class 1259 OID 17589)
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 267
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- TOC entry 268 (class 1259 OID 17591)
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


--
-- TOC entry 269 (class 1259 OID 17594)
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 269
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- TOC entry 270 (class 1259 OID 17596)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


--
-- TOC entry 271 (class 1259 OID 17602)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 272 (class 1259 OID 17604)
-- Name: types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    type character varying(255),
    svg text,
    description character varying(255)
);


--
-- TOC entry 273 (class 1259 OID 17612)
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 273
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- TOC entry 274 (class 1259 OID 17614)
-- Name: upload_file; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 275 (class 1259 OID 17622)
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 275
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- TOC entry 276 (class 1259 OID 17624)
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


--
-- TOC entry 277 (class 1259 OID 17630)
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 277
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- TOC entry 278 (class 1259 OID 17632)
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


--
-- TOC entry 279 (class 1259 OID 17638)
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 279
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- TOC entry 280 (class 1259 OID 17640)
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


--
-- TOC entry 281 (class 1259 OID 17646)
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 281
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- TOC entry 282 (class 1259 OID 17648)
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 283 (class 1259 OID 17656)
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 283
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- TOC entry 284 (class 1259 OID 17658)
-- Name: utilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.utilities (
    id integer NOT NULL,
    name character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- TOC entry 285 (class 1259 OID 17663)
-- Name: utilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.utilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 285
-- Name: utilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.utilities_id_seq OWNED BY public.utilities.id;


--
-- TOC entry 3098 (class 2604 OID 17666)
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- TOC entry 3101 (class 2604 OID 17667)
-- Name: house_amenities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_amenities ALTER COLUMN id SET DEFAULT nextval('public.house_amenities_id_seq'::regclass);


--
-- TOC entry 3104 (class 2604 OID 17668)
-- Name: house_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_features ALTER COLUMN id SET DEFAULT nextval('public.house_features_id_seq'::regclass);


--
-- TOC entry 3105 (class 2604 OID 17669)
-- Name: house_features_houses__houses_house_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_features_houses__houses_house_features ALTER COLUMN id SET DEFAULT nextval('public.house_features_houses__houses_house_features_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 17670)
-- Name: house_reviews id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_reviews ALTER COLUMN id SET DEFAULT nextval('public.house_reviews_id_seq'::regclass);


--
-- TOC entry 3111 (class 2604 OID 17671)
-- Name: house_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_types ALTER COLUMN id SET DEFAULT nextval('public.house_types_id_seq'::regclass);


--
-- TOC entry 3114 (class 2604 OID 17672)
-- Name: house_utilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_utilities ALTER COLUMN id SET DEFAULT nextval('public.house_utilities_id_seq'::regclass);


--
-- TOC entry 3117 (class 2604 OID 17673)
-- Name: houses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.houses ALTER COLUMN id SET DEFAULT nextval('public.houses_id_seq'::regclass);


--
-- TOC entry 3118 (class 2604 OID 17674)
-- Name: houses_types__types_houses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.houses_types__types_houses ALTER COLUMN id SET DEFAULT nextval('public.houses_types__types_houses_id_seq'::regclass);


--
-- TOC entry 3121 (class 2604 OID 17675)
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- TOC entry 3124 (class 2604 OID 17676)
-- Name: roommate_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roommate_preferences ALTER COLUMN id SET DEFAULT nextval('public.roommate_preferences_id_seq'::regclass);


--
-- TOC entry 3125 (class 2604 OID 17677)
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- TOC entry 3128 (class 2604 OID 17678)
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- TOC entry 3131 (class 2604 OID 17679)
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 17680)
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- TOC entry 3133 (class 2604 OID 17681)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 17682)
-- Name: types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 17683)
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 17684)
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- TOC entry 3141 (class 2604 OID 17685)
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- TOC entry 3142 (class 2604 OID 17686)
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- TOC entry 3145 (class 2604 OID 17687)
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- TOC entry 3148 (class 2604 OID 17688)
-- Name: utilities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.utilities ALTER COLUMN id SET DEFAULT nextval('public.utilities_id_seq'::regclass);


--
-- TOC entry 3344 (class 0 OID 17473)
-- Dependencies: 240
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
22	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
12	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
27	plugin_content_manager_configuration_content_types::application::houses.houses	{"uid":"application::houses.houses","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"verified":{"edit":{"label":"Verified","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Verified","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"cost":{"edit":{"label":"Cost","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cost","searchable":true,"sortable":true}},"visible":{"edit":{"label":"Visible","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Visible","searchable":true,"sortable":true}},"location_name":{"edit":{"label":"Location_name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location Name","searchable":true,"sortable":true}},"location":{"edit":{"label":"Location","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Location","searchable":false,"sortable":false}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}},"images":{"edit":{"label":"Images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Images","searchable":false,"sortable":false}},"house_type":{"edit":{"label":"House_type","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"House Type","searchable":true,"sortable":true}},"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"house_features":{"edit":{"label":"House_features","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"House Features","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}}},"layouts":{"edit":[[{"name":"location","size":12}],[{"name":"verified","size":4},{"name":"visible","size":4}],[{"name":"description","size":6},{"name":"images","size":6}],[{"name":"location_name","size":6},{"name":"cost","size":4}]],"editRelations":["house_features","house_type"],"list":["id","location_name","description","cost","house_type","house_features","images","visible","verified"]}}	object		
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
18	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
21	plugin_i18n_default_locale	"en"	string		
23	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":true,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":true}	object	development	
15	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
16	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
17	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
19	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
20	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
35	plugin_content_manager_configuration_content_types::application::house-types.house-types	{"uid":"application::house-types.house-types","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"houses":{"edit":{"label":"Houses","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Houses","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","icon","created_at"],"edit":[[{"name":"name","size":6},{"name":"icon","size":6}]],"editRelations":["houses"]}}	object		
36	model_def_application::utilities.utilities	{"uid":"application::utilities.utilities","collectionName":"utilities","kind":"collectionType","info":{"name":"Utilities"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
28	plugin_documentation_config	{"restrictedAccess":true,"password":"$2a$10$tWEKAFt7yZh/eZfGstH..ewsYdWJVyrdfHORhc9i3d1xIdGUWGXJO"}	object		
10	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
39	plugin_content_manager_configuration_content_types::application::house-amenities.house-amenities	{"uid":"application::house-amenities.house-amenities","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object		
43	plugin_content_manager_configuration_content_types::application::house-reviews.house-reviews	{"uid":"application::house-reviews.house-reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"comment":{"edit":{"label":"Comment","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Comment","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","comment","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"comment","size":6}]]}}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
42	model_def_application::house-reviews.house-reviews	{"uid":"application::house-reviews.house-reviews","collectionName":"house_reviews","kind":"collectionType","info":{"name":"House Reviews"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"comment":{"type":"text"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
40	model_def_application::house-utilities.house-utilities	{"uid":"application::house-utilities.house-utilities","collectionName":"house_utilities","kind":"collectionType","info":{"name":"House Utilities"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
41	plugin_content_manager_configuration_content_types::application::house-utilities.house-utilities	{"uid":"application::house-utilities.house-utilities","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object		
45	plugin_content_manager_configuration_content_types::application::roommate-preferences.roommate-preferences	{"uid":"application::roommate-preferences.roommate-preferences","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"name","size":6}]]}}	object		
29	model_def_application::types.types	{"uid":"application::types.types","collectionName":"house_types","kind":"collectionType","info":{"name":"House Types","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"description":{"type":"string"},"houses":{"via":"house_type","collection":"houses","isVirtual":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::application::house-features.house-features	{"uid":"application::house-features.house-features","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":false,"sortable":false}},"houses":{"edit":{"label":"Houses","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"Houses","searchable":false,"sortable":false}},"cost":{"edit":{"label":"Cost","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Cost","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","created_at","updated_at"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"icon","size":6},{"name":"cost","size":4}]],"editRelations":["houses"]}}	object		
44	model_def_application::roommate-preferences.roommate-preferences	{"uid":"application::roommate-preferences.roommate-preferences","collectionName":"roommate_preferences","kind":"collectionType","info":{"name":"Roommate Preferences"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
38	model_def_application::house-amenities.house-amenities	{"uid":"application::house-amenities.house-amenities","collectionName":"house_amenities","kind":"collectionType","info":{"name":"House Amenities"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
31	model_def_application::house-features.house-features	{"uid":"application::house-features.house-features","collectionName":"house_features","kind":"collectionType","info":{"name":"House Features","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"description":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"houses":{"via":"house_features","collection":"houses","attribute":"house","column":"id","isVirtual":true},"cost":{"type":"biginteger"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
33	model_def_application::house-types.house-types	{"uid":"application::house-types.house-types","collectionName":"house_types","kind":"collectionType","info":{"name":"House Types"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"icon":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"houses":{"via":"house_type","collection":"houses","isVirtual":true},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
25	model_def_application::houses.houses	{"uid":"application::houses.houses","collectionName":"houses","kind":"collectionType","info":{"name":"houses","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"location":{"type":"json","required":true},"verified":{"type":"boolean","default":false,"private":false},"visible":{"type":"boolean","default":true},"description":{"type":"text"},"images":{"collection":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"house_features":{"via":"houses","collection":"house-features","dominant":true,"attribute":"house-feature","column":"id","isVirtual":true},"house_type":{"model":"house-types","via":"houses"},"location_name":{"type":"string","required":true},"cost":{"type":"biginteger","required":true,"min":"1"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- TOC entry 3346 (class 0 OID 17482)
-- Dependencies: 242
-- Data for Name: house_amenities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_amenities (id, name, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3348 (class 0 OID 17489)
-- Dependencies: 244
-- Data for Name: house_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_features (id, name, published_at, created_by, updated_by, created_at, updated_at, description, cost) FROM stdin;
1	CCTV surveillance	2021-08-22 06:37:56.6+00	1	1	2021-08-22 06:36:39.672+00	2021-08-22 06:37:56.616+00	\N	\N
2	Borehole water storage	2021-08-22 06:38:11.9+00	1	1	2021-08-22 06:38:09.917+00	2021-08-22 06:38:11.925+00	\N	\N
3	Wifi	2021-08-22 06:57:16.871+00	1	1	2021-08-22 06:56:42.153+00	2021-08-22 06:57:16.894+00	\N	\N
\.


--
-- TOC entry 3349 (class 0 OID 17497)
-- Dependencies: 245
-- Data for Name: house_features_houses__houses_house_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_features_houses__houses_house_features (id, house_id, "house-feature_id") FROM stdin;
1	1	1
2	1	2
9	7	4
10	7	5
12	8	4
13	8	5
15	9	4
16	9	5
17	10	1
18	10	2
19	11	1
20	11	2
21	12	1
22	12	2
23	12	3
24	13	1
25	13	2
26	13	3
27	14	2
28	15	1
29	15	3
30	16	2
37	21	1
38	22	1
39	23	1
40	24	2
41	25	1
42	26	1
\.


--
-- TOC entry 3352 (class 0 OID 17504)
-- Dependencies: 248
-- Data for Name: house_reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_reviews (id, comment, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3354 (class 0 OID 17514)
-- Dependencies: 250
-- Data for Name: house_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_types (id, name, description, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	One Bedroom	\N	2021-08-13 18:18:56.952+00	1	1	2021-08-13 18:18:52.246+00	2021-08-13 18:18:56.979+00
2	Two bedroom	\N	2021-08-13 18:19:11.04+00	1	1	2021-08-13 18:19:08.953+00	2021-08-13 18:19:11.081+00
\.


--
-- TOC entry 3356 (class 0 OID 17524)
-- Dependencies: 252
-- Data for Name: house_utilities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.house_utilities (id, name, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3358 (class 0 OID 17531)
-- Dependencies: 254
-- Data for Name: houses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.houses (id, "Description", published_at, created_by, updated_by, created_at, updated_at, description, location, visible, cost, verified, house_type, location_name) FROM stdin;
23	\N	2021-08-26 07:39:37.692+00	\N	\N	2021-08-26 07:39:37.694+00	2021-08-26 07:39:37.708+00	768	{"lat": -1.2206159874653002, "lng": 36.85783263809816}	t	4000	f	1	lion
24	\N	2021-08-26 08:09:35.601+00	\N	\N	2021-08-26 08:09:35.61+00	2021-08-26 08:09:35.635+00	2342	{"lat": -1.2208456657043267, "lng": 36.85731274194775}	t	23	f	1	dsfds
1	\N	2021-08-12 17:59:40.066+00	1	1	2021-08-12 17:59:29.005+00	2021-08-22 06:41:05.279+00	This is the first test house	{"lat": -1.2, "lng": 34}	t	\N	f	1	\N
10	\N	2021-08-24 14:11:06.534+00	\N	\N	2021-08-24 14:11:06.538+00	2021-08-24 14:11:06.552+00	Adlkjsakj	{"lat": -1.220205415888309, "lng": 36.85809985344237}	\N	2379	\N	1	Kitengela
11	\N	2021-08-24 14:15:29.45+00	\N	\N	2021-08-24 14:15:29.461+00	2021-08-24 14:15:29.48+00	Description	{"lat": -1.2202056158883303, "lng": 36.857798846032736}	t	1234	f	1	Kitengela
12	\N	2021-08-25 14:40:00.378+00	\N	\N	2021-08-25 14:40:00.386+00	2021-08-25 14:40:00.425+00	B12	{"lat": -1.2203156482063178, "lng": 36.85800429947511}	t	34982	f	2	Test 1
13	\N	2021-08-25 16:03:14.886+00	\N	\N	2021-08-25 16:03:14.891+00	2021-08-25 16:03:14.91+00	lkjsdlkjflkj	{"lat": -1.2205730818589298, "lng": 36.85830470688478}	t	2323	f	1	nairnd
14	\N	2021-08-25 16:54:18.8+00	\N	\N	2021-08-25 16:54:18.804+00	2021-08-25 16:54:18.813+00	sdfsfsf	{"lat": null, "lng": null}	t	23232	f	1	lsdjflj
15	\N	2021-08-25 18:57:53.253+00	\N	\N	2021-08-25 18:57:53.265+00	2021-08-25 18:57:53.283+00	Building description	{"lat": -1.220892705601963, "lng": 36.85758126931153}	t	5500	f	1	Test 6
16	\N	2021-08-25 20:20:54.874+00	\N	\N	2021-08-25 20:20:54.879+00	2021-08-25 20:20:54.892+00	Building description	{"lat": null, "lng": null}	t	2356	f	2	Test 1
19	\N	2021-08-26 06:54:50.992+00	\N	\N	2021-08-26 06:54:50.994+00	2021-08-26 06:54:51.008+00	986	{"lat": -1.2208734210891727, "lng": 36.857446400000015}	t	5876	f	1	jhkj
20	\N	2021-08-26 06:56:14.016+00	\N	\N	2021-08-26 06:56:14.02+00	2021-08-26 06:56:14.033+00	986	{"lat": -1.2208734210891727, "lng": 36.857446400000015}	t	5876	f	1	jhkj
21	\N	2021-08-26 06:59:58.022+00	\N	\N	2021-08-26 06:59:58.03+00	2021-08-26 06:59:58.05+00	768	{"lat": -1.2206159874653002, "lng": 36.85783263809816}	t	4000	f	1	lion
22	\N	2021-08-26 07:39:05.136+00	\N	\N	2021-08-26 07:39:05.147+00	2021-08-26 07:39:05.171+00	768	{"lat": -1.2206159874653002, "lng": 36.85783263809816}	t	4000	f	1	lion
25	\N	2021-08-26 12:20:18.507+00	\N	\N	2021-08-26 12:20:18.518+00	2021-08-26 12:20:18.555+00	123	{"lat": -1.2205730818589298, "lng": 36.85783263809816}	t	2300	f	1	Remote test
26	\N	2021-08-26 12:22:28.347+00	\N	\N	2021-08-26 12:22:28.353+00	2021-08-26 12:22:28.405+00	123	{"lat": -1.2205730818589298, "lng": 36.85783263809816}	t	2300	f	1	Remote test 2
\.


--
-- TOC entry 3360 (class 0 OID 17541)
-- Dependencies: 256
-- Data for Name: houses_types__types_houses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.houses_types__types_houses (id, house_id, type_id) FROM stdin;
\.


--
-- TOC entry 3362 (class 0 OID 17546)
-- Dependencies: 258
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-08-07 08:39:22.022+00	2021-08-07 08:39:22.022+00
\.


--
-- TOC entry 3364 (class 0 OID 17556)
-- Dependencies: 260
-- Data for Name: roommate_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roommate_preferences (id, name, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3366 (class 0 OID 17563)
-- Dependencies: 262
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Paul	Wahome	wakadaisho	paulwahome9@gmail.com	$2a$10$Uxc7q.VjXSxemrBV4ijuX.uweNfG4cE/QmlsEx8yxPmSqJKjWDZNC	\N	\N	t	\N	\N
\.


--
-- TOC entry 3368 (class 0 OID 17571)
-- Dependencies: 264
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	{}	[]	2	2021-08-07 08:39:23.583+00	2021-08-07 08:39:23.596+00
2	plugins::upload.assets.create	\N	{}	[]	2	2021-08-07 08:39:23.584+00	2021-08-07 08:39:23.596+00
3	plugins::upload.assets.update	\N	{}	[]	2	2021-08-07 08:39:23.584+00	2021-08-07 08:39:23.596+00
4	plugins::upload.assets.download	\N	{}	[]	2	2021-08-07 08:39:23.584+00	2021-08-07 08:39:23.599+00
5	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-08-07 08:39:23.585+00	2021-08-07 08:39:23.599+00
6	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-08-07 08:39:23.622+00	2021-08-07 08:39:23.634+00
8	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-08-07 08:39:23.622+00	2021-08-07 08:39:23.634+00
7	plugins::upload.assets.create	\N	{}	[]	3	2021-08-07 08:39:23.622+00	2021-08-07 08:39:23.634+00
9	plugins::upload.assets.download	\N	{}	[]	3	2021-08-07 08:39:23.622+00	2021-08-07 08:39:23.634+00
10	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-08-07 08:39:23.623+00	2021-08-07 08:39:23.636+00
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 08:39:23.689+00	2021-08-07 08:39:23.712+00
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 08:39:23.69+00	2021-08-07 08:39:23.713+00
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 08:39:23.69+00	2021-08-07 08:39:23.713+00
15	plugins::content-type-builder.read	\N	{}	[]	1	2021-08-07 08:39:23.691+00	2021-08-07 08:39:23.714+00
16	plugins::email.settings.read	\N	{}	[]	1	2021-08-07 08:39:23.691+00	2021-08-07 08:39:23.714+00
17	plugins::upload.read	\N	{}	[]	1	2021-08-07 08:39:23.691+00	2021-08-07 08:39:23.715+00
18	plugins::upload.assets.create	\N	{}	[]	1	2021-08-07 08:39:23.692+00	2021-08-07 08:39:23.715+00
19	plugins::upload.assets.update	\N	{}	[]	1	2021-08-07 08:39:23.692+00	2021-08-07 08:39:23.715+00
20	plugins::upload.assets.download	\N	{}	[]	1	2021-08-07 08:39:23.693+00	2021-08-07 08:39:23.72+00
21	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-08-07 08:39:23.746+00	2021-08-07 08:39:23.765+00
22	plugins::upload.settings.read	\N	{}	[]	1	2021-08-07 08:39:23.747+00	2021-08-07 08:39:23.766+00
23	plugins::i18n.locale.create	\N	{}	[]	1	2021-08-07 08:39:23.747+00	2021-08-07 08:39:23.766+00
24	plugins::i18n.locale.read	\N	{}	[]	1	2021-08-07 08:39:23.747+00	2021-08-07 08:39:23.766+00
25	plugins::i18n.locale.update	\N	{}	[]	1	2021-08-07 08:39:23.748+00	2021-08-07 08:39:23.766+00
27	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-08-07 08:39:23.752+00	2021-08-07 08:39:23.772+00
26	plugins::i18n.locale.delete	\N	{}	[]	1	2021-08-07 08:39:23.748+00	2021-08-07 08:39:23.772+00
28	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-08-07 08:39:23.756+00	2021-08-07 08:39:23.779+00
29	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-08-07 08:39:23.757+00	2021-08-07 08:39:23.779+00
30	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-08-07 08:39:23.761+00	2021-08-07 08:39:23.785+00
32	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-08-07 08:39:23.806+00	2021-08-07 08:39:23.829+00
33	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-08-07 08:39:23.806+00	2021-08-07 08:39:23.829+00
31	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-08-07 08:39:23.806+00	2021-08-07 08:39:23.829+00
35	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-08-07 08:39:23.81+00	2021-08-07 08:39:23.835+00
36	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-08-07 08:39:23.81+00	2021-08-07 08:39:23.835+00
34	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-08-07 08:39:23.806+00	2021-08-07 08:39:23.835+00
37	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-08-07 08:39:23.815+00	2021-08-07 08:39:23.842+00
38	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-08-07 08:39:23.816+00	2021-08-07 08:39:23.842+00
39	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-08-07 08:39:23.824+00	2021-08-07 08:39:23.847+00
40	admin::marketplace.read	\N	{}	[]	1	2021-08-07 08:39:23.829+00	2021-08-07 08:39:23.855+00
41	admin::marketplace.plugins.install	\N	{}	[]	1	2021-08-07 08:39:23.87+00	2021-08-07 08:39:23.888+00
42	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-08-07 08:39:23.87+00	2021-08-07 08:39:23.888+00
43	admin::webhooks.create	\N	{}	[]	1	2021-08-07 08:39:23.87+00	2021-08-07 08:39:23.888+00
44	admin::webhooks.read	\N	{}	[]	1	2021-08-07 08:39:23.874+00	2021-08-07 08:39:23.893+00
45	admin::webhooks.update	\N	{}	[]	1	2021-08-07 08:39:23.875+00	2021-08-07 08:39:23.894+00
46	admin::webhooks.delete	\N	{}	[]	1	2021-08-07 08:39:23.878+00	2021-08-07 08:39:23.899+00
47	admin::users.create	\N	{}	[]	1	2021-08-07 08:39:23.878+00	2021-08-07 08:39:23.899+00
48	admin::users.read	\N	{}	[]	1	2021-08-07 08:39:23.879+00	2021-08-07 08:39:23.899+00
49	admin::users.update	\N	{}	[]	1	2021-08-07 08:39:23.888+00	2021-08-07 08:39:23.91+00
50	admin::users.delete	\N	{}	[]	1	2021-08-07 08:39:23.894+00	2021-08-07 08:39:23.916+00
51	admin::roles.create	\N	{}	[]	1	2021-08-07 08:39:23.925+00	2021-08-07 08:39:23.94+00
53	admin::roles.update	\N	{}	[]	1	2021-08-07 08:39:23.925+00	2021-08-07 08:39:23.94+00
52	admin::roles.read	\N	{}	[]	1	2021-08-07 08:39:23.925+00	2021-08-07 08:39:23.941+00
54	admin::roles.delete	\N	{}	[]	1	2021-08-07 08:39:23.931+00	2021-08-07 08:39:23.943+00
320	plugins::content-manager.explorer.read	application::house-types.house-types	{"fields": ["name", "icon", "houses"]}	[]	1	2021-08-13 18:17:48.006+00	2021-08-13 18:17:48.066+00
270	plugins::content-manager.explorer.update	application::house-features.house-features	{"fields": ["name", "description", "icon", "houses", "cost"]}	[]	1	2021-08-13 18:01:54.896+00	2021-08-13 18:01:54.921+00
122	plugins::documentation.read	\N	{}	[]	1	2021-08-12 16:10:51.24+00	2021-08-12 16:10:51.262+00
373	plugins::content-manager.explorer.update	application::house-utilities.house-utilities	{"fields": ["name"]}	[]	1	2021-08-21 15:48:28.325+00	2021-08-21 15:48:28.364+00
351	plugins::content-manager.explorer.read	application::house-amenities.house-amenities	{"fields": ["name"]}	[]	1	2021-08-21 15:47:21.807+00	2021-08-21 15:47:21.84+00
124	plugins::documentation.settings.regenerate	\N	{}	[]	1	2021-08-12 16:10:51.246+00	2021-08-12 16:10:51.27+00
398	plugins::content-manager.explorer.create	application::house-reviews.house-reviews	{"fields": ["comment"]}	[]	1	2021-08-22 18:39:21.167+00	2021-08-22 18:39:21.205+00
399	plugins::content-manager.explorer.read	application::house-reviews.house-reviews	{"fields": ["comment"]}	[]	1	2021-08-22 18:39:21.167+00	2021-08-22 18:39:21.206+00
467	plugins::content-manager.explorer.update	application::houses.houses	{"fields": ["location", "verified", "visible", "description", "images", "house_features", "house_type", "location_name", "cost"]}	[]	1	2021-08-24 14:11:03.764+00	2021-08-24 14:11:03.797+00
469	plugins::content-manager.explorer.create	application::houses.houses	{"fields": ["location", "verified", "visible", "description", "images", "house_features", "house_type", "location_name", "cost"]}	[]	1	2021-08-24 14:11:03.764+00	2021-08-24 14:11:03.798+00
268	plugins::content-manager.explorer.create	application::house-features.house-features	{"fields": ["name", "description", "icon", "houses", "cost"]}	[]	1	2021-08-13 18:01:54.896+00	2021-08-13 18:01:54.92+00
374	plugins::content-manager.explorer.read	application::house-utilities.house-utilities	{"fields": ["name"]}	[]	1	2021-08-21 15:48:28.325+00	2021-08-21 15:48:28.365+00
352	plugins::content-manager.explorer.update	application::house-amenities.house-amenities	{"fields": ["name"]}	[]	1	2021-08-21 15:47:21.807+00	2021-08-21 15:47:21.841+00
318	plugins::content-manager.explorer.create	application::house-types.house-types	{"fields": ["name", "icon", "houses"]}	[]	1	2021-08-13 18:17:48.005+00	2021-08-13 18:17:48.065+00
123	plugins::documentation.settings.update	\N	{}	[]	1	2021-08-12 16:10:51.241+00	2021-08-12 16:10:51.27+00
414	plugins::content-manager.explorer.read	application::roommate-preferences.roommate-preferences	{"fields": ["name"]}	[]	1	2021-08-22 18:40:14.106+00	2021-08-22 18:40:14.129+00
416	plugins::content-manager.explorer.update	application::roommate-preferences.roommate-preferences	{"fields": ["name"]}	[]	1	2021-08-22 18:40:14.106+00	2021-08-22 18:40:14.129+00
269	plugins::content-manager.explorer.read	application::house-features.house-features	{"fields": ["name", "description", "icon", "houses", "cost"]}	[]	1	2021-08-13 18:01:54.896+00	2021-08-13 18:01:54.921+00
375	plugins::content-manager.explorer.create	application::house-utilities.house-utilities	{"fields": ["name"]}	[]	1	2021-08-21 15:48:28.326+00	2021-08-21 15:48:28.366+00
350	plugins::content-manager.explorer.create	application::house-amenities.house-amenities	{"fields": ["name"]}	[]	1	2021-08-21 15:47:21.806+00	2021-08-21 15:47:21.84+00
322	plugins::content-manager.explorer.update	application::house-types.house-types	{"fields": ["name", "icon", "houses"]}	[]	1	2021-08-13 18:17:48.007+00	2021-08-13 18:17:48.066+00
468	plugins::content-manager.explorer.read	application::houses.houses	{"fields": ["location", "verified", "visible", "description", "images", "house_features", "house_type", "location_name", "cost"]}	[]	1	2021-08-24 14:11:03.764+00	2021-08-24 14:11:03.797+00
415	plugins::content-manager.explorer.create	application::roommate-preferences.roommate-preferences	{"fields": ["name"]}	[]	1	2021-08-22 18:40:14.106+00	2021-08-22 18:40:14.129+00
400	plugins::content-manager.explorer.update	application::house-reviews.house-reviews	{"fields": ["comment"]}	[]	1	2021-08-22 18:39:21.167+00	2021-08-22 18:39:21.206+00
681	plugins::content-manager.explorer.delete	application::house-amenities.house-amenities	{}	[]	1	2021-08-26 11:33:41.086+00	2021-08-26 11:33:41.15+00
682	plugins::content-manager.explorer.delete	application::house-features.house-features	{}	[]	1	2021-08-26 11:33:41.086+00	2021-08-26 11:33:41.15+00
683	plugins::content-manager.explorer.delete	application::house-reviews.house-reviews	{}	[]	1	2021-08-26 11:33:41.087+00	2021-08-26 11:33:41.15+00
684	plugins::content-manager.explorer.delete	application::house-types.house-types	{}	[]	1	2021-08-26 11:33:41.087+00	2021-08-26 11:33:41.151+00
685	plugins::content-manager.explorer.delete	application::house-utilities.house-utilities	{}	[]	1	2021-08-26 11:33:41.087+00	2021-08-26 11:33:41.151+00
686	plugins::content-manager.explorer.delete	application::houses.houses	{}	[]	1	2021-08-26 11:33:41.088+00	2021-08-26 11:33:41.151+00
687	plugins::content-manager.explorer.delete	application::roommate-preferences.roommate-preferences	{}	[]	1	2021-08-26 11:33:41.088+00	2021-08-26 11:33:41.151+00
688	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2021-08-26 11:33:41.088+00	2021-08-26 11:33:41.152+00
689	plugins::content-manager.explorer.publish	application::house-amenities.house-amenities	{}	[]	1	2021-08-26 11:33:41.089+00	2021-08-26 11:33:41.152+00
690	plugins::content-manager.explorer.publish	application::house-features.house-features	{}	[]	1	2021-08-26 11:33:41.089+00	2021-08-26 11:33:41.152+00
691	plugins::content-manager.explorer.publish	application::house-reviews.house-reviews	{}	[]	1	2021-08-26 11:33:41.229+00	2021-08-26 11:33:41.256+00
692	plugins::content-manager.explorer.publish	application::house-types.house-types	{}	[]	1	2021-08-26 11:33:41.229+00	2021-08-26 11:33:41.257+00
693	plugins::content-manager.explorer.publish	application::house-utilities.house-utilities	{}	[]	1	2021-08-26 11:33:41.23+00	2021-08-26 11:33:41.257+00
694	plugins::content-manager.explorer.publish	application::houses.houses	{}	[]	1	2021-08-26 11:33:41.23+00	2021-08-26 11:33:41.257+00
695	plugins::content-manager.explorer.publish	application::roommate-preferences.roommate-preferences	{}	[]	1	2021-08-26 11:33:41.23+00	2021-08-26 11:33:41.257+00
\.


--
-- TOC entry 3370 (class 0 OID 17581)
-- Dependencies: 266
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-08-07 08:39:23.517+00	2021-08-07 08:39:23.517+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-08-07 08:39:23.537+00	2021-08-07 08:39:23.537+00
3	Author	strapi-author	Authors can manage the content they have created.	2021-08-07 08:39:23.556+00	2021-08-07 08:39:23.556+00
\.


--
-- TOC entry 3372 (class 0 OID 17591)
-- Dependencies: 268
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- TOC entry 3374 (class 0 OID 17596)
-- Dependencies: 270
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- TOC entry 3376 (class 0 OID 17604)
-- Dependencies: 272
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.types (id, name, published_at, created_by, updated_by, created_at, updated_at, type, svg, description) FROM stdin;
1	One Bedroom	2021-08-13 13:50:51.584+00	1	1	2021-08-13 13:49:41.431+00	2021-08-13 16:55:43.323+00	house_type	<svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">\n  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />\n</svg>	\N
2	Two Bedroom	2021-08-13 13:50:56.153+00	1	1	2021-08-13 13:50:26.175+00	2021-08-13 16:55:55.224+00	house_type	<svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">\n  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />\n</svg>	\N
\.


--
-- TOC entry 3378 (class 0 OID 17614)
-- Dependencies: 274
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3380 (class 0 OID 17624)
-- Dependencies: 276
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- TOC entry 3382 (class 0 OID 17632)
-- Dependencies: 278
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
39	content-manager	single-types	find	f		1	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
7	content-manager	collection-types	find	f		1	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
10	content-manager	collection-types	findone	f		1	\N	\N
8	content-manager	collection-types	find	f		2	\N	\N
9	content-manager	collection-types	findone	f		2	\N	\N
241	application	house-features	update	t		1	\N	\N
231	application	house-features	count	t		1	\N	\N
255	application	house-types	find	t		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
311	application	roommate-preferences	create	t		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
29	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
30	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
31	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
32	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
34	content-manager	relations	find	f		2	\N	\N
35	content-manager	single-types	createorupdate	f		1	\N	\N
36	content-manager	single-types	createorupdate	f		2	\N	\N
38	content-manager	single-types	delete	f		2	\N	\N
37	content-manager	single-types	delete	f		1	\N	\N
40	content-manager	single-types	find	f		2	\N	\N
41	content-manager	single-types	publish	f		1	\N	\N
42	content-manager	single-types	publish	f		2	\N	\N
43	content-manager	single-types	unpublish	f		1	\N	\N
44	content-manager	single-types	unpublish	f		2	\N	\N
46	content-manager	uid	checkuidavailability	f		2	\N	\N
47	content-manager	uid	generateuid	f		1	\N	\N
48	content-manager	uid	generateuid	f		2	\N	\N
45	content-manager	uid	checkuidavailability	f		1	\N	\N
49	content-type-builder	builder	getreservednames	f		1	\N	\N
50	content-type-builder	builder	getreservednames	f		2	\N	\N
51	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
53	content-type-builder	componentcategories	editcategory	f		1	\N	\N
55	content-type-builder	components	createcomponent	f		1	\N	\N
54	content-type-builder	componentcategories	editcategory	f		2	\N	\N
56	content-type-builder	components	createcomponent	f		2	\N	\N
57	content-type-builder	components	deletecomponent	f		1	\N	\N
52	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
58	content-type-builder	components	deletecomponent	f		2	\N	\N
59	content-type-builder	components	getcomponent	f		1	\N	\N
60	content-type-builder	components	getcomponent	f		2	\N	\N
61	content-type-builder	components	getcomponents	f		1	\N	\N
62	content-type-builder	components	getcomponents	f		2	\N	\N
64	content-type-builder	components	updatecomponent	f		2	\N	\N
63	content-type-builder	components	updatecomponent	f		1	\N	\N
65	content-type-builder	connections	getconnections	f		1	\N	\N
67	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
66	content-type-builder	connections	getconnections	f		2	\N	\N
68	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
69	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
70	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
71	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
73	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
72	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
74	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
75	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
80	email	email	send	f		2	\N	\N
81	email	email	test	f		1	\N	\N
83	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
90	i18n	locales	deletelocale	f		2	\N	\N
91	i18n	locales	listlocales	f		1	\N	\N
96	upload	upload	count	f		2	\N	\N
298	application	house-reviews	count	f		2	\N	\N
296	application	house-utilities	update	t		1	\N	\N
76	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
85	i18n	iso-locales	listisolocales	f		1	\N	\N
112	users-permissions	auth	callback	t		2	\N	\N
122	users-permissions	auth	resetpassword	t		2	\N	\N
134	users-permissions	user	find	f		2	\N	\N
143	users-permissions	userspermissions	deleterole	f		1	\N	\N
154	users-permissions	userspermissions	getrole	f		1	\N	\N
162	users-permissions	userspermissions	index	f		2	\N	\N
171	users-permissions	userspermissions	updaterole	f		1	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
232	application	house-features	count	f		2	\N	\N
286	application	house-utilities	count	f		2	\N	\N
192	application	houses	create	f		2	\N	\N
200	application	houses	update	f		2	\N	\N
204	documentation	documentation	getinfos	f		2	\N	\N
214	documentation	documentation	updatesettings	f		2	\N	\N
218	entity-relationship-chart	entity-relationship-chart	geterdata	f		2	\N	\N
256	application	house-types	find	f		2	\N	\N
275	application	house-amenities	count	f		2	\N	\N
312	application	roommate-preferences	create	f		2	\N	\N
299	application	house-reviews	create	t		1	\N	\N
283	application	house-amenities	update	t		1	\N	\N
105	upload	upload	search	t		1	\N	\N
95	upload	upload	count	t		1	\N	\N
77	email	email	getsettings	f		1	\N	\N
88	i18n	locales	createlocale	f		2	\N	\N
98	upload	upload	destroy	f		2	\N	\N
111	users-permissions	auth	callback	f		1	\N	\N
121	users-permissions	auth	resetpassword	f		1	\N	\N
132	users-permissions	user	destroyall	f		2	\N	\N
144	users-permissions	userspermissions	deleterole	f		2	\N	\N
158	users-permissions	userspermissions	getroles	f		2	\N	\N
169	users-permissions	userspermissions	updateproviders	f		1	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
233	application	house-features	create	t		1	\N	\N
205	documentation	documentation	login	f		1	\N	\N
193	application	houses	delete	t		1	\N	\N
300	application	house-reviews	create	f		2	\N	\N
287	application	house-utilities	create	t		1	\N	\N
274	application	house-amenities	create	t		1	\N	\N
257	application	house-types	findone	t		1	\N	\N
276	application	house-amenities	create	f		2	\N	\N
313	application	roommate-preferences	delete	t		1	\N	\N
103	upload	upload	getsettings	t		1	\N	\N
78	email	email	getsettings	f		2	\N	\N
86	i18n	iso-locales	listisolocales	f		2	\N	\N
94	i18n	locales	updatelocale	f		2	\N	\N
118	users-permissions	auth	forgotpassword	t		2	\N	\N
128	users-permissions	user	create	f		2	\N	\N
137	users-permissions	user	me	t		1	\N	\N
147	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
156	users-permissions	userspermissions	getrole	f		2	\N	\N
166	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
234	application	house-features	create	f		2	\N	\N
194	application	houses	delete	f		2	\N	\N
206	documentation	documentation	index	f		2	\N	\N
288	application	house-utilities	create	f		2	\N	\N
258	application	house-types	findone	f		2	\N	\N
314	application	roommate-preferences	delete	f		2	\N	\N
301	application	house-reviews	delete	t		1	\N	\N
277	application	house-amenities	delete	t		1	\N	\N
107	upload	upload	updatesettings	t		1	\N	\N
79	email	email	send	f		1	\N	\N
89	i18n	locales	deletelocale	f		1	\N	\N
108	upload	upload	updatesettings	f		2	\N	\N
117	users-permissions	auth	forgotpassword	f		1	\N	\N
136	users-permissions	user	findone	f		2	\N	\N
145	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
153	users-permissions	userspermissions	getproviders	f		1	\N	\N
161	users-permissions	userspermissions	index	f		1	\N	\N
172	users-permissions	userspermissions	updaterole	f		2	\N	\N
125	users-permissions	user	count	t		1	\N	\N
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
235	application	house-features	delete	t		1	\N	\N
295	application	house-utilities	update	f		2	\N	\N
207	documentation	documentation	login	f		2	\N	\N
195	application	houses	find	t		1	\N	\N
302	application	house-reviews	delete	f		2	\N	\N
278	application	house-amenities	delete	f		2	\N	\N
308	application	house-reviews	update	f		2	\N	\N
289	application	house-utilities	delete	t		1	\N	\N
315	application	roommate-preferences	find	t		1	\N	\N
99	upload	upload	find	t		1	\N	\N
84	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
93	i18n	locales	updatelocale	f		1	\N	\N
104	upload	upload	getsettings	f		2	\N	\N
113	users-permissions	auth	connect	t		1	\N	\N
149	users-permissions	userspermissions	getpermissions	f		1	\N	\N
159	users-permissions	userspermissions	getroutes	f		1	\N	\N
168	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
139	users-permissions	user	update	t		1	\N	\N
127	users-permissions	user	create	t		1	\N	\N
33	content-manager	relations	find	f		1	\N	\N
236	application	house-features	delete	f		2	\N	\N
242	application	house-features	update	f		2	\N	\N
196	application	houses	find	f		2	\N	\N
208	documentation	documentation	loginview	f		1	\N	\N
290	application	house-utilities	delete	f		2	\N	\N
259	application	house-types	update	t		1	\N	\N
249	application	house-types	count	t		1	\N	\N
279	application	house-amenities	find	f		2	\N	\N
316	application	roommate-preferences	find	f		2	\N	\N
303	application	house-reviews	find	t		1	\N	\N
87	i18n	locales	createlocale	f		1	\N	\N
92	i18n	locales	listlocales	f		2	\N	\N
102	upload	upload	findone	f		2	\N	\N
116	users-permissions	auth	emailconfirmation	t		2	\N	\N
126	users-permissions	user	count	f		2	\N	\N
146	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
155	users-permissions	userspermissions	getproviders	f		2	\N	\N
163	users-permissions	userspermissions	searchusers	f		1	\N	\N
135	users-permissions	user	findone	t		1	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
237	application	house-features	find	t		1	\N	\N
209	documentation	documentation	index	f		1	\N	\N
197	application	houses	findone	t		1	\N	\N
250	application	house-types	count	f		2	\N	\N
304	application	house-reviews	find	f		2	\N	\N
291	application	house-utilities	find	t		1	\N	\N
280	application	house-amenities	find	t		1	\N	\N
317	application	roommate-preferences	findone	t		1	\N	\N
82	email	email	test	f		2	\N	\N
106	upload	upload	search	f		2	\N	\N
114	users-permissions	auth	connect	t		2	\N	\N
123	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
131	users-permissions	user	destroyall	f		1	\N	\N
141	users-permissions	userspermissions	createrole	f		1	\N	\N
151	users-permissions	userspermissions	getpolicies	f		1	\N	\N
164	users-permissions	userspermissions	searchusers	f		2	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
238	application	house-features	find	f		2	\N	\N
198	application	houses	findone	f		2	\N	\N
210	documentation	documentation	loginview	f		2	\N	\N
292	application	house-utilities	find	f		2	\N	\N
260	application	house-types	update	f		2	\N	\N
251	application	house-types	create	t		1	\N	\N
318	application	roommate-preferences	findone	f		2	\N	\N
305	application	house-reviews	findone	t		1	\N	\N
281	application	house-amenities	findone	t		1	\N	\N
97	upload	upload	destroy	t		1	\N	\N
100	upload	upload	find	f		2	\N	\N
110	upload	upload	upload	f		2	\N	\N
120	users-permissions	auth	register	t		2	\N	\N
130	users-permissions	user	destroy	f		2	\N	\N
140	users-permissions	user	update	f		2	\N	\N
150	users-permissions	userspermissions	getpermissions	f		2	\N	\N
160	users-permissions	userspermissions	getroutes	f		2	\N	\N
170	users-permissions	userspermissions	updateproviders	f		2	\N	\N
239	application	house-features	findone	t		1	\N	\N
189	application	houses	count	f		2	\N	\N
201	documentation	documentation	deletedoc	f		2	\N	\N
211	documentation	documentation	regeneratedoc	f		1	\N	\N
215	entity-relationship-chart	entity-relationship-chart	geterdata	f		1	\N	\N
199	application	houses	update	t		1	\N	\N
306	application	house-reviews	findone	f		2	\N	\N
293	application	house-utilities	findone	t		1	\N	\N
252	application	house-types	create	f		2	\N	\N
282	application	house-amenities	findone	f		2	\N	\N
115	users-permissions	auth	emailconfirmation	f		1	\N	\N
124	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
142	users-permissions	userspermissions	createrole	f		2	\N	\N
152	users-permissions	userspermissions	getpolicies	f		2	\N	\N
165	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
133	users-permissions	user	find	t		1	\N	\N
240	application	house-features	findone	f		2	\N	\N
294	application	house-utilities	findone	f		2	\N	\N
253	application	house-types	delete	t		1	\N	\N
202	documentation	documentation	deletedoc	f		1	\N	\N
212	documentation	documentation	regeneratedoc	f		2	\N	\N
216	entity-relationship-chart	entity-relationship-chart	index	f		1	\N	\N
191	application	houses	create	t		1	\N	\N
319	application	roommate-preferences	update	t		1	\N	\N
309	application	roommate-preferences	count	t		1	\N	\N
101	upload	upload	findone	t		1	\N	\N
119	users-permissions	auth	register	f		1	\N	\N
129	users-permissions	user	destroy	f		1	\N	\N
138	users-permissions	user	me	t		2	\N	\N
148	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
157	users-permissions	userspermissions	getroles	f		1	\N	\N
167	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
254	application	house-types	delete	f		2	\N	\N
203	documentation	documentation	getinfos	f		1	\N	\N
213	documentation	documentation	updatesettings	f		1	\N	\N
217	entity-relationship-chart	entity-relationship-chart	index	f		2	\N	\N
190	application	houses	count	t		1	\N	\N
310	application	roommate-preferences	count	f		2	\N	\N
284	application	house-amenities	update	f		2	\N	\N
320	application	roommate-preferences	update	f		2	\N	\N
307	application	house-reviews	update	t		1	\N	\N
297	application	house-reviews	count	t		1	\N	\N
285	application	house-utilities	count	t		1	\N	\N
273	application	house-amenities	count	t		1	\N	\N
109	upload	upload	upload	t		1	\N	\N
\.


--
-- TOC entry 3384 (class 0 OID 17640)
-- Dependencies: 280
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
\.


--
-- TOC entry 3386 (class 0 OID 17648)
-- Dependencies: 282
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
1	wakadaisho	paulwahome9@gmail.com	local	$2a$10$Q.djid4wofDq9RFAYV3.aORic9Bkg57pC8Dlm9E5P.KXOxJebVxKC	\N	\N	t	f	1	1	1	2021-08-07 08:57:38.876+00	2021-08-07 09:19:26.37+00
5	wakadaisho3	testemail2@gmail.com	local	$2a$10$Im1nldLYULaTID/aceEUOubwyiJny7tVOvNLuoPh5uInHYp2UR5.y	\N	639cdb06d8636f454284268df4ede9e43bd585a8	t	t	1	\N	1	2021-08-07 13:18:53.605+00	2021-08-07 13:20:34.181+00
\.


--
-- TOC entry 3388 (class 0 OID 17658)
-- Dependencies: 284
-- Data for Name: utilities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.utilities (id, name, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 241
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_store_id_seq', 45, true);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 243
-- Name: house_amenities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_amenities_id_seq', 1, false);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 246
-- Name: house_features_houses__houses_house_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_features_houses__houses_house_features_id_seq', 42, true);


--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 247
-- Name: house_features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_features_id_seq', 3, true);


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 249
-- Name: house_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_reviews_id_seq', 1, false);


--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 251
-- Name: house_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_types_id_seq', 2, true);


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 253
-- Name: house_utilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.house_utilities_id_seq', 1, false);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 255
-- Name: houses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.houses_id_seq', 26, true);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 257
-- Name: houses_types__types_houses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.houses_types__types_houses_id_seq', 1, false);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 259
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 261
-- Name: roommate_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roommate_preferences_id_seq', 1, false);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 263
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 265
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 695, true);


--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 267
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 269
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 271
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 273
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.types_id_seq', 3, true);


--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 275
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 161, true);


--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 277
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 71, true);


--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 279
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 320, true);


--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 281
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 283
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 5, true);


--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 285
-- Name: utilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.utilities_id_seq', 1, false);


--
-- TOC entry 3150 (class 2606 OID 17735)
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 17737)
-- Name: house_amenities house_amenities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_amenities
    ADD CONSTRAINT house_amenities_pkey PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 17739)
-- Name: house_features_houses__houses_house_features house_features_houses__houses_house_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_features_houses__houses_house_features
    ADD CONSTRAINT house_features_houses__houses_house_features_pkey PRIMARY KEY (id);


--
-- TOC entry 3154 (class 2606 OID 17741)
-- Name: house_features house_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_features
    ADD CONSTRAINT house_features_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 17743)
-- Name: house_reviews house_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_reviews
    ADD CONSTRAINT house_reviews_pkey PRIMARY KEY (id);


--
-- TOC entry 3160 (class 2606 OID 17745)
-- Name: house_types house_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_types
    ADD CONSTRAINT house_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3162 (class 2606 OID 17747)
-- Name: house_utilities house_utilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.house_utilities
    ADD CONSTRAINT house_utilities_pkey PRIMARY KEY (id);


--
-- TOC entry 3164 (class 2606 OID 17749)
-- Name: houses houses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.houses
    ADD CONSTRAINT houses_pkey PRIMARY KEY (id);


--
-- TOC entry 3166 (class 2606 OID 17751)
-- Name: houses_types__types_houses houses_types__types_houses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.houses_types__types_houses
    ADD CONSTRAINT houses_types__types_houses_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 17753)
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- TOC entry 3170 (class 2606 OID 17755)
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 17757)
-- Name: roommate_preferences roommate_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roommate_preferences
    ADD CONSTRAINT roommate_preferences_pkey PRIMARY KEY (id);


--
-- TOC entry 3174 (class 2606 OID 17759)
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- TOC entry 3176 (class 2606 OID 17761)
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 17763)
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 17765)
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- TOC entry 3182 (class 2606 OID 17767)
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- TOC entry 3184 (class 2606 OID 17769)
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 17771)
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 17773)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 17775)
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 17777)
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 17779)
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 17781)
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 17783)
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 17785)
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- TOC entry 3202 (class 2606 OID 17787)
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 17789)
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- TOC entry 3206 (class 2606 OID 17791)
-- Name: utilities utilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.utilities
    ADD CONSTRAINT utilities_pkey PRIMARY KEY (id);


-- Completed on 2021-10-13 15:00:03 EAT

--
-- PostgreSQL database dump complete
--

