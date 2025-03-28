PGDMP  $    2        
        }            Wixzi    17.2    17.2 �   F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            I           1262    16388    Wixzi    DATABASE     {   CREATE DATABASE "Wixzi" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Wixzi";
                     postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     karen    false            �            1259    16545    admin_permissions    TABLE     �  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.admin_permissions;
       public         heap r       karen    false    5            �            1259    16544    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public               karen    false    5    244            J           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public               karen    false    243                       1259    16764    admin_permissions_role_lnk    TABLE     �   CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 .   DROP TABLE public.admin_permissions_role_lnk;
       public         heap r       karen    false    5                       1259    16763 !   admin_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.admin_permissions_role_lnk_id_seq;
       public               karen    false    282    5            K           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;
          public               karen    false    281            �            1259    16569    admin_roles    TABLE     �  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_roles;
       public         heap r       karen    false    5            �            1259    16568    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public               karen    false    5    248            L           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public               karen    false    247            �            1259    16557    admin_users    TABLE     �  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.admin_users;
       public         heap r       karen    false    5            �            1259    16556    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public               karen    false    246    5            M           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public               karen    false    245                       1259    16776    admin_users_roles_lnk    TABLE     �   CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);
 )   DROP TABLE public.admin_users_roles_lnk;
       public         heap r       karen    false    5                       1259    16775    admin_users_roles_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.admin_users_roles_lnk_id_seq;
       public               karen    false    5    284            N           0    0    admin_users_roles_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;
          public               karen    false    283            �            1259    16415    files    TABLE       CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.files;
       public         heap r       karen    false    5            
           1259    16669    files_folder_lnk    TABLE     �   CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);
 $   DROP TABLE public.files_folder_lnk;
       public         heap r       karen    false    5            	           1259    16668    files_folder_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.files_folder_lnk_id_seq;
       public               karen    false    266    5            O           0    0    files_folder_lnk_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;
          public               karen    false    265            �            1259    16414    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public               karen    false    5    224            P           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public               karen    false    223                       1259    16657    files_related_mph    TABLE     �   CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 %   DROP TABLE public.files_related_mph;
       public         heap r       karen    false    5                       1259    16656    files_related_mph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.files_related_mph_id_seq;
       public               karen    false    264    5            Q           0    0    files_related_mph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;
          public               karen    false    263            �            1259    16449    i18n_locale    TABLE     �  CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.i18n_locale;
       public         heap r       karen    false    5            �            1259    16448    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public               karen    false    228    5            R           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public               karen    false    227            �            1259    16593    strapi_api_token_permissions    TABLE     �  CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap r       karen    false    5            �            1259    16592 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public               karen    false    5    252            S           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public               karen    false    251                       1259    16789 &   strapi_api_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);
 :   DROP TABLE public.strapi_api_token_permissions_token_lnk;
       public         heap r       karen    false    5                       1259    16788 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq;
       public               karen    false    286    5            T           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;
          public               karen    false    285            �            1259    16581    strapi_api_tokens    TABLE     Y  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap r       karen    false    5            �            1259    16580    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public               karen    false    250    5            U           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public               karen    false    249                       1259    16629    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap r       karen    false    5                       1259    16628 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public               karen    false    258    5            V           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public               karen    false    257            �            1259    16406    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap r       karen    false    5            �            1259    16405    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public               karen    false    5    222            W           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public               karen    false    221                       1259    16647    strapi_history_versions    TABLE     ]  CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);
 +   DROP TABLE public.strapi_history_versions;
       public         heap r       karen    false    5                       1259    16646    strapi_history_versions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_history_versions_id_seq;
       public               karen    false    262    5            X           0    0    strapi_history_versions_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;
          public               karen    false    261            �            1259    16392    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap r       karen    false    5            �            1259    16391    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public               karen    false    5    218            Y           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public               karen    false    217            �            1259    16399    strapi_migrations_internal    TABLE     �   CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 .   DROP TABLE public.strapi_migrations_internal;
       public         heap r       karen    false    5            �            1259    16398 !   strapi_migrations_internal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_migrations_internal_id_seq;
       public               karen    false    220    5            Z           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;
          public               karen    false    219            �            1259    16473    strapi_release_actions    TABLE     �  CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_release_actions;
       public         heap r       karen    false    5            �            1259    16472    strapi_release_actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_release_actions_id_seq;
       public               karen    false    232    5            [           0    0    strapi_release_actions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;
          public               karen    false    231                       1259    16693 "   strapi_release_actions_release_lnk    TABLE     �   CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);
 6   DROP TABLE public.strapi_release_actions_release_lnk;
       public         heap r       karen    false    5                       1259    16692 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.strapi_release_actions_release_lnk_id_seq;
       public               karen    false    270    5            \           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;
          public               karen    false    269            �            1259    16461    strapi_releases    TABLE       CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 #   DROP TABLE public.strapi_releases;
       public         heap r       karen    false    5            �            1259    16460    strapi_releases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_releases_id_seq;
       public               karen    false    230    5            ]           0    0    strapi_releases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;
          public               karen    false    229                        1259    16617 !   strapi_transfer_token_permissions    TABLE     �  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap r       karen    false    5            �            1259    16616 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public               karen    false    256    5            ^           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public               karen    false    255                        1259    16801 +   strapi_transfer_token_permissions_token_lnk    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);
 ?   DROP TABLE public.strapi_transfer_token_permissions_token_lnk;
       public         heap r       karen    false    5                       1259    16800 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq;
       public               karen    false    288    5            _           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;
          public               karen    false    287            �            1259    16605    strapi_transfer_tokens    TABLE     =  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap r       karen    false    5            �            1259    16604    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public               karen    false    254    5            `           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public               karen    false    253                       1259    16638    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap r       karen    false    5                       1259    16637    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public               karen    false    260    5            a           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public               karen    false    259            �            1259    16485    strapi_workflows    TABLE     �  CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 $   DROP TABLE public.strapi_workflows;
       public         heap r       karen    false    5            �            1259    16484    strapi_workflows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.strapi_workflows_id_seq;
       public               karen    false    234    5            b           0    0    strapi_workflows_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;
          public               karen    false    233                       1259    16705 .   strapi_workflows_stage_required_to_publish_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);
 B   DROP TABLE public.strapi_workflows_stage_required_to_publish_lnk;
       public         heap r       karen    false    5                       1259    16704 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq;
       public               karen    false    272    5            c           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;
          public               karen    false    271            �            1259    16497    strapi_workflows_stages    TABLE     �  CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 +   DROP TABLE public.strapi_workflows_stages;
       public         heap r       karen    false    5            �            1259    16496    strapi_workflows_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.strapi_workflows_stages_id_seq;
       public               karen    false    236    5            d           0    0    strapi_workflows_stages_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;
          public               karen    false    235                       1259    16728 '   strapi_workflows_stages_permissions_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);
 ;   DROP TABLE public.strapi_workflows_stages_permissions_lnk;
       public         heap r       karen    false    5                       1259    16727 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq;
       public               karen    false    5    276            e           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;
          public               karen    false    275                       1259    16716 $   strapi_workflows_stages_workflow_lnk    TABLE     �   CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);
 8   DROP TABLE public.strapi_workflows_stages_workflow_lnk;
       public         heap r       karen    false    5                       1259    16715 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq;
       public               karen    false    274    5            f           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;
          public               karen    false    273            �            1259    16509    up_permissions    TABLE     s  CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.up_permissions;
       public         heap r       karen    false    5            �            1259    16508    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public               karen    false    238    5            g           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public               karen    false    237                       1259    16740    up_permissions_role_lnk    TABLE     �   CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);
 +   DROP TABLE public.up_permissions_role_lnk;
       public         heap r       karen    false    5                       1259    16739    up_permissions_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.up_permissions_role_lnk_id_seq;
       public               karen    false    278    5            h           0    0    up_permissions_role_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;
          public               karen    false    277            �            1259    16521    up_roles    TABLE     �  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_roles;
       public         heap r       karen    false    5            �            1259    16520    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public               karen    false    5    240            i           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public               karen    false    239            �            1259    16533    up_users    TABLE     g  CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.up_users;
       public         heap r       karen    false    5            �            1259    16532    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public               karen    false    5    242            j           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public               karen    false    241                       1259    16752    up_users_role_lnk    TABLE     �   CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);
 %   DROP TABLE public.up_users_role_lnk;
       public         heap r       karen    false    5                       1259    16751    up_users_role_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.up_users_role_lnk_id_seq;
       public               karen    false    280    5            k           0    0    up_users_role_lnk_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;
          public               karen    false    279            �            1259    16433    upload_folders    TABLE     �  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 "   DROP TABLE public.upload_folders;
       public         heap r       karen    false    5            �            1259    16432    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public               karen    false    5    226            l           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public               karen    false    225                       1259    16681    upload_folders_parent_lnk    TABLE     �   CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);
 -   DROP TABLE public.upload_folders_parent_lnk;
       public         heap r       karen    false    5                       1259    16680     upload_folders_parent_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.upload_folders_parent_lnk_id_seq;
       public               karen    false    5    268            m           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;
          public               karen    false    267            2           1259    17378    wx_commentmetas    TABLE     �  CREATE TABLE public.wx_commentmetas (
    id integer NOT NULL,
    document_id character varying(255),
    meta_id bigint,
    comment_id bigint,
    meta_key character varying(255),
    meta_value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 #   DROP TABLE public.wx_commentmetas;
       public         heap r       karen    false    5            1           1259    17377    wx_commentmetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_commentmetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.wx_commentmetas_id_seq;
       public               karen    false    5    306            n           0    0    wx_commentmetas_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.wx_commentmetas_id_seq OWNED BY public.wx_commentmetas.id;
          public               karen    false    305            H           1259    17641    wx_commentmetas_wx_comment_lnk    TABLE     �   CREATE TABLE public.wx_commentmetas_wx_comment_lnk (
    id integer NOT NULL,
    wx_commentmeta_id integer,
    wx_comment_id integer,
    wx_commentmeta_ord double precision
);
 2   DROP TABLE public.wx_commentmetas_wx_comment_lnk;
       public         heap r       karen    false    5            G           1259    17640 %   wx_commentmetas_wx_comment_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_commentmetas_wx_comment_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.wx_commentmetas_wx_comment_lnk_id_seq;
       public               karen    false    5    328            o           0    0 %   wx_commentmetas_wx_comment_lnk_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.wx_commentmetas_wx_comment_lnk_id_seq OWNED BY public.wx_commentmetas_wx_comment_lnk.id;
          public               karen    false    327            4           1259    17403    wx_comments    TABLE     �  CREATE TABLE public.wx_comments (
    id integer NOT NULL,
    document_id character varying(255),
    comment_id bigint,
    comment_post_id bigint,
    comment_author character varying(255),
    comment_author_email character varying(255),
    comment_date timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    comment_content character varying(255),
    comment_like integer,
    comment_dislike integer,
    comment_approved character varying(255),
    comment_parent bigint,
    user_id bigint
);
    DROP TABLE public.wx_comments;
       public         heap r       karen    false    5            3           1259    17402    wx_comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.wx_comments_id_seq;
       public               karen    false    308    5            p           0    0    wx_comments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.wx_comments_id_seq OWNED BY public.wx_comments.id;
          public               karen    false    307            8           1259    17454    wx_comments_user_lnk    TABLE     �   CREATE TABLE public.wx_comments_user_lnk (
    id integer NOT NULL,
    wx_comment_id integer,
    user_id integer,
    wx_comment_ord double precision
);
 (   DROP TABLE public.wx_comments_user_lnk;
       public         heap r       karen    false    5            7           1259    17453    wx_comments_user_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_comments_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.wx_comments_user_lnk_id_seq;
       public               karen    false    312    5            q           0    0    wx_comments_user_lnk_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.wx_comments_user_lnk_id_seq OWNED BY public.wx_comments_user_lnk.id;
          public               karen    false    311            <           1259    17501    wx_comments_wx_post_lnk    TABLE     �   CREATE TABLE public.wx_comments_wx_post_lnk (
    id integer NOT NULL,
    wx_comment_id integer,
    wx_post_id integer,
    wx_comment_ord double precision
);
 +   DROP TABLE public.wx_comments_wx_post_lnk;
       public         heap r       karen    false    5            ;           1259    17500    wx_comments_wx_post_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_comments_wx_post_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.wx_comments_wx_post_lnk_id_seq;
       public               karen    false    5    316            r           0    0    wx_comments_wx_post_lnk_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.wx_comments_wx_post_lnk_id_seq OWNED BY public.wx_comments_wx_post_lnk.id;
          public               karen    false    315            0           1259    17353 
   wx_options    TABLE     �  CREATE TABLE public.wx_options (
    id integer NOT NULL,
    document_id character varying(255),
    option_id bigint,
    option_key character varying(255),
    option_value text,
    autoload character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.wx_options;
       public         heap r       karen    false    5            /           1259    17352    wx_options_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.wx_options_id_seq;
       public               karen    false    5    304            s           0    0    wx_options_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.wx_options_id_seq OWNED BY public.wx_options.id;
          public               karen    false    303            &           1259    17230    wx_postmetas    TABLE     �  CREATE TABLE public.wx_postmetas (
    id integer NOT NULL,
    document_id character varying(255),
    meta_id bigint,
    post_id bigint,
    meta_key text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    meta_value character varying(255)
);
     DROP TABLE public.wx_postmetas;
       public         heap r       karen    false    5            %           1259    17229    wx_postmetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_postmetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.wx_postmetas_id_seq;
       public               karen    false    5    294            t           0    0    wx_postmetas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.wx_postmetas_id_seq OWNED BY public.wx_postmetas.id;
          public               karen    false    293            >           1259    17513    wx_postmetas_wx_post_lnk    TABLE     �   CREATE TABLE public.wx_postmetas_wx_post_lnk (
    id integer NOT NULL,
    wx_postmeta_id integer,
    wx_post_id integer,
    wx_postmeta_ord double precision
);
 ,   DROP TABLE public.wx_postmetas_wx_post_lnk;
       public         heap r       karen    false    5            =           1259    17512    wx_postmetas_wx_post_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_postmetas_wx_post_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wx_postmetas_wx_post_lnk_id_seq;
       public               karen    false    318    5            u           0    0    wx_postmetas_wx_post_lnk_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wx_postmetas_wx_post_lnk_id_seq OWNED BY public.wx_postmetas_wx_post_lnk.id;
          public               karen    false    317            $           1259    17180    wx_posts    TABLE     +  CREATE TABLE public.wx_posts (
    id integer NOT NULL,
    document_id character varying(255),
    wx_id bigint,
    post_author bigint,
    post_date timestamp(6) without time zone,
    post_title character varying(255),
    post_content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    locale character varying(255),
    post_excerpt character varying(255),
    post_status character varying(255),
    post_name character varying(255),
    post_modified timestamp(6) without time zone,
    post_type character varying(255),
    post_parent bigint,
    comment_status character varying(255),
    guid character varying(255),
    menu_order integer,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.wx_posts;
       public         heap r       karen    false    5            #           1259    17179    wx_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.wx_posts_id_seq;
       public               karen    false    292    5            v           0    0    wx_posts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.wx_posts_id_seq OWNED BY public.wx_posts.id;
          public               karen    false    291            :           1259    17466    wx_posts_user_lnk    TABLE     �   CREATE TABLE public.wx_posts_user_lnk (
    id integer NOT NULL,
    wx_post_id integer,
    user_id integer,
    wx_post_ord double precision
);
 %   DROP TABLE public.wx_posts_user_lnk;
       public         heap r       karen    false    5            9           1259    17465    wx_posts_user_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_posts_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.wx_posts_user_lnk_id_seq;
       public               karen    false    314    5            w           0    0    wx_posts_user_lnk_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.wx_posts_user_lnk_id_seq OWNED BY public.wx_posts_user_lnk.id;
          public               karen    false    313            (           1259    17257    wx_term_relationships    TABLE     �  CREATE TABLE public.wx_term_relationships (
    id integer NOT NULL,
    document_id character varying(255),
    object_id bigint,
    term_taxonomi_id bigint,
    term_order integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 )   DROP TABLE public.wx_term_relationships;
       public         heap r       karen    false    5            '           1259    17256    wx_term_relationships_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_term_relationships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.wx_term_relationships_id_seq;
       public               karen    false    5    296            x           0    0    wx_term_relationships_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.wx_term_relationships_id_seq OWNED BY public.wx_term_relationships.id;
          public               karen    false    295            @           1259    17547 !   wx_term_relationships_wx_post_lnk    TABLE     �   CREATE TABLE public.wx_term_relationships_wx_post_lnk (
    id integer NOT NULL,
    wx_term_relationship_id integer,
    wx_post_id integer,
    wx_term_relationship_ord double precision
);
 5   DROP TABLE public.wx_term_relationships_wx_post_lnk;
       public         heap r       karen    false    5            ?           1259    17546 (   wx_term_relationships_wx_post_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_term_relationships_wx_post_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.wx_term_relationships_wx_post_lnk_id_seq;
       public               karen    false    5    320            y           0    0 (   wx_term_relationships_wx_post_lnk_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.wx_term_relationships_wx_post_lnk_id_seq OWNED BY public.wx_term_relationships_wx_post_lnk.id;
          public               karen    false    319            F           1259    17617 *   wx_term_relationships_wx_term_taxonomy_lnk    TABLE     �   CREATE TABLE public.wx_term_relationships_wx_term_taxonomy_lnk (
    id integer NOT NULL,
    wx_term_relationship_id integer,
    wx_term_taxonomy_id integer,
    wx_term_relationship_ord double precision
);
 >   DROP TABLE public.wx_term_relationships_wx_term_taxonomy_lnk;
       public         heap r       karen    false    5            E           1259    17616 1   wx_term_relationships_wx_term_taxonomy_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_term_relationships_wx_term_taxonomy_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.wx_term_relationships_wx_term_taxonomy_lnk_id_seq;
       public               karen    false    326    5            z           0    0 1   wx_term_relationships_wx_term_taxonomy_lnk_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.wx_term_relationships_wx_term_taxonomy_lnk_id_seq OWNED BY public.wx_term_relationships_wx_term_taxonomy_lnk.id;
          public               karen    false    325            *           1259    17281    wx_term_taxonomies    TABLE     �  CREATE TABLE public.wx_term_taxonomies (
    id integer NOT NULL,
    document_id character varying(255),
    term_taxonomy_id bigint,
    term_id bigint,
    taxonomy character varying(255),
    description character varying(255),
    parent bigint,
    count bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
 &   DROP TABLE public.wx_term_taxonomies;
       public         heap r       karen    false    5            )           1259    17280    wx_term_taxonomies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_term_taxonomies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.wx_term_taxonomies_id_seq;
       public               karen    false    298    5            {           0    0    wx_term_taxonomies_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.wx_term_taxonomies_id_seq OWNED BY public.wx_term_taxonomies.id;
          public               karen    false    297            B           1259    17571    wx_term_taxonomies_wx_term_lnk    TABLE     �   CREATE TABLE public.wx_term_taxonomies_wx_term_lnk (
    id integer NOT NULL,
    wx_term_taxonomy_id integer,
    wx_term_id integer,
    wx_term_taxonomy_ord double precision
);
 2   DROP TABLE public.wx_term_taxonomies_wx_term_lnk;
       public         heap r       karen    false    5            A           1259    17570 %   wx_term_taxonomies_wx_term_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_term_taxonomies_wx_term_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.wx_term_taxonomies_wx_term_lnk_id_seq;
       public               karen    false    322    5            |           0    0 %   wx_term_taxonomies_wx_term_lnk_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.wx_term_taxonomies_wx_term_lnk_id_seq OWNED BY public.wx_term_taxonomies_wx_term_lnk.id;
          public               karen    false    321            .           1259    17329    wx_termmetas    TABLE     �  CREATE TABLE public.wx_termmetas (
    id integer NOT NULL,
    document_id character varying(255),
    meta_id bigint,
    term_id bigint,
    meta_key character varying(255),
    meta_value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
     DROP TABLE public.wx_termmetas;
       public         heap r       karen    false    5            -           1259    17328    wx_termmetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_termmetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.wx_termmetas_id_seq;
       public               karen    false    5    302            }           0    0    wx_termmetas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.wx_termmetas_id_seq OWNED BY public.wx_termmetas.id;
          public               karen    false    301            D           1259    17583    wx_termmetas_wx_term_lnk    TABLE     �   CREATE TABLE public.wx_termmetas_wx_term_lnk (
    id integer NOT NULL,
    wx_termmeta_id integer,
    wx_term_id integer,
    wx_termmeta_ord double precision
);
 ,   DROP TABLE public.wx_termmetas_wx_term_lnk;
       public         heap r       karen    false    5            C           1259    17582    wx_termmetas_wx_term_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_termmetas_wx_term_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.wx_termmetas_wx_term_lnk_id_seq;
       public               karen    false    324    5            ~           0    0    wx_termmetas_wx_term_lnk_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.wx_termmetas_wx_term_lnk_id_seq OWNED BY public.wx_termmetas_wx_term_lnk.id;
          public               karen    false    323            ,           1259    17305    wx_terms    TABLE     �  CREATE TABLE public.wx_terms (
    id integer NOT NULL,
    document_id character varying(255),
    term_id bigint,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.wx_terms;
       public         heap r       karen    false    5            +           1259    17304    wx_terms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_terms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.wx_terms_id_seq;
       public               karen    false    5    300                       0    0    wx_terms_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.wx_terms_id_seq OWNED BY public.wx_terms.id;
          public               karen    false    299            "           1259    17143    wx_usermetas    TABLE     �  CREATE TABLE public.wx_usermetas (
    id integer NOT NULL,
    document_id character varying(255),
    umeta_id bigint,
    user_id bigint,
    meta_key character varying(255),
    meta_value character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
     DROP TABLE public.wx_usermetas;
       public         heap r       karen    false    5            !           1259    17142    wx_usermetas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_usermetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.wx_usermetas_id_seq;
       public               karen    false    5    290            �           0    0    wx_usermetas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.wx_usermetas_id_seq OWNED BY public.wx_usermetas.id;
          public               karen    false    289            6           1259    17429    wx_usermetas_user_lnk    TABLE     �   CREATE TABLE public.wx_usermetas_user_lnk (
    id integer NOT NULL,
    wx_usermeta_id integer,
    user_id integer,
    wx_usermeta_ord double precision
);
 )   DROP TABLE public.wx_usermetas_user_lnk;
       public         heap r       karen    false    5            5           1259    17428    wx_usermetas_user_lnk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wx_usermetas_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.wx_usermetas_user_lnk_id_seq;
       public               karen    false    5    310            �           0    0    wx_usermetas_user_lnk_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.wx_usermetas_user_lnk_id_seq OWNED BY public.wx_usermetas_user_lnk.id;
          public               karen    false    309            w           2604    16548    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    243    244    244            �           2604    16767    admin_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);
 L   ALTER TABLE public.admin_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    281    282    282            y           2604    16572    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public               karen    false    247    248    248            x           2604    16560    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public               karen    false    245    246    246            �           2604    16779    admin_users_roles_lnk id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);
 G   ALTER TABLE public.admin_users_roles_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    284    283    284            m           2604    16418    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public               karen    false    223    224    224            �           2604    16672    files_folder_lnk id    DEFAULT     z   ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);
 B   ALTER TABLE public.files_folder_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    266    265    266            �           2604    16660    files_related_mph id    DEFAULT     |   ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);
 C   ALTER TABLE public.files_related_mph ALTER COLUMN id DROP DEFAULT;
       public               karen    false    263    264    264            o           2604    16452    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public               karen    false    228    227    228            {           2604    16596    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    252    251    252            �           2604    16792 )   strapi_api_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);
 X   ALTER TABLE public.strapi_api_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    286    285    286            z           2604    16584    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public               karen    false    249    250    250            ~           2604    16632    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public               karen    false    257    258    258            l           2604    16409    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public               karen    false    222    221    222            �           2604    16650    strapi_history_versions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);
 I   ALTER TABLE public.strapi_history_versions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    261    262    262            j           2604    16395    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public               karen    false    218    217    218            k           2604    16402    strapi_migrations_internal id    DEFAULT     �   ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);
 L   ALTER TABLE public.strapi_migrations_internal ALTER COLUMN id DROP DEFAULT;
       public               karen    false    220    219    220            q           2604    16476    strapi_release_actions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);
 H   ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    232    231    232            �           2604    16696 %   strapi_release_actions_release_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);
 T   ALTER TABLE public.strapi_release_actions_release_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    270    269    270            p           2604    16464    strapi_releases id    DEFAULT     x   ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);
 A   ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
       public               karen    false    230    229    230            }           2604    16620 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    256    255    256            �           2604    16804 .   strapi_transfer_token_permissions_token_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);
 ]   ALTER TABLE public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    288    287    288            |           2604    16608    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public               karen    false    253    254    254                       2604    16641    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public               karen    false    259    260    260            r           2604    16488    strapi_workflows id    DEFAULT     z   ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);
 B   ALTER TABLE public.strapi_workflows ALTER COLUMN id DROP DEFAULT;
       public               karen    false    233    234    234            �           2604    16708 1   strapi_workflows_stage_required_to_publish_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);
 `   ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    272    271    272            s           2604    16500    strapi_workflows_stages id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);
 I   ALTER TABLE public.strapi_workflows_stages ALTER COLUMN id DROP DEFAULT;
       public               karen    false    236    235    236            �           2604    16731 *   strapi_workflows_stages_permissions_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);
 Y   ALTER TABLE public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    276    275    276            �           2604    16719 '   strapi_workflows_stages_workflow_lnk id    DEFAULT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);
 V   ALTER TABLE public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    273    274    274            t           2604    16512    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public               karen    false    238    237    238            �           2604    16743    up_permissions_role_lnk id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);
 I   ALTER TABLE public.up_permissions_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    278    277    278            u           2604    16524    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public               karen    false    239    240    240            v           2604    16536    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public               karen    false    242    241    242            �           2604    16755    up_users_role_lnk id    DEFAULT     |   ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);
 C   ALTER TABLE public.up_users_role_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    280    279    280            n           2604    16436    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public               karen    false    225    226    226            �           2604    16684    upload_folders_parent_lnk id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);
 K   ALTER TABLE public.upload_folders_parent_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    268    267    268            �           2604    17381    wx_commentmetas id    DEFAULT     x   ALTER TABLE ONLY public.wx_commentmetas ALTER COLUMN id SET DEFAULT nextval('public.wx_commentmetas_id_seq'::regclass);
 A   ALTER TABLE public.wx_commentmetas ALTER COLUMN id DROP DEFAULT;
       public               karen    false    305    306    306            �           2604    17644 !   wx_commentmetas_wx_comment_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_commentmetas_wx_comment_lnk_id_seq'::regclass);
 P   ALTER TABLE public.wx_commentmetas_wx_comment_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    328    327    328            �           2604    17406    wx_comments id    DEFAULT     p   ALTER TABLE ONLY public.wx_comments ALTER COLUMN id SET DEFAULT nextval('public.wx_comments_id_seq'::regclass);
 =   ALTER TABLE public.wx_comments ALTER COLUMN id DROP DEFAULT;
       public               karen    false    307    308    308            �           2604    17457    wx_comments_user_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_comments_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_comments_user_lnk_id_seq'::regclass);
 F   ALTER TABLE public.wx_comments_user_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    312    311    312            �           2604    17504    wx_comments_wx_post_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_comments_wx_post_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_comments_wx_post_lnk_id_seq'::regclass);
 I   ALTER TABLE public.wx_comments_wx_post_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    316    315    316            �           2604    17356    wx_options id    DEFAULT     n   ALTER TABLE ONLY public.wx_options ALTER COLUMN id SET DEFAULT nextval('public.wx_options_id_seq'::regclass);
 <   ALTER TABLE public.wx_options ALTER COLUMN id DROP DEFAULT;
       public               karen    false    304    303    304            �           2604    17233    wx_postmetas id    DEFAULT     r   ALTER TABLE ONLY public.wx_postmetas ALTER COLUMN id SET DEFAULT nextval('public.wx_postmetas_id_seq'::regclass);
 >   ALTER TABLE public.wx_postmetas ALTER COLUMN id DROP DEFAULT;
       public               karen    false    293    294    294            �           2604    17516    wx_postmetas_wx_post_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_postmetas_wx_post_lnk_id_seq'::regclass);
 J   ALTER TABLE public.wx_postmetas_wx_post_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    318    317    318            �           2604    17183    wx_posts id    DEFAULT     j   ALTER TABLE ONLY public.wx_posts ALTER COLUMN id SET DEFAULT nextval('public.wx_posts_id_seq'::regclass);
 :   ALTER TABLE public.wx_posts ALTER COLUMN id DROP DEFAULT;
       public               karen    false    291    292    292            �           2604    17469    wx_posts_user_lnk id    DEFAULT     |   ALTER TABLE ONLY public.wx_posts_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_posts_user_lnk_id_seq'::regclass);
 C   ALTER TABLE public.wx_posts_user_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    313    314    314            �           2604    17260    wx_term_relationships id    DEFAULT     �   ALTER TABLE ONLY public.wx_term_relationships ALTER COLUMN id SET DEFAULT nextval('public.wx_term_relationships_id_seq'::regclass);
 G   ALTER TABLE public.wx_term_relationships ALTER COLUMN id DROP DEFAULT;
       public               karen    false    295    296    296            �           2604    17550 $   wx_term_relationships_wx_post_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_term_relationships_wx_post_lnk_id_seq'::regclass);
 S   ALTER TABLE public.wx_term_relationships_wx_post_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    319    320    320            �           2604    17620 -   wx_term_relationships_wx_term_taxonomy_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_term_relationships_wx_term_taxonomy_lnk_id_seq'::regclass);
 \   ALTER TABLE public.wx_term_relationships_wx_term_taxonomy_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    325    326    326            �           2604    17284    wx_term_taxonomies id    DEFAULT     ~   ALTER TABLE ONLY public.wx_term_taxonomies ALTER COLUMN id SET DEFAULT nextval('public.wx_term_taxonomies_id_seq'::regclass);
 D   ALTER TABLE public.wx_term_taxonomies ALTER COLUMN id DROP DEFAULT;
       public               karen    false    297    298    298            �           2604    17574 !   wx_term_taxonomies_wx_term_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_term_taxonomies_wx_term_lnk_id_seq'::regclass);
 P   ALTER TABLE public.wx_term_taxonomies_wx_term_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    321    322    322            �           2604    17332    wx_termmetas id    DEFAULT     r   ALTER TABLE ONLY public.wx_termmetas ALTER COLUMN id SET DEFAULT nextval('public.wx_termmetas_id_seq'::regclass);
 >   ALTER TABLE public.wx_termmetas ALTER COLUMN id DROP DEFAULT;
       public               karen    false    301    302    302            �           2604    17586    wx_termmetas_wx_term_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_termmetas_wx_term_lnk_id_seq'::regclass);
 J   ALTER TABLE public.wx_termmetas_wx_term_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    323    324    324            �           2604    17308    wx_terms id    DEFAULT     j   ALTER TABLE ONLY public.wx_terms ALTER COLUMN id SET DEFAULT nextval('public.wx_terms_id_seq'::regclass);
 :   ALTER TABLE public.wx_terms ALTER COLUMN id DROP DEFAULT;
       public               karen    false    299    300    300            �           2604    17146    wx_usermetas id    DEFAULT     r   ALTER TABLE ONLY public.wx_usermetas ALTER COLUMN id SET DEFAULT nextval('public.wx_usermetas_id_seq'::regclass);
 >   ALTER TABLE public.wx_usermetas ALTER COLUMN id DROP DEFAULT;
       public               karen    false    290    289    290            �           2604    17432    wx_usermetas_user_lnk id    DEFAULT     �   ALTER TABLE ONLY public.wx_usermetas_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.wx_usermetas_user_lnk_id_seq'::regclass);
 G   ALTER TABLE public.wx_usermetas_user_lnk ALTER COLUMN id DROP DEFAULT;
       public               karen    false    309    310    310            �          0    16545    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    244   |�                0    16764    admin_permissions_role_lnk 
   TABLE DATA           `   COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               karen    false    282   ��      �          0    16569    admin_roles 
   TABLE DATA           �   COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    248   A�      �          0    16557    admin_users 
   TABLE DATA             COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    246   u�                0    16776    admin_users_roles_lnk 
   TABLE DATA           Y   COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
    public               karen    false    284   ;�      �          0    16415    files 
   TABLE DATA             COPY public.files (id, document_id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    224   d�                0    16669    files_folder_lnk 
   TABLE DATA           L   COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
    public               karen    false    266   ��                0    16657    files_related_mph 
   TABLE DATA           b   COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public               karen    false    264   ��      �          0    16449    i18n_locale 
   TABLE DATA           �   COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    228   ��      �          0    16593    strapi_api_token_permissions 
   TABLE DATA           �   COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    252   "�                0    16789 &   strapi_api_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
    public               karen    false    286   ?�      �          0    16581    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, document_id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    250   \�      �          0    16629    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public               karen    false    258   y�      �          0    16406    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public               karen    false    222   J                0    16647    strapi_history_versions 
   TABLE DATA           �   COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
    public               karen    false    262   &      �          0    16392    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public               karen    false    218   ,&      �          0    16399    strapi_migrations_internal 
   TABLE DATA           F   COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
    public               karen    false    220   I&      �          0    16473    strapi_release_actions 
   TABLE DATA           �   COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public               karen    false    232   '      	          0    16693 "   strapi_release_actions_release_lnk 
   TABLE DATA           s   COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
    public               karen    false    270   +'      �          0    16461    strapi_releases 
   TABLE DATA           �   COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    230   H'      �          0    16617 !   strapi_transfer_token_permissions 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    256   e'                0    16801 +   strapi_transfer_token_permissions_token_lnk 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
    public               karen    false    288   �'      �          0    16605    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    254   �'      �          0    16638    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public               karen    false    260   �'      �          0    16485    strapi_workflows 
   TABLE DATA           �   COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    234   �'                0    16705 .   strapi_workflows_stage_required_to_publish_lnk 
   TABLE DATA           l   COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
    public               karen    false    272   �'      �          0    16497    strapi_workflows_stages 
   TABLE DATA           �   COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    236   (                0    16728 '   strapi_workflows_stages_permissions_lnk 
   TABLE DATA           w   COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
    public               karen    false    276   0(                0    16716 $   strapi_workflows_stages_workflow_lnk 
   TABLE DATA           v   COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
    public               karen    false    274   M(      �          0    16509    up_permissions 
   TABLE DATA           �   COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    238   j(                0    16740    up_permissions_role_lnk 
   TABLE DATA           ]   COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
    public               karen    false    278   2      �          0    16521    up_roles 
   TABLE DATA           �   COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    240   �3      �          0    16533    up_users 
   TABLE DATA           �   COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    242   O4                0    16752    up_users_role_lnk 
   TABLE DATA           K   COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
    public               karen    false    280   r5      �          0    16433    upload_folders 
   TABLE DATA           �   COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    226   �5                0    16681    upload_folders_parent_lnk 
   TABLE DATA           ]   COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
    public               karen    false    268   �5      -          0    17378    wx_commentmetas 
   TABLE DATA           �   COPY public.wx_commentmetas (id, document_id, meta_id, comment_id, meta_key, meta_value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    306   �5      C          0    17641    wx_commentmetas_wx_comment_lnk 
   TABLE DATA           r   COPY public.wx_commentmetas_wx_comment_lnk (id, wx_commentmeta_id, wx_comment_id, wx_commentmeta_ord) FROM stdin;
    public               karen    false    328   �5      /          0    17403    wx_comments 
   TABLE DATA           .  COPY public.wx_comments (id, document_id, comment_id, comment_post_id, comment_author, comment_author_email, comment_date, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, comment_content, comment_like, comment_dislike, comment_approved, comment_parent, user_id) FROM stdin;
    public               karen    false    308   6      3          0    17454    wx_comments_user_lnk 
   TABLE DATA           Z   COPY public.wx_comments_user_lnk (id, wx_comment_id, user_id, wx_comment_ord) FROM stdin;
    public               karen    false    312   .6      7          0    17501    wx_comments_wx_post_lnk 
   TABLE DATA           `   COPY public.wx_comments_wx_post_lnk (id, wx_comment_id, wx_post_id, wx_comment_ord) FROM stdin;
    public               karen    false    316   K6      +          0    17353 
   wx_options 
   TABLE DATA           �   COPY public.wx_options (id, document_id, option_id, option_key, option_value, autoload, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    304   h6      !          0    17230    wx_postmetas 
   TABLE DATA           �   COPY public.wx_postmetas (id, document_id, meta_id, post_id, meta_key, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, meta_value) FROM stdin;
    public               karen    false    294   �6      9          0    17513    wx_postmetas_wx_post_lnk 
   TABLE DATA           c   COPY public.wx_postmetas_wx_post_lnk (id, wx_postmeta_id, wx_post_id, wx_postmeta_ord) FROM stdin;
    public               karen    false    318   �6                0    17180    wx_posts 
   TABLE DATA           '  COPY public.wx_posts (id, document_id, wx_id, post_author, post_date, post_title, post_content, created_at, updated_at, published_at, locale, post_excerpt, post_status, post_name, post_modified, post_type, post_parent, comment_status, guid, menu_order, created_by_id, updated_by_id) FROM stdin;
    public               karen    false    292   �6      5          0    17466    wx_posts_user_lnk 
   TABLE DATA           Q   COPY public.wx_posts_user_lnk (id, wx_post_id, user_id, wx_post_ord) FROM stdin;
    public               karen    false    314   �6      #          0    17257    wx_term_relationships 
   TABLE DATA           �   COPY public.wx_term_relationships (id, document_id, object_id, term_taxonomi_id, term_order, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    296   �6      ;          0    17547 !   wx_term_relationships_wx_post_lnk 
   TABLE DATA           ~   COPY public.wx_term_relationships_wx_post_lnk (id, wx_term_relationship_id, wx_post_id, wx_term_relationship_ord) FROM stdin;
    public               karen    false    320   7      A          0    17617 *   wx_term_relationships_wx_term_taxonomy_lnk 
   TABLE DATA           �   COPY public.wx_term_relationships_wx_term_taxonomy_lnk (id, wx_term_relationship_id, wx_term_taxonomy_id, wx_term_relationship_ord) FROM stdin;
    public               karen    false    326   37      %          0    17281    wx_term_taxonomies 
   TABLE DATA           �   COPY public.wx_term_taxonomies (id, document_id, term_taxonomy_id, term_id, taxonomy, description, parent, count, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    298   P7      =          0    17571    wx_term_taxonomies_wx_term_lnk 
   TABLE DATA           s   COPY public.wx_term_taxonomies_wx_term_lnk (id, wx_term_taxonomy_id, wx_term_id, wx_term_taxonomy_ord) FROM stdin;
    public               karen    false    322   m7      )          0    17329    wx_termmetas 
   TABLE DATA           �   COPY public.wx_termmetas (id, document_id, meta_id, term_id, meta_key, meta_value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    302   �7      ?          0    17583    wx_termmetas_wx_term_lnk 
   TABLE DATA           c   COPY public.wx_termmetas_wx_term_lnk (id, wx_termmeta_id, wx_term_id, wx_termmeta_ord) FROM stdin;
    public               karen    false    324   �7      '          0    17305    wx_terms 
   TABLE DATA           �   COPY public.wx_terms (id, document_id, term_id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    300   �7                0    17143    wx_usermetas 
   TABLE DATA           �   COPY public.wx_usermetas (id, document_id, umeta_id, user_id, meta_key, meta_value, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public               karen    false    290   �7      1          0    17429    wx_usermetas_user_lnk 
   TABLE DATA           ]   COPY public.wx_usermetas_user_lnk (id, wx_usermeta_id, user_id, wx_usermeta_ord) FROM stdin;
    public               karen    false    310   �7      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 274, true);
          public               karen    false    243            �           0    0 !   admin_permissions_role_lnk_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 274, true);
          public               karen    false    281            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public               karen    false    247            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public               karen    false    245            �           0    0    admin_users_roles_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 3, true);
          public               karen    false    283            �           0    0    files_folder_lnk_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);
          public               karen    false    265            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public               karen    false    223            �           0    0    files_related_mph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);
          public               karen    false    263            �           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public               karen    false    227            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public               karen    false    251            �           0    0 -   strapi_api_token_permissions_token_lnk_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 1, false);
          public               karen    false    285            �           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public               karen    false    249            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 37, true);
          public               karen    false    257            �           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 29, true);
          public               karen    false    221            �           0    0    strapi_history_versions_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);
          public               karen    false    261            �           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public               karen    false    217            �           0    0 !   strapi_migrations_internal_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 6, true);
          public               karen    false    219            �           0    0    strapi_release_actions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);
          public               karen    false    231            �           0    0 )   strapi_release_actions_release_lnk_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);
          public               karen    false    269            �           0    0    strapi_releases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);
          public               karen    false    229            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public               karen    false    255            �           0    0 2   strapi_transfer_token_permissions_token_lnk_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);
          public               karen    false    287            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public               karen    false    253            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public               karen    false    259            �           0    0    strapi_workflows_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);
          public               karen    false    233            �           0    0 5   strapi_workflows_stage_required_to_publish_lnk_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);
          public               karen    false    271            �           0    0    strapi_workflows_stages_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);
          public               karen    false    235            �           0    0 .   strapi_workflows_stages_permissions_lnk_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);
          public               karen    false    275            �           0    0 +   strapi_workflows_stages_workflow_lnk_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);
          public               karen    false    273            �           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 83, true);
          public               karen    false    237            �           0    0    up_permissions_role_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 83, true);
          public               karen    false    277            �           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public               karen    false    239            �           0    0    up_users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_users_id_seq', 4, true);
          public               karen    false    241            �           0    0    up_users_role_lnk_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 3, true);
          public               karen    false    279            �           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public               karen    false    225            �           0    0     upload_folders_parent_lnk_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);
          public               karen    false    267            �           0    0    wx_commentmetas_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wx_commentmetas_id_seq', 1, false);
          public               karen    false    305            �           0    0 %   wx_commentmetas_wx_comment_lnk_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wx_commentmetas_wx_comment_lnk_id_seq', 1, false);
          public               karen    false    327            �           0    0    wx_comments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.wx_comments_id_seq', 1, false);
          public               karen    false    307            �           0    0    wx_comments_user_lnk_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.wx_comments_user_lnk_id_seq', 1, false);
          public               karen    false    311            �           0    0    wx_comments_wx_post_lnk_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.wx_comments_wx_post_lnk_id_seq', 1, false);
          public               karen    false    315            �           0    0    wx_options_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.wx_options_id_seq', 1, false);
          public               karen    false    303            �           0    0    wx_postmetas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.wx_postmetas_id_seq', 1, false);
          public               karen    false    293            �           0    0    wx_postmetas_wx_post_lnk_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wx_postmetas_wx_post_lnk_id_seq', 1, false);
          public               karen    false    317            �           0    0    wx_posts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.wx_posts_id_seq', 1, false);
          public               karen    false    291            �           0    0    wx_posts_user_lnk_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.wx_posts_user_lnk_id_seq', 1, false);
          public               karen    false    313            �           0    0    wx_term_relationships_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wx_term_relationships_id_seq', 1, false);
          public               karen    false    295            �           0    0 (   wx_term_relationships_wx_post_lnk_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.wx_term_relationships_wx_post_lnk_id_seq', 1, false);
          public               karen    false    319            �           0    0 1   wx_term_relationships_wx_term_taxonomy_lnk_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.wx_term_relationships_wx_term_taxonomy_lnk_id_seq', 1, false);
          public               karen    false    325            �           0    0    wx_term_taxonomies_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.wx_term_taxonomies_id_seq', 1, false);
          public               karen    false    297            �           0    0 %   wx_term_taxonomies_wx_term_lnk_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.wx_term_taxonomies_wx_term_lnk_id_seq', 1, false);
          public               karen    false    321            �           0    0    wx_termmetas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.wx_termmetas_id_seq', 1, false);
          public               karen    false    301            �           0    0    wx_termmetas_wx_term_lnk_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.wx_termmetas_wx_term_lnk_id_seq', 1, false);
          public               karen    false    323            �           0    0    wx_terms_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.wx_terms_id_seq', 1, false);
          public               karen    false    299            �           0    0    wx_usermetas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.wx_usermetas_id_seq', 1, false);
          public               karen    false    289            �           0    0    wx_usermetas_user_lnk_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.wx_usermetas_user_lnk_id_seq', 1, false);
          public               karen    false    309            �           2606    16552 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public                 karen    false    244            N           2606    16769 :   admin_permissions_role_lnk admin_permissions_role_lnk_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_pkey;
       public                 karen    false    282            P           2606    16773 8   admin_permissions_role_lnk admin_permissions_role_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_uq;
       public                 karen    false    282    282            �           2606    16576    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public                 karen    false    248            �           2606    16564    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public                 karen    false    246            V           2606    16781 0   admin_users_roles_lnk admin_users_roles_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_pkey;
       public                 karen    false    284            X           2606    16785 .   admin_users_roles_lnk admin_users_roles_lnk_uq 
   CONSTRAINT     u   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_uq;
       public                 karen    false    284    284                       2606    16674 &   files_folder_lnk files_folder_lnk_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_pkey;
       public                 karen    false    266                       2606    16678 $   files_folder_lnk files_folder_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_uq;
       public                 karen    false    266    266            �           2606    16422    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public                 karen    false    224                       2606    16664 (   files_related_mph files_related_mph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_pkey;
       public                 karen    false    264            �           2606    16456    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public                 karen    false    228            �           2606    16600 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public                 karen    false    252            ]           2606    16794 R   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_pkey;
       public                 karen    false    286            _           2606    16798 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_uq;
       public                 karen    false    286    286            �           2606    16588 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public                 karen    false    250                       2606    16636 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public                 karen    false    258            �           2606    16413 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public                 karen    false    222                       2606    16654 4   strapi_history_versions strapi_history_versions_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_pkey;
       public                 karen    false    262            �           2606    16404 :   strapi_migrations_internal strapi_migrations_internal_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_migrations_internal DROP CONSTRAINT strapi_migrations_internal_pkey;
       public                 karen    false    220            �           2606    16397 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public                 karen    false    218            �           2606    16480 2   strapi_release_actions strapi_release_actions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
       public                 karen    false    232            %           2606    16698 J   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_pkey;
       public                 karen    false    270            '           2606    16702 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_uq;
       public                 karen    false    270    270            �           2606    16468 $   strapi_releases strapi_releases_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
       public                 karen    false    230                       2606    16624 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public                 karen    false    256            d           2606    16806 \   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey;
       public                 karen    false    288            f           2606    16810 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq;
       public                 karen    false    288    288                        2606    16612 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public                 karen    false    254            
           2606    16645 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public                 karen    false    260            �           2606    16492 &   strapi_workflows strapi_workflows_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_pkey;
       public                 karen    false    234            +           2606    16710 b   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey;
       public                 karen    false    272            -           2606    16714 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq;
       public                 karen    false    272    272            9           2606    16733 T   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey;
       public                 karen    false    276            ;           2606    16737 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_uq;
       public                 karen    false    276    276            �           2606    16504 4   strapi_workflows_stages strapi_workflows_stages_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_pkey;
       public                 karen    false    236            2           2606    16721 N   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey;
       public                 karen    false    274            4           2606    16725 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_uq;
       public                 karen    false    274    274            �           2606    16516 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public                 karen    false    238            @           2606    16745 4   up_permissions_role_lnk up_permissions_role_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_pkey;
       public                 karen    false    278            B           2606    16749 2   up_permissions_role_lnk up_permissions_role_lnk_uq 
   CONSTRAINT        ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_uq;
       public                 karen    false    278    278            �           2606    16528    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public                 karen    false    240            �           2606    16540    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public                 karen    false    242            G           2606    16757 (   up_users_role_lnk up_users_role_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_pkey;
       public                 karen    false    280            I           2606    16761 &   up_users_role_lnk up_users_role_lnk_uq 
   CONSTRAINT     m   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_uq;
       public                 karen    false    280    280                       2606    16686 8   upload_folders_parent_lnk upload_folders_parent_lnk_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_pkey;
       public                 karen    false    268                        2606    16690 6   upload_folders_parent_lnk upload_folders_parent_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_uq;
       public                 karen    false    268    268            �           2606    16442 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public                 karen    false    226            �           2606    16444 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public                 karen    false    226            �           2606    16440 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public                 karen    false    226            �           2606    17385 $   wx_commentmetas wx_commentmetas_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.wx_commentmetas
    ADD CONSTRAINT wx_commentmetas_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.wx_commentmetas DROP CONSTRAINT wx_commentmetas_pkey;
       public                 karen    false    306            �           2606    17646 B   wx_commentmetas_wx_comment_lnk wx_commentmetas_wx_comment_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk
    ADD CONSTRAINT wx_commentmetas_wx_comment_lnk_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk DROP CONSTRAINT wx_commentmetas_wx_comment_lnk_pkey;
       public                 karen    false    328            �           2606    17650 @   wx_commentmetas_wx_comment_lnk wx_commentmetas_wx_comment_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk
    ADD CONSTRAINT wx_commentmetas_wx_comment_lnk_uq UNIQUE (wx_commentmeta_id, wx_comment_id);
 j   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk DROP CONSTRAINT wx_commentmetas_wx_comment_lnk_uq;
       public                 karen    false    328    328            �           2606    17410    wx_comments wx_comments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.wx_comments
    ADD CONSTRAINT wx_comments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.wx_comments DROP CONSTRAINT wx_comments_pkey;
       public                 karen    false    308            �           2606    17459 .   wx_comments_user_lnk wx_comments_user_lnk_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.wx_comments_user_lnk
    ADD CONSTRAINT wx_comments_user_lnk_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wx_comments_user_lnk DROP CONSTRAINT wx_comments_user_lnk_pkey;
       public                 karen    false    312            �           2606    17463 ,   wx_comments_user_lnk wx_comments_user_lnk_uq 
   CONSTRAINT     y   ALTER TABLE ONLY public.wx_comments_user_lnk
    ADD CONSTRAINT wx_comments_user_lnk_uq UNIQUE (wx_comment_id, user_id);
 V   ALTER TABLE ONLY public.wx_comments_user_lnk DROP CONSTRAINT wx_comments_user_lnk_uq;
       public                 karen    false    312    312            �           2606    17506 4   wx_comments_wx_post_lnk wx_comments_wx_post_lnk_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.wx_comments_wx_post_lnk
    ADD CONSTRAINT wx_comments_wx_post_lnk_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.wx_comments_wx_post_lnk DROP CONSTRAINT wx_comments_wx_post_lnk_pkey;
       public                 karen    false    316            �           2606    17510 2   wx_comments_wx_post_lnk wx_comments_wx_post_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments_wx_post_lnk
    ADD CONSTRAINT wx_comments_wx_post_lnk_uq UNIQUE (wx_comment_id, wx_post_id);
 \   ALTER TABLE ONLY public.wx_comments_wx_post_lnk DROP CONSTRAINT wx_comments_wx_post_lnk_uq;
       public                 karen    false    316    316            �           2606    17360    wx_options wx_options_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.wx_options
    ADD CONSTRAINT wx_options_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.wx_options DROP CONSTRAINT wx_options_pkey;
       public                 karen    false    304            t           2606    17237    wx_postmetas wx_postmetas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wx_postmetas
    ADD CONSTRAINT wx_postmetas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.wx_postmetas DROP CONSTRAINT wx_postmetas_pkey;
       public                 karen    false    294            �           2606    17518 6   wx_postmetas_wx_post_lnk wx_postmetas_wx_post_lnk_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk
    ADD CONSTRAINT wx_postmetas_wx_post_lnk_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk DROP CONSTRAINT wx_postmetas_wx_post_lnk_pkey;
       public                 karen    false    318            �           2606    17522 4   wx_postmetas_wx_post_lnk wx_postmetas_wx_post_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk
    ADD CONSTRAINT wx_postmetas_wx_post_lnk_uq UNIQUE (wx_postmeta_id, wx_post_id);
 ^   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk DROP CONSTRAINT wx_postmetas_wx_post_lnk_uq;
       public                 karen    false    318    318            o           2606    17187    wx_posts wx_posts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wx_posts
    ADD CONSTRAINT wx_posts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.wx_posts DROP CONSTRAINT wx_posts_pkey;
       public                 karen    false    292            �           2606    17471 (   wx_posts_user_lnk wx_posts_user_lnk_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.wx_posts_user_lnk
    ADD CONSTRAINT wx_posts_user_lnk_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.wx_posts_user_lnk DROP CONSTRAINT wx_posts_user_lnk_pkey;
       public                 karen    false    314            �           2606    17475 &   wx_posts_user_lnk wx_posts_user_lnk_uq 
   CONSTRAINT     p   ALTER TABLE ONLY public.wx_posts_user_lnk
    ADD CONSTRAINT wx_posts_user_lnk_uq UNIQUE (wx_post_id, user_id);
 P   ALTER TABLE ONLY public.wx_posts_user_lnk DROP CONSTRAINT wx_posts_user_lnk_uq;
       public                 karen    false    314    314            y           2606    17264 0   wx_term_relationships wx_term_relationships_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.wx_term_relationships
    ADD CONSTRAINT wx_term_relationships_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.wx_term_relationships DROP CONSTRAINT wx_term_relationships_pkey;
       public                 karen    false    296            �           2606    17552 H   wx_term_relationships_wx_post_lnk wx_term_relationships_wx_post_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk
    ADD CONSTRAINT wx_term_relationships_wx_post_lnk_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk DROP CONSTRAINT wx_term_relationships_wx_post_lnk_pkey;
       public                 karen    false    320            �           2606    17556 F   wx_term_relationships_wx_post_lnk wx_term_relationships_wx_post_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk
    ADD CONSTRAINT wx_term_relationships_wx_post_lnk_uq UNIQUE (wx_term_relationship_id, wx_post_id);
 p   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk DROP CONSTRAINT wx_term_relationships_wx_post_lnk_uq;
       public                 karen    false    320    320            �           2606    17622 Z   wx_term_relationships_wx_term_taxonomy_lnk wx_term_relationships_wx_term_taxonomy_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk
    ADD CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk DROP CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_pkey;
       public                 karen    false    326            �           2606    17626 X   wx_term_relationships_wx_term_taxonomy_lnk wx_term_relationships_wx_term_taxonomy_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk
    ADD CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_uq UNIQUE (wx_term_relationship_id, wx_term_taxonomy_id);
 �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk DROP CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_uq;
       public                 karen    false    326    326            ~           2606    17288 *   wx_term_taxonomies wx_term_taxonomies_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.wx_term_taxonomies
    ADD CONSTRAINT wx_term_taxonomies_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.wx_term_taxonomies DROP CONSTRAINT wx_term_taxonomies_pkey;
       public                 karen    false    298            �           2606    17576 B   wx_term_taxonomies_wx_term_lnk wx_term_taxonomies_wx_term_lnk_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk
    ADD CONSTRAINT wx_term_taxonomies_wx_term_lnk_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk DROP CONSTRAINT wx_term_taxonomies_wx_term_lnk_pkey;
       public                 karen    false    322            �           2606    17580 @   wx_term_taxonomies_wx_term_lnk wx_term_taxonomies_wx_term_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk
    ADD CONSTRAINT wx_term_taxonomies_wx_term_lnk_uq UNIQUE (wx_term_taxonomy_id, wx_term_id);
 j   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk DROP CONSTRAINT wx_term_taxonomies_wx_term_lnk_uq;
       public                 karen    false    322    322            �           2606    17336    wx_termmetas wx_termmetas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wx_termmetas
    ADD CONSTRAINT wx_termmetas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.wx_termmetas DROP CONSTRAINT wx_termmetas_pkey;
       public                 karen    false    302            �           2606    17588 6   wx_termmetas_wx_term_lnk wx_termmetas_wx_term_lnk_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk
    ADD CONSTRAINT wx_termmetas_wx_term_lnk_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk DROP CONSTRAINT wx_termmetas_wx_term_lnk_pkey;
       public                 karen    false    324            �           2606    17592 4   wx_termmetas_wx_term_lnk wx_termmetas_wx_term_lnk_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk
    ADD CONSTRAINT wx_termmetas_wx_term_lnk_uq UNIQUE (wx_termmeta_id, wx_term_id);
 ^   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk DROP CONSTRAINT wx_termmetas_wx_term_lnk_uq;
       public                 karen    false    324    324            �           2606    17312    wx_terms wx_terms_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wx_terms
    ADD CONSTRAINT wx_terms_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.wx_terms DROP CONSTRAINT wx_terms_pkey;
       public                 karen    false    300            j           2606    17150    wx_usermetas wx_usermetas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wx_usermetas
    ADD CONSTRAINT wx_usermetas_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.wx_usermetas DROP CONSTRAINT wx_usermetas_pkey;
       public                 karen    false    290            �           2606    17434 0   wx_usermetas_user_lnk wx_usermetas_user_lnk_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.wx_usermetas_user_lnk
    ADD CONSTRAINT wx_usermetas_user_lnk_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.wx_usermetas_user_lnk DROP CONSTRAINT wx_usermetas_user_lnk_pkey;
       public                 karen    false    310            �           2606    17438 .   wx_usermetas_user_lnk wx_usermetas_user_lnk_uq 
   CONSTRAINT     |   ALTER TABLE ONLY public.wx_usermetas_user_lnk
    ADD CONSTRAINT wx_usermetas_user_lnk_uq UNIQUE (wx_usermeta_id, user_id);
 X   ALTER TABLE ONLY public.wx_usermetas_user_lnk DROP CONSTRAINT wx_usermetas_user_lnk_uq;
       public                 karen    false    310    310            �           1259    16554 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public                 karen    false    244            �           1259    16553    admin_permissions_documents_idx    INDEX     z   CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);
 3   DROP INDEX public.admin_permissions_documents_idx;
       public                 karen    false    244    244    244            J           1259    16770    admin_permissions_role_lnk_fk    INDEX     m   CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);
 1   DROP INDEX public.admin_permissions_role_lnk_fk;
       public                 karen    false    282            K           1259    16771    admin_permissions_role_lnk_ifk    INDEX     h   CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);
 2   DROP INDEX public.admin_permissions_role_lnk_ifk;
       public                 karen    false    282            L           1259    16774    admin_permissions_role_lnk_oifk    INDEX     p   CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);
 3   DROP INDEX public.admin_permissions_role_lnk_oifk;
       public                 karen    false    282            �           1259    16555 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public                 karen    false    244            �           1259    16578    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public                 karen    false    248            �           1259    16577    admin_roles_documents_idx    INDEX     n   CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_roles_documents_idx;
       public                 karen    false    248    248    248            �           1259    16579    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public                 karen    false    248            �           1259    16566    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public                 karen    false    246            �           1259    16565    admin_users_documents_idx    INDEX     n   CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);
 -   DROP INDEX public.admin_users_documents_idx;
       public                 karen    false    246    246    246            Q           1259    16782    admin_users_roles_lnk_fk    INDEX     ]   CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);
 ,   DROP INDEX public.admin_users_roles_lnk_fk;
       public                 karen    false    284            R           1259    16783    admin_users_roles_lnk_ifk    INDEX     ^   CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);
 -   DROP INDEX public.admin_users_roles_lnk_ifk;
       public                 karen    false    284            S           1259    16786    admin_users_roles_lnk_ofk    INDEX     _   CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);
 -   DROP INDEX public.admin_users_roles_lnk_ofk;
       public                 karen    false    284            T           1259    16787    admin_users_roles_lnk_oifk    INDEX     `   CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);
 .   DROP INDEX public.admin_users_roles_lnk_oifk;
       public                 karen    false    284            �           1259    16567    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public                 karen    false    246            �           1259    16430    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public                 karen    false    224            �           1259    16429    files_documents_idx    INDEX     b   CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);
 '   DROP INDEX public.files_documents_idx;
       public                 karen    false    224    224    224                       1259    16675    files_folder_lnk_fk    INDEX     S   CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);
 '   DROP INDEX public.files_folder_lnk_fk;
       public                 karen    false    266                       1259    16676    files_folder_lnk_ifk    INDEX     V   CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);
 (   DROP INDEX public.files_folder_lnk_ifk;
       public                 karen    false    266                       1259    16679    files_folder_lnk_oifk    INDEX     V   CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);
 )   DROP INDEX public.files_folder_lnk_oifk;
       public                 karen    false    266                       1259    16665    files_related_mph_fk    INDEX     U   CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);
 (   DROP INDEX public.files_related_mph_fk;
       public                 karen    false    264                       1259    16667    files_related_mph_idix    INDEX     Z   CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);
 *   DROP INDEX public.files_related_mph_idix;
       public                 karen    false    264                       1259    16666    files_related_mph_oidx    INDEX     W   CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");
 *   DROP INDEX public.files_related_mph_oidx;
       public                 karen    false    264            �           1259    16431    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public                 karen    false    224            �           1259    16458    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public                 karen    false    228            �           1259    16457    i18n_locale_documents_idx    INDEX     n   CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);
 -   DROP INDEX public.i18n_locale_documents_idx;
       public                 karen    false    228    228    228            �           1259    16459    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public                 karen    false    228            �           1259    16602 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public                 karen    false    252            �           1259    16601 *   strapi_api_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);
 >   DROP INDEX public.strapi_api_token_permissions_documents_idx;
       public                 karen    false    252    252    252            Y           1259    16795 )   strapi_api_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);
 =   DROP INDEX public.strapi_api_token_permissions_token_lnk_fk;
       public                 karen    false    286            Z           1259    16796 *   strapi_api_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);
 >   DROP INDEX public.strapi_api_token_permissions_token_lnk_ifk;
       public                 karen    false    286            [           1259    16799 +   strapi_api_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);
 ?   DROP INDEX public.strapi_api_token_permissions_token_lnk_oifk;
       public                 karen    false    286            �           1259    16603 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public                 karen    false    252            �           1259    16590 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public                 karen    false    250            �           1259    16589    strapi_api_tokens_documents_idx    INDEX     z   CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);
 3   DROP INDEX public.strapi_api_tokens_documents_idx;
       public                 karen    false    250    250    250            �           1259    16591 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public                 karen    false    250                       1259    16655 (   strapi_history_versions_created_by_id_fk    INDEX     u   CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);
 <   DROP INDEX public.strapi_history_versions_created_by_id_fk;
       public                 karen    false    262            �           1259    16482 '   strapi_release_actions_created_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);
 ;   DROP INDEX public.strapi_release_actions_created_by_id_fk;
       public                 karen    false    232            �           1259    16481 $   strapi_release_actions_documents_idx    INDEX     �   CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_release_actions_documents_idx;
       public                 karen    false    232    232    232            !           1259    16699 %   strapi_release_actions_release_lnk_fk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);
 9   DROP INDEX public.strapi_release_actions_release_lnk_fk;
       public                 karen    false    270            "           1259    16700 &   strapi_release_actions_release_lnk_ifk    INDEX     {   CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);
 :   DROP INDEX public.strapi_release_actions_release_lnk_ifk;
       public                 karen    false    270            #           1259    16703 '   strapi_release_actions_release_lnk_oifk    INDEX     �   CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);
 ;   DROP INDEX public.strapi_release_actions_release_lnk_oifk;
       public                 karen    false    270            �           1259    16483 '   strapi_release_actions_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_release_actions_updated_by_id_fk;
       public                 karen    false    232            �           1259    16470     strapi_releases_created_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);
 4   DROP INDEX public.strapi_releases_created_by_id_fk;
       public                 karen    false    230            �           1259    16469    strapi_releases_documents_idx    INDEX     v   CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);
 1   DROP INDEX public.strapi_releases_documents_idx;
       public                 karen    false    230    230    230            �           1259    16471     strapi_releases_updated_by_id_fk    INDEX     e   CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);
 4   DROP INDEX public.strapi_releases_updated_by_id_fk;
       public                 karen    false    230                       1259    16626 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public                 karen    false    256                       1259    16625 /   strapi_transfer_token_permissions_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);
 C   DROP INDEX public.strapi_transfer_token_permissions_documents_idx;
       public                 karen    false    256    256    256            `           1259    16807 .   strapi_transfer_token_permissions_token_lnk_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);
 B   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_fk;
       public                 karen    false    288            a           1259    16808 /   strapi_transfer_token_permissions_token_lnk_ifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);
 C   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_ifk;
       public                 karen    false    288            b           1259    16811 0   strapi_transfer_token_permissions_token_lnk_oifk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_lnk_oifk;
       public                 karen    false    288                       1259    16627 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public                 karen    false    256            �           1259    16614 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public                 karen    false    254            �           1259    16613 $   strapi_transfer_tokens_documents_idx    INDEX     �   CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);
 8   DROP INDEX public.strapi_transfer_tokens_documents_idx;
       public                 karen    false    254    254    254                       1259    16615 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public                 karen    false    254            �           1259    16494 !   strapi_workflows_created_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);
 5   DROP INDEX public.strapi_workflows_created_by_id_fk;
       public                 karen    false    234            �           1259    16493    strapi_workflows_documents_idx    INDEX     x   CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);
 2   DROP INDEX public.strapi_workflows_documents_idx;
       public                 karen    false    234    234    234            (           1259    16711 1   strapi_workflows_stage_required_to_publish_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);
 E   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_fk;
       public                 karen    false    272            )           1259    16712 2   strapi_workflows_stage_required_to_publish_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);
 F   DROP INDEX public.strapi_workflows_stage_required_to_publish_lnk_ifk;
       public                 karen    false    272            �           1259    16506 (   strapi_workflows_stages_created_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);
 <   DROP INDEX public.strapi_workflows_stages_created_by_id_fk;
       public                 karen    false    236            �           1259    16505 %   strapi_workflows_stages_documents_idx    INDEX     �   CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);
 9   DROP INDEX public.strapi_workflows_stages_documents_idx;
       public                 karen    false    236    236    236            5           1259    16734 *   strapi_workflows_stages_permissions_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);
 >   DROP INDEX public.strapi_workflows_stages_permissions_lnk_fk;
       public                 karen    false    276            6           1259    16735 +   strapi_workflows_stages_permissions_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ifk;
       public                 karen    false    276            7           1259    16738 +   strapi_workflows_stages_permissions_lnk_ofk    INDEX     �   CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);
 ?   DROP INDEX public.strapi_workflows_stages_permissions_lnk_ofk;
       public                 karen    false    276            �           1259    16507 (   strapi_workflows_stages_updated_by_id_fk    INDEX     u   CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);
 <   DROP INDEX public.strapi_workflows_stages_updated_by_id_fk;
       public                 karen    false    236            .           1259    16722 '   strapi_workflows_stages_workflow_lnk_fk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);
 ;   DROP INDEX public.strapi_workflows_stages_workflow_lnk_fk;
       public                 karen    false    274            /           1259    16723 (   strapi_workflows_stages_workflow_lnk_ifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);
 <   DROP INDEX public.strapi_workflows_stages_workflow_lnk_ifk;
       public                 karen    false    274            0           1259    16726 )   strapi_workflows_stages_workflow_lnk_oifk    INDEX     �   CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);
 =   DROP INDEX public.strapi_workflows_stages_workflow_lnk_oifk;
       public                 karen    false    274            �           1259    16495 !   strapi_workflows_updated_by_id_fk    INDEX     g   CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);
 5   DROP INDEX public.strapi_workflows_updated_by_id_fk;
       public                 karen    false    234            �           1259    16518    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public                 karen    false    238            �           1259    16517    up_permissions_documents_idx    INDEX     t   CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);
 0   DROP INDEX public.up_permissions_documents_idx;
       public                 karen    false    238    238    238            <           1259    16746    up_permissions_role_lnk_fk    INDEX     g   CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);
 .   DROP INDEX public.up_permissions_role_lnk_fk;
       public                 karen    false    278            =           1259    16747    up_permissions_role_lnk_ifk    INDEX     b   CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);
 /   DROP INDEX public.up_permissions_role_lnk_ifk;
       public                 karen    false    278            >           1259    16750    up_permissions_role_lnk_oifk    INDEX     j   CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);
 0   DROP INDEX public.up_permissions_role_lnk_oifk;
       public                 karen    false    278            �           1259    16519    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public                 karen    false    238            �           1259    16530    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public                 karen    false    240            �           1259    16529    up_roles_documents_idx    INDEX     h   CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_roles_documents_idx;
       public                 karen    false    240    240    240            �           1259    16531    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public                 karen    false    240            �           1259    16542    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public                 karen    false    242            �           1259    16541    up_users_documents_idx    INDEX     h   CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);
 *   DROP INDEX public.up_users_documents_idx;
       public                 karen    false    242    242    242            C           1259    16758    up_users_role_lnk_fk    INDEX     U   CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);
 (   DROP INDEX public.up_users_role_lnk_fk;
       public                 karen    false    280            D           1259    16759    up_users_role_lnk_ifk    INDEX     V   CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);
 )   DROP INDEX public.up_users_role_lnk_ifk;
       public                 karen    false    280            E           1259    16762    up_users_role_lnk_oifk    INDEX     X   CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);
 *   DROP INDEX public.up_users_role_lnk_oifk;
       public                 karen    false    280            �           1259    16543    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public                 karen    false    242            �           1259    16424    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public                 karen    false    224            �           1259    16428    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public                 karen    false    224            �           1259    16423    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public                 karen    false    224            �           1259    16426    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public                 karen    false    224            �           1259    16427    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public                 karen    false    224            �           1259    16425    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public                 karen    false    224            �           1259    16446    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public                 karen    false    226            �           1259    16445    upload_folders_documents_idx    INDEX     t   CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);
 0   DROP INDEX public.upload_folders_documents_idx;
       public                 karen    false    226    226    226                       1259    16687    upload_folders_parent_lnk_fk    INDEX     g   CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);
 0   DROP INDEX public.upload_folders_parent_lnk_fk;
       public                 karen    false    268                       1259    16688    upload_folders_parent_lnk_ifk    INDEX     l   CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);
 1   DROP INDEX public.upload_folders_parent_lnk_ifk;
       public                 karen    false    268                       1259    16691    upload_folders_parent_lnk_oifk    INDEX     j   CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);
 2   DROP INDEX public.upload_folders_parent_lnk_oifk;
       public                 karen    false    268            �           1259    16447    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public                 karen    false    226            �           1259    17387     wx_commentmetas_created_by_id_fk    INDEX     e   CREATE INDEX wx_commentmetas_created_by_id_fk ON public.wx_commentmetas USING btree (created_by_id);
 4   DROP INDEX public.wx_commentmetas_created_by_id_fk;
       public                 karen    false    306            �           1259    17386    wx_commentmetas_documents_idx    INDEX     v   CREATE INDEX wx_commentmetas_documents_idx ON public.wx_commentmetas USING btree (document_id, locale, published_at);
 1   DROP INDEX public.wx_commentmetas_documents_idx;
       public                 karen    false    306    306    306            �           1259    17388     wx_commentmetas_updated_by_id_fk    INDEX     e   CREATE INDEX wx_commentmetas_updated_by_id_fk ON public.wx_commentmetas USING btree (updated_by_id);
 4   DROP INDEX public.wx_commentmetas_updated_by_id_fk;
       public                 karen    false    306            �           1259    17647 !   wx_commentmetas_wx_comment_lnk_fk    INDEX     y   CREATE INDEX wx_commentmetas_wx_comment_lnk_fk ON public.wx_commentmetas_wx_comment_lnk USING btree (wx_commentmeta_id);
 5   DROP INDEX public.wx_commentmetas_wx_comment_lnk_fk;
       public                 karen    false    328            �           1259    17648 "   wx_commentmetas_wx_comment_lnk_ifk    INDEX     v   CREATE INDEX wx_commentmetas_wx_comment_lnk_ifk ON public.wx_commentmetas_wx_comment_lnk USING btree (wx_comment_id);
 6   DROP INDEX public.wx_commentmetas_wx_comment_lnk_ifk;
       public                 karen    false    328            �           1259    17651 #   wx_commentmetas_wx_comment_lnk_oifk    INDEX     |   CREATE INDEX wx_commentmetas_wx_comment_lnk_oifk ON public.wx_commentmetas_wx_comment_lnk USING btree (wx_commentmeta_ord);
 7   DROP INDEX public.wx_commentmetas_wx_comment_lnk_oifk;
       public                 karen    false    328            �           1259    17412    wx_comments_created_by_id_fk    INDEX     ]   CREATE INDEX wx_comments_created_by_id_fk ON public.wx_comments USING btree (created_by_id);
 0   DROP INDEX public.wx_comments_created_by_id_fk;
       public                 karen    false    308            �           1259    17411    wx_comments_documents_idx    INDEX     n   CREATE INDEX wx_comments_documents_idx ON public.wx_comments USING btree (document_id, locale, published_at);
 -   DROP INDEX public.wx_comments_documents_idx;
       public                 karen    false    308    308    308            �           1259    17413    wx_comments_updated_by_id_fk    INDEX     ]   CREATE INDEX wx_comments_updated_by_id_fk ON public.wx_comments USING btree (updated_by_id);
 0   DROP INDEX public.wx_comments_updated_by_id_fk;
       public                 karen    false    308            �           1259    17460    wx_comments_user_lnk_fk    INDEX     a   CREATE INDEX wx_comments_user_lnk_fk ON public.wx_comments_user_lnk USING btree (wx_comment_id);
 +   DROP INDEX public.wx_comments_user_lnk_fk;
       public                 karen    false    312            �           1259    17461    wx_comments_user_lnk_ifk    INDEX     \   CREATE INDEX wx_comments_user_lnk_ifk ON public.wx_comments_user_lnk USING btree (user_id);
 ,   DROP INDEX public.wx_comments_user_lnk_ifk;
       public                 karen    false    312            �           1259    17464    wx_comments_user_lnk_oifk    INDEX     d   CREATE INDEX wx_comments_user_lnk_oifk ON public.wx_comments_user_lnk USING btree (wx_comment_ord);
 -   DROP INDEX public.wx_comments_user_lnk_oifk;
       public                 karen    false    312            �           1259    17507    wx_comments_wx_post_lnk_fk    INDEX     g   CREATE INDEX wx_comments_wx_post_lnk_fk ON public.wx_comments_wx_post_lnk USING btree (wx_comment_id);
 .   DROP INDEX public.wx_comments_wx_post_lnk_fk;
       public                 karen    false    316            �           1259    17508    wx_comments_wx_post_lnk_ifk    INDEX     e   CREATE INDEX wx_comments_wx_post_lnk_ifk ON public.wx_comments_wx_post_lnk USING btree (wx_post_id);
 /   DROP INDEX public.wx_comments_wx_post_lnk_ifk;
       public                 karen    false    316            �           1259    17511    wx_comments_wx_post_lnk_oifk    INDEX     j   CREATE INDEX wx_comments_wx_post_lnk_oifk ON public.wx_comments_wx_post_lnk USING btree (wx_comment_ord);
 0   DROP INDEX public.wx_comments_wx_post_lnk_oifk;
       public                 karen    false    316            �           1259    17362    wx_options_created_by_id_fk    INDEX     [   CREATE INDEX wx_options_created_by_id_fk ON public.wx_options USING btree (created_by_id);
 /   DROP INDEX public.wx_options_created_by_id_fk;
       public                 karen    false    304            �           1259    17361    wx_options_documents_idx    INDEX     l   CREATE INDEX wx_options_documents_idx ON public.wx_options USING btree (document_id, locale, published_at);
 ,   DROP INDEX public.wx_options_documents_idx;
       public                 karen    false    304    304    304            �           1259    17363    wx_options_updated_by_id_fk    INDEX     [   CREATE INDEX wx_options_updated_by_id_fk ON public.wx_options USING btree (updated_by_id);
 /   DROP INDEX public.wx_options_updated_by_id_fk;
       public                 karen    false    304            q           1259    17239    wx_postmetas_created_by_id_fk    INDEX     _   CREATE INDEX wx_postmetas_created_by_id_fk ON public.wx_postmetas USING btree (created_by_id);
 1   DROP INDEX public.wx_postmetas_created_by_id_fk;
       public                 karen    false    294            r           1259    17238    wx_postmetas_documents_idx    INDEX     p   CREATE INDEX wx_postmetas_documents_idx ON public.wx_postmetas USING btree (document_id, locale, published_at);
 .   DROP INDEX public.wx_postmetas_documents_idx;
       public                 karen    false    294    294    294            u           1259    17240    wx_postmetas_updated_by_id_fk    INDEX     _   CREATE INDEX wx_postmetas_updated_by_id_fk ON public.wx_postmetas USING btree (updated_by_id);
 1   DROP INDEX public.wx_postmetas_updated_by_id_fk;
       public                 karen    false    294            �           1259    17519    wx_postmetas_wx_post_lnk_fk    INDEX     j   CREATE INDEX wx_postmetas_wx_post_lnk_fk ON public.wx_postmetas_wx_post_lnk USING btree (wx_postmeta_id);
 /   DROP INDEX public.wx_postmetas_wx_post_lnk_fk;
       public                 karen    false    318            �           1259    17520    wx_postmetas_wx_post_lnk_ifk    INDEX     g   CREATE INDEX wx_postmetas_wx_post_lnk_ifk ON public.wx_postmetas_wx_post_lnk USING btree (wx_post_id);
 0   DROP INDEX public.wx_postmetas_wx_post_lnk_ifk;
       public                 karen    false    318            �           1259    17523    wx_postmetas_wx_post_lnk_oifk    INDEX     m   CREATE INDEX wx_postmetas_wx_post_lnk_oifk ON public.wx_postmetas_wx_post_lnk USING btree (wx_postmeta_ord);
 1   DROP INDEX public.wx_postmetas_wx_post_lnk_oifk;
       public                 karen    false    318            l           1259    17225    wx_posts_created_by_id_fk    INDEX     W   CREATE INDEX wx_posts_created_by_id_fk ON public.wx_posts USING btree (created_by_id);
 -   DROP INDEX public.wx_posts_created_by_id_fk;
       public                 karen    false    292            m           1259    17188    wx_posts_documents_idx    INDEX     h   CREATE INDEX wx_posts_documents_idx ON public.wx_posts USING btree (document_id, locale, published_at);
 *   DROP INDEX public.wx_posts_documents_idx;
       public                 karen    false    292    292    292            p           1259    17226    wx_posts_updated_by_id_fk    INDEX     W   CREATE INDEX wx_posts_updated_by_id_fk ON public.wx_posts USING btree (updated_by_id);
 -   DROP INDEX public.wx_posts_updated_by_id_fk;
       public                 karen    false    292            �           1259    17472    wx_posts_user_lnk_fk    INDEX     X   CREATE INDEX wx_posts_user_lnk_fk ON public.wx_posts_user_lnk USING btree (wx_post_id);
 (   DROP INDEX public.wx_posts_user_lnk_fk;
       public                 karen    false    314            �           1259    17473    wx_posts_user_lnk_ifk    INDEX     V   CREATE INDEX wx_posts_user_lnk_ifk ON public.wx_posts_user_lnk USING btree (user_id);
 )   DROP INDEX public.wx_posts_user_lnk_ifk;
       public                 karen    false    314            �           1259    17476    wx_posts_user_lnk_oifk    INDEX     [   CREATE INDEX wx_posts_user_lnk_oifk ON public.wx_posts_user_lnk USING btree (wx_post_ord);
 *   DROP INDEX public.wx_posts_user_lnk_oifk;
       public                 karen    false    314            v           1259    17266 &   wx_term_relationships_created_by_id_fk    INDEX     q   CREATE INDEX wx_term_relationships_created_by_id_fk ON public.wx_term_relationships USING btree (created_by_id);
 :   DROP INDEX public.wx_term_relationships_created_by_id_fk;
       public                 karen    false    296            w           1259    17265 #   wx_term_relationships_documents_idx    INDEX     �   CREATE INDEX wx_term_relationships_documents_idx ON public.wx_term_relationships USING btree (document_id, locale, published_at);
 7   DROP INDEX public.wx_term_relationships_documents_idx;
       public                 karen    false    296    296    296            z           1259    17267 &   wx_term_relationships_updated_by_id_fk    INDEX     q   CREATE INDEX wx_term_relationships_updated_by_id_fk ON public.wx_term_relationships USING btree (updated_by_id);
 :   DROP INDEX public.wx_term_relationships_updated_by_id_fk;
       public                 karen    false    296            �           1259    17553 $   wx_term_relationships_wx_post_lnk_fk    INDEX     �   CREATE INDEX wx_term_relationships_wx_post_lnk_fk ON public.wx_term_relationships_wx_post_lnk USING btree (wx_term_relationship_id);
 8   DROP INDEX public.wx_term_relationships_wx_post_lnk_fk;
       public                 karen    false    320            �           1259    17554 %   wx_term_relationships_wx_post_lnk_ifk    INDEX     y   CREATE INDEX wx_term_relationships_wx_post_lnk_ifk ON public.wx_term_relationships_wx_post_lnk USING btree (wx_post_id);
 9   DROP INDEX public.wx_term_relationships_wx_post_lnk_ifk;
       public                 karen    false    320            �           1259    17557 &   wx_term_relationships_wx_post_lnk_oifk    INDEX     �   CREATE INDEX wx_term_relationships_wx_post_lnk_oifk ON public.wx_term_relationships_wx_post_lnk USING btree (wx_term_relationship_ord);
 :   DROP INDEX public.wx_term_relationships_wx_post_lnk_oifk;
       public                 karen    false    320            �           1259    17623 -   wx_term_relationships_wx_term_taxonomy_lnk_fk    INDEX     �   CREATE INDEX wx_term_relationships_wx_term_taxonomy_lnk_fk ON public.wx_term_relationships_wx_term_taxonomy_lnk USING btree (wx_term_relationship_id);
 A   DROP INDEX public.wx_term_relationships_wx_term_taxonomy_lnk_fk;
       public                 karen    false    326            �           1259    17624 .   wx_term_relationships_wx_term_taxonomy_lnk_ifk    INDEX     �   CREATE INDEX wx_term_relationships_wx_term_taxonomy_lnk_ifk ON public.wx_term_relationships_wx_term_taxonomy_lnk USING btree (wx_term_taxonomy_id);
 B   DROP INDEX public.wx_term_relationships_wx_term_taxonomy_lnk_ifk;
       public                 karen    false    326            �           1259    17627 /   wx_term_relationships_wx_term_taxonomy_lnk_oifk    INDEX     �   CREATE INDEX wx_term_relationships_wx_term_taxonomy_lnk_oifk ON public.wx_term_relationships_wx_term_taxonomy_lnk USING btree (wx_term_relationship_ord);
 C   DROP INDEX public.wx_term_relationships_wx_term_taxonomy_lnk_oifk;
       public                 karen    false    326            {           1259    17290 #   wx_term_taxonomies_created_by_id_fk    INDEX     k   CREATE INDEX wx_term_taxonomies_created_by_id_fk ON public.wx_term_taxonomies USING btree (created_by_id);
 7   DROP INDEX public.wx_term_taxonomies_created_by_id_fk;
       public                 karen    false    298            |           1259    17289     wx_term_taxonomies_documents_idx    INDEX     |   CREATE INDEX wx_term_taxonomies_documents_idx ON public.wx_term_taxonomies USING btree (document_id, locale, published_at);
 4   DROP INDEX public.wx_term_taxonomies_documents_idx;
       public                 karen    false    298    298    298                       1259    17291 #   wx_term_taxonomies_updated_by_id_fk    INDEX     k   CREATE INDEX wx_term_taxonomies_updated_by_id_fk ON public.wx_term_taxonomies USING btree (updated_by_id);
 7   DROP INDEX public.wx_term_taxonomies_updated_by_id_fk;
       public                 karen    false    298            �           1259    17577 !   wx_term_taxonomies_wx_term_lnk_fk    INDEX     {   CREATE INDEX wx_term_taxonomies_wx_term_lnk_fk ON public.wx_term_taxonomies_wx_term_lnk USING btree (wx_term_taxonomy_id);
 5   DROP INDEX public.wx_term_taxonomies_wx_term_lnk_fk;
       public                 karen    false    322            �           1259    17578 "   wx_term_taxonomies_wx_term_lnk_ifk    INDEX     s   CREATE INDEX wx_term_taxonomies_wx_term_lnk_ifk ON public.wx_term_taxonomies_wx_term_lnk USING btree (wx_term_id);
 6   DROP INDEX public.wx_term_taxonomies_wx_term_lnk_ifk;
       public                 karen    false    322            �           1259    17581 #   wx_term_taxonomies_wx_term_lnk_oifk    INDEX     ~   CREATE INDEX wx_term_taxonomies_wx_term_lnk_oifk ON public.wx_term_taxonomies_wx_term_lnk USING btree (wx_term_taxonomy_ord);
 7   DROP INDEX public.wx_term_taxonomies_wx_term_lnk_oifk;
       public                 karen    false    322            �           1259    17338    wx_termmetas_created_by_id_fk    INDEX     _   CREATE INDEX wx_termmetas_created_by_id_fk ON public.wx_termmetas USING btree (created_by_id);
 1   DROP INDEX public.wx_termmetas_created_by_id_fk;
       public                 karen    false    302            �           1259    17337    wx_termmetas_documents_idx    INDEX     p   CREATE INDEX wx_termmetas_documents_idx ON public.wx_termmetas USING btree (document_id, locale, published_at);
 .   DROP INDEX public.wx_termmetas_documents_idx;
       public                 karen    false    302    302    302            �           1259    17339    wx_termmetas_updated_by_id_fk    INDEX     _   CREATE INDEX wx_termmetas_updated_by_id_fk ON public.wx_termmetas USING btree (updated_by_id);
 1   DROP INDEX public.wx_termmetas_updated_by_id_fk;
       public                 karen    false    302            �           1259    17589    wx_termmetas_wx_term_lnk_fk    INDEX     j   CREATE INDEX wx_termmetas_wx_term_lnk_fk ON public.wx_termmetas_wx_term_lnk USING btree (wx_termmeta_id);
 /   DROP INDEX public.wx_termmetas_wx_term_lnk_fk;
       public                 karen    false    324            �           1259    17590    wx_termmetas_wx_term_lnk_ifk    INDEX     g   CREATE INDEX wx_termmetas_wx_term_lnk_ifk ON public.wx_termmetas_wx_term_lnk USING btree (wx_term_id);
 0   DROP INDEX public.wx_termmetas_wx_term_lnk_ifk;
       public                 karen    false    324            �           1259    17593    wx_termmetas_wx_term_lnk_oifk    INDEX     m   CREATE INDEX wx_termmetas_wx_term_lnk_oifk ON public.wx_termmetas_wx_term_lnk USING btree (wx_termmeta_ord);
 1   DROP INDEX public.wx_termmetas_wx_term_lnk_oifk;
       public                 karen    false    324            �           1259    17314    wx_terms_created_by_id_fk    INDEX     W   CREATE INDEX wx_terms_created_by_id_fk ON public.wx_terms USING btree (created_by_id);
 -   DROP INDEX public.wx_terms_created_by_id_fk;
       public                 karen    false    300            �           1259    17313    wx_terms_documents_idx    INDEX     h   CREATE INDEX wx_terms_documents_idx ON public.wx_terms USING btree (document_id, locale, published_at);
 *   DROP INDEX public.wx_terms_documents_idx;
       public                 karen    false    300    300    300            �           1259    17315    wx_terms_updated_by_id_fk    INDEX     W   CREATE INDEX wx_terms_updated_by_id_fk ON public.wx_terms USING btree (updated_by_id);
 -   DROP INDEX public.wx_terms_updated_by_id_fk;
       public                 karen    false    300            g           1259    17152    wx_usermetas_created_by_id_fk    INDEX     _   CREATE INDEX wx_usermetas_created_by_id_fk ON public.wx_usermetas USING btree (created_by_id);
 1   DROP INDEX public.wx_usermetas_created_by_id_fk;
       public                 karen    false    290            h           1259    17151    wx_usermetas_documents_idx    INDEX     p   CREATE INDEX wx_usermetas_documents_idx ON public.wx_usermetas USING btree (document_id, locale, published_at);
 .   DROP INDEX public.wx_usermetas_documents_idx;
       public                 karen    false    290    290    290            k           1259    17153    wx_usermetas_updated_by_id_fk    INDEX     _   CREATE INDEX wx_usermetas_updated_by_id_fk ON public.wx_usermetas USING btree (updated_by_id);
 1   DROP INDEX public.wx_usermetas_updated_by_id_fk;
       public                 karen    false    290            �           1259    17435    wx_usermetas_user_lnk_fk    INDEX     d   CREATE INDEX wx_usermetas_user_lnk_fk ON public.wx_usermetas_user_lnk USING btree (wx_usermeta_id);
 ,   DROP INDEX public.wx_usermetas_user_lnk_fk;
       public                 karen    false    310            �           1259    17436    wx_usermetas_user_lnk_ifk    INDEX     ^   CREATE INDEX wx_usermetas_user_lnk_ifk ON public.wx_usermetas_user_lnk USING btree (user_id);
 -   DROP INDEX public.wx_usermetas_user_lnk_ifk;
       public                 karen    false    310            �           1259    17439    wx_usermetas_user_lnk_oifk    INDEX     g   CREATE INDEX wx_usermetas_user_lnk_oifk ON public.wx_usermetas_user_lnk USING btree (wx_usermeta_ord);
 .   DROP INDEX public.wx_usermetas_user_lnk_oifk;
       public                 karen    false    310            �           2606    16912 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public               karen    false    5100    246    244                       2606    17072 8   admin_permissions_role_lnk admin_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_fk;
       public               karen    false    5095    244    282                       2606    17077 9   admin_permissions_role_lnk admin_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.admin_permissions_role_lnk DROP CONSTRAINT admin_permissions_role_lnk_ifk;
       public               karen    false    282    248    5105            �           2606    16917 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public               karen    false    244    246    5100            �           2606    16932 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public               karen    false    248    246    5100            �           2606    16937 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public               karen    false    248    5100    246            �           2606    16922 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public               karen    false    246    246    5100                       2606    17082 .   admin_users_roles_lnk admin_users_roles_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_fk;
       public               karen    false    246    5100    284                       2606    17087 /   admin_users_roles_lnk admin_users_roles_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.admin_users_roles_lnk DROP CONSTRAINT admin_users_roles_lnk_ifk;
       public               karen    false    248    284    5105            �           2606    16927 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public               karen    false    246    5100    246            �           2606    16812    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public               karen    false    5100    246    224                       2606    16992 $   files_folder_lnk files_folder_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_fk;
       public               karen    false    266    5035    224                       2606    16997 %   files_folder_lnk files_folder_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.files_folder_lnk DROP CONSTRAINT files_folder_lnk_ifk;
       public               karen    false    5050    226    266                       2606    16987 &   files_related_mph files_related_mph_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.files_related_mph DROP CONSTRAINT files_related_mph_fk;
       public               karen    false    224    264    5035            �           2606    16817    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public               karen    false    224    246    5100            �           2606    16832 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public               karen    false    246    5100    228            �           2606    16837 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public               karen    false    5100    228    246            �           2606    16952 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public               karen    false    246    252    5100                       2606    17092 P   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_fk;
       public               karen    false    252    5115    286                       2606    17097 Q   strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk DROP CONSTRAINT strapi_api_token_permissions_token_lnk_ifk;
       public               karen    false    5110    286    250            �           2606    16957 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public               karen    false    252    5100    246            �           2606    16942 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public               karen    false    250    5100    246            �           2606    16947 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public               karen    false    246    5100    250                       2606    16982 @   strapi_history_versions strapi_history_versions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_history_versions DROP CONSTRAINT strapi_history_versions_created_by_id_fk;
       public               karen    false    5100    262    246            �           2606    16852 >   strapi_release_actions strapi_release_actions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
       public               karen    false    246    5100    232                       2606    17012 H   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_fk;
       public               karen    false    5065    270    232                       2606    17017 I   strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.strapi_release_actions_release_lnk DROP CONSTRAINT strapi_release_actions_release_lnk_ifk;
       public               karen    false    5060    270    230            �           2606    16857 >   strapi_release_actions strapi_release_actions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
       public               karen    false    5100    232    246            �           2606    16842 0   strapi_releases strapi_releases_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
       public               karen    false    246    230    5100            �           2606    16847 0   strapi_releases strapi_releases_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
       public               karen    false    246    230    5100            �           2606    16972 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public               karen    false    256    5100    246                       2606    17102 Z   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk;
       public               karen    false    288    5125    256                       2606    17107 [   strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk DROP CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk;
       public               karen    false    5120    254    288                        2606    16977 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public               karen    false    246    256    5100            �           2606    16962 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public               karen    false    254    5100    246            �           2606    16967 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public               karen    false    5100    246    254            �           2606    16862 2   strapi_workflows strapi_workflows_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_created_by_id_fk;
       public               karen    false    234    246    5100            	           2606    17022 `   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk;
       public               karen    false    272    5070    234            
           2606    17027 a   strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk DROP CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk;
       public               karen    false    236    5075    272            �           2606    16872 @   strapi_workflows_stages strapi_workflows_stages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_created_by_id_fk;
       public               karen    false    246    236    5100                       2606    17042 R   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_fk;
       public               karen    false    236    5075    276                       2606    17047 S   strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk DROP CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk;
       public               karen    false    244    276    5095            �           2606    16877 @   strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 j   ALTER TABLE ONLY public.strapi_workflows_stages DROP CONSTRAINT strapi_workflows_stages_updated_by_id_fk;
       public               karen    false    5100    236    246                       2606    17032 L   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_fk;
       public               karen    false    274    236    5075                       2606    17037 M   strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk DROP CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk;
       public               karen    false    274    234    5070            �           2606    16867 2   strapi_workflows strapi_workflows_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.strapi_workflows DROP CONSTRAINT strapi_workflows_updated_by_id_fk;
       public               karen    false    246    5100    234            �           2606    16882 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public               karen    false    238    5100    246                       2606    17052 2   up_permissions_role_lnk up_permissions_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_fk;
       public               karen    false    278    238    5080                       2606    17057 3   up_permissions_role_lnk up_permissions_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.up_permissions_role_lnk DROP CONSTRAINT up_permissions_role_lnk_ifk;
       public               karen    false    278    240    5085            �           2606    16887 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public               karen    false    238    5100    246            �           2606    16892 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public               karen    false    246    240    5100            �           2606    16897 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public               karen    false    240    5100    246            �           2606    16902 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public               karen    false    246    5100    242                       2606    17062 &   up_users_role_lnk up_users_role_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_fk;
       public               karen    false    280    242    5090                       2606    17067 '   up_users_role_lnk up_users_role_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.up_users_role_lnk DROP CONSTRAINT up_users_role_lnk_ifk;
       public               karen    false    280    240    5085            �           2606    16907 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public               karen    false    242    5100    246            �           2606    16822 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public               karen    false    226    246    5100                       2606    17002 6   upload_folders_parent_lnk upload_folders_parent_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_fk;
       public               karen    false    226    268    5050                       2606    17007 7   upload_folders_parent_lnk upload_folders_parent_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.upload_folders_parent_lnk DROP CONSTRAINT upload_folders_parent_lnk_ifk;
       public               karen    false    226    5050    268            �           2606    16827 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public               karen    false    5100    226    246            +           2606    17389 0   wx_commentmetas wx_commentmetas_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas
    ADD CONSTRAINT wx_commentmetas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.wx_commentmetas DROP CONSTRAINT wx_commentmetas_created_by_id_fk;
       public               karen    false    306    5100    246            ,           2606    17394 0   wx_commentmetas wx_commentmetas_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas
    ADD CONSTRAINT wx_commentmetas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.wx_commentmetas DROP CONSTRAINT wx_commentmetas_updated_by_id_fk;
       public               karen    false    246    5100    306            A           2606    17652 @   wx_commentmetas_wx_comment_lnk wx_commentmetas_wx_comment_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk
    ADD CONSTRAINT wx_commentmetas_wx_comment_lnk_fk FOREIGN KEY (wx_commentmeta_id) REFERENCES public.wx_commentmetas(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk DROP CONSTRAINT wx_commentmetas_wx_comment_lnk_fk;
       public               karen    false    5266    328    306            B           2606    17657 A   wx_commentmetas_wx_comment_lnk wx_commentmetas_wx_comment_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk
    ADD CONSTRAINT wx_commentmetas_wx_comment_lnk_ifk FOREIGN KEY (wx_comment_id) REFERENCES public.wx_comments(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.wx_commentmetas_wx_comment_lnk DROP CONSTRAINT wx_commentmetas_wx_comment_lnk_ifk;
       public               karen    false    5271    328    308            -           2606    17414 (   wx_comments wx_comments_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments
    ADD CONSTRAINT wx_comments_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.wx_comments DROP CONSTRAINT wx_comments_created_by_id_fk;
       public               karen    false    5100    308    246            .           2606    17419 (   wx_comments wx_comments_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments
    ADD CONSTRAINT wx_comments_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.wx_comments DROP CONSTRAINT wx_comments_updated_by_id_fk;
       public               karen    false    246    5100    308            1           2606    17477 ,   wx_comments_user_lnk wx_comments_user_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments_user_lnk
    ADD CONSTRAINT wx_comments_user_lnk_fk FOREIGN KEY (wx_comment_id) REFERENCES public.wx_comments(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.wx_comments_user_lnk DROP CONSTRAINT wx_comments_user_lnk_fk;
       public               karen    false    5271    312    308            2           2606    17482 -   wx_comments_user_lnk wx_comments_user_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments_user_lnk
    ADD CONSTRAINT wx_comments_user_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.wx_comments_user_lnk DROP CONSTRAINT wx_comments_user_lnk_ifk;
       public               karen    false    5090    312    242            5           2606    17524 2   wx_comments_wx_post_lnk wx_comments_wx_post_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments_wx_post_lnk
    ADD CONSTRAINT wx_comments_wx_post_lnk_fk FOREIGN KEY (wx_comment_id) REFERENCES public.wx_comments(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.wx_comments_wx_post_lnk DROP CONSTRAINT wx_comments_wx_post_lnk_fk;
       public               karen    false    5271    316    308            6           2606    17529 3   wx_comments_wx_post_lnk wx_comments_wx_post_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_comments_wx_post_lnk
    ADD CONSTRAINT wx_comments_wx_post_lnk_ifk FOREIGN KEY (wx_post_id) REFERENCES public.wx_posts(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.wx_comments_wx_post_lnk DROP CONSTRAINT wx_comments_wx_post_lnk_ifk;
       public               karen    false    5231    316    292            )           2606    17364 &   wx_options wx_options_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_options
    ADD CONSTRAINT wx_options_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.wx_options DROP CONSTRAINT wx_options_created_by_id_fk;
       public               karen    false    5100    246    304            *           2606    17369 &   wx_options wx_options_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_options
    ADD CONSTRAINT wx_options_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.wx_options DROP CONSTRAINT wx_options_updated_by_id_fk;
       public               karen    false    246    304    5100                       2606    17241 *   wx_postmetas wx_postmetas_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_postmetas
    ADD CONSTRAINT wx_postmetas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_postmetas DROP CONSTRAINT wx_postmetas_created_by_id_fk;
       public               karen    false    294    246    5100                        2606    17246 *   wx_postmetas wx_postmetas_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_postmetas
    ADD CONSTRAINT wx_postmetas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_postmetas DROP CONSTRAINT wx_postmetas_updated_by_id_fk;
       public               karen    false    5100    294    246            7           2606    17534 4   wx_postmetas_wx_post_lnk wx_postmetas_wx_post_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk
    ADD CONSTRAINT wx_postmetas_wx_post_lnk_fk FOREIGN KEY (wx_postmeta_id) REFERENCES public.wx_postmetas(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk DROP CONSTRAINT wx_postmetas_wx_post_lnk_fk;
       public               karen    false    5236    318    294            8           2606    17539 5   wx_postmetas_wx_post_lnk wx_postmetas_wx_post_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk
    ADD CONSTRAINT wx_postmetas_wx_post_lnk_ifk FOREIGN KEY (wx_post_id) REFERENCES public.wx_posts(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.wx_postmetas_wx_post_lnk DROP CONSTRAINT wx_postmetas_wx_post_lnk_ifk;
       public               karen    false    292    318    5231                       2606    17215 "   wx_posts wx_posts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_posts
    ADD CONSTRAINT wx_posts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.wx_posts DROP CONSTRAINT wx_posts_created_by_id_fk;
       public               karen    false    292    5100    246                       2606    17220 "   wx_posts wx_posts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_posts
    ADD CONSTRAINT wx_posts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.wx_posts DROP CONSTRAINT wx_posts_updated_by_id_fk;
       public               karen    false    246    292    5100            3           2606    17487 &   wx_posts_user_lnk wx_posts_user_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_posts_user_lnk
    ADD CONSTRAINT wx_posts_user_lnk_fk FOREIGN KEY (wx_post_id) REFERENCES public.wx_posts(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.wx_posts_user_lnk DROP CONSTRAINT wx_posts_user_lnk_fk;
       public               karen    false    5231    314    292            4           2606    17492 '   wx_posts_user_lnk wx_posts_user_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_posts_user_lnk
    ADD CONSTRAINT wx_posts_user_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.wx_posts_user_lnk DROP CONSTRAINT wx_posts_user_lnk_ifk;
       public               karen    false    242    314    5090            !           2606    17268 <   wx_term_relationships wx_term_relationships_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships
    ADD CONSTRAINT wx_term_relationships_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.wx_term_relationships DROP CONSTRAINT wx_term_relationships_created_by_id_fk;
       public               karen    false    5100    296    246            "           2606    17273 <   wx_term_relationships wx_term_relationships_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships
    ADD CONSTRAINT wx_term_relationships_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.wx_term_relationships DROP CONSTRAINT wx_term_relationships_updated_by_id_fk;
       public               karen    false    5100    246    296            9           2606    17558 F   wx_term_relationships_wx_post_lnk wx_term_relationships_wx_post_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk
    ADD CONSTRAINT wx_term_relationships_wx_post_lnk_fk FOREIGN KEY (wx_term_relationship_id) REFERENCES public.wx_term_relationships(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk DROP CONSTRAINT wx_term_relationships_wx_post_lnk_fk;
       public               karen    false    296    320    5241            :           2606    17563 G   wx_term_relationships_wx_post_lnk wx_term_relationships_wx_post_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk
    ADD CONSTRAINT wx_term_relationships_wx_post_lnk_ifk FOREIGN KEY (wx_post_id) REFERENCES public.wx_posts(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.wx_term_relationships_wx_post_lnk DROP CONSTRAINT wx_term_relationships_wx_post_lnk_ifk;
       public               karen    false    320    5231    292            ?           2606    17628 X   wx_term_relationships_wx_term_taxonomy_lnk wx_term_relationships_wx_term_taxonomy_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk
    ADD CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_fk FOREIGN KEY (wx_term_relationship_id) REFERENCES public.wx_term_relationships(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk DROP CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_fk;
       public               karen    false    5241    326    296            @           2606    17633 Y   wx_term_relationships_wx_term_taxonomy_lnk wx_term_relationships_wx_term_taxonomy_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk
    ADD CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_ifk FOREIGN KEY (wx_term_taxonomy_id) REFERENCES public.wx_term_taxonomies(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.wx_term_relationships_wx_term_taxonomy_lnk DROP CONSTRAINT wx_term_relationships_wx_term_taxonomy_lnk_ifk;
       public               karen    false    298    326    5246            #           2606    17292 6   wx_term_taxonomies wx_term_taxonomies_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies
    ADD CONSTRAINT wx_term_taxonomies_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.wx_term_taxonomies DROP CONSTRAINT wx_term_taxonomies_created_by_id_fk;
       public               karen    false    246    5100    298            $           2606    17297 6   wx_term_taxonomies wx_term_taxonomies_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies
    ADD CONSTRAINT wx_term_taxonomies_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 `   ALTER TABLE ONLY public.wx_term_taxonomies DROP CONSTRAINT wx_term_taxonomies_updated_by_id_fk;
       public               karen    false    246    298    5100            ;           2606    17594 @   wx_term_taxonomies_wx_term_lnk wx_term_taxonomies_wx_term_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk
    ADD CONSTRAINT wx_term_taxonomies_wx_term_lnk_fk FOREIGN KEY (wx_term_taxonomy_id) REFERENCES public.wx_term_taxonomies(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk DROP CONSTRAINT wx_term_taxonomies_wx_term_lnk_fk;
       public               karen    false    5246    322    298            <           2606    17599 A   wx_term_taxonomies_wx_term_lnk wx_term_taxonomies_wx_term_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk
    ADD CONSTRAINT wx_term_taxonomies_wx_term_lnk_ifk FOREIGN KEY (wx_term_id) REFERENCES public.wx_terms(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.wx_term_taxonomies_wx_term_lnk DROP CONSTRAINT wx_term_taxonomies_wx_term_lnk_ifk;
       public               karen    false    5251    322    300            '           2606    17340 *   wx_termmetas wx_termmetas_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_termmetas
    ADD CONSTRAINT wx_termmetas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_termmetas DROP CONSTRAINT wx_termmetas_created_by_id_fk;
       public               karen    false    302    5100    246            (           2606    17345 *   wx_termmetas wx_termmetas_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_termmetas
    ADD CONSTRAINT wx_termmetas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_termmetas DROP CONSTRAINT wx_termmetas_updated_by_id_fk;
       public               karen    false    246    5100    302            =           2606    17604 4   wx_termmetas_wx_term_lnk wx_termmetas_wx_term_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk
    ADD CONSTRAINT wx_termmetas_wx_term_lnk_fk FOREIGN KEY (wx_termmeta_id) REFERENCES public.wx_termmetas(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk DROP CONSTRAINT wx_termmetas_wx_term_lnk_fk;
       public               karen    false    302    324    5256            >           2606    17609 5   wx_termmetas_wx_term_lnk wx_termmetas_wx_term_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk
    ADD CONSTRAINT wx_termmetas_wx_term_lnk_ifk FOREIGN KEY (wx_term_id) REFERENCES public.wx_terms(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.wx_termmetas_wx_term_lnk DROP CONSTRAINT wx_termmetas_wx_term_lnk_ifk;
       public               karen    false    324    5251    300            %           2606    17316 "   wx_terms wx_terms_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_terms
    ADD CONSTRAINT wx_terms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.wx_terms DROP CONSTRAINT wx_terms_created_by_id_fk;
       public               karen    false    246    300    5100            &           2606    17321 "   wx_terms wx_terms_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_terms
    ADD CONSTRAINT wx_terms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.wx_terms DROP CONSTRAINT wx_terms_updated_by_id_fk;
       public               karen    false    5100    246    300                       2606    17154 *   wx_usermetas wx_usermetas_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_usermetas
    ADD CONSTRAINT wx_usermetas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_usermetas DROP CONSTRAINT wx_usermetas_created_by_id_fk;
       public               karen    false    5100    246    290                       2606    17159 *   wx_usermetas wx_usermetas_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_usermetas
    ADD CONSTRAINT wx_usermetas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.wx_usermetas DROP CONSTRAINT wx_usermetas_updated_by_id_fk;
       public               karen    false    246    290    5100            /           2606    17440 .   wx_usermetas_user_lnk wx_usermetas_user_lnk_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_usermetas_user_lnk
    ADD CONSTRAINT wx_usermetas_user_lnk_fk FOREIGN KEY (wx_usermeta_id) REFERENCES public.wx_usermetas(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.wx_usermetas_user_lnk DROP CONSTRAINT wx_usermetas_user_lnk_fk;
       public               karen    false    310    5226    290            0           2606    17445 /   wx_usermetas_user_lnk wx_usermetas_user_lnk_ifk    FK CONSTRAINT     �   ALTER TABLE ONLY public.wx_usermetas_user_lnk
    ADD CONSTRAINT wx_usermetas_user_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.wx_usermetas_user_lnk DROP CONSTRAINT wx_usermetas_user_lnk_ifk;
       public               karen    false    242    310    5090            �      x��}�n�Ȗ�s��8��N#��qq���q�!8�Ag6�_�e[!Y�)eU:�T�JrٕZ{��c~6)3��fNp!L&�8��E���s_����B�����9����`��7��!�OD��z��Iru7���/��A"E���\jS�,0J�]p�%0U�ƽ�߆T����n��&�=�m\4~;�~�HQ���׬���]������$�'EA��5��U,��bU���C�AU���:<F�ߍ��b �^dj�Qaqb���D^�|�Th����9-E���iq�w:�Ce~`<����dr�2���oEZ�xm����K�.�<���2�P����r���*�~����Ӵ���k��v����ճ��ӓ�Ф��&ͺ�!�,)����;�QAy7��J�.�̫6��cZ�ѷ]���F����;)A��K�P�dyL��5�Xc�h8�)bw�g��	5*����mې/2�/��
�v�=���e���u���-q�I�fE���Q�7,�����5�	/���-����c\�3[���U���*/��IO+U�>�}�]�V��[�m��>5��	+���(�E��������T^�����K/-N�5Cj���`46<=[��������T�	}�H[z��נ~�������/�5N�:}t�;�}}�M۽=�,W)����B՘��g�jO>	|'��Y��_XL��P��k���s=��ǿ�������"��Y��l?N¬ >�^Yg��>�-�N����[��������Oȿ����ܮ�������:x��ΛLe�T�/��?��R�,iP��Q���7��C?�>ԅ>��Ɉmd��L^�,7f@u@����&lE�rY>'_�~�������Nܩ'����֣~�%���mELK�M�mZŅ��͵n�.3�F9��;�,~�'�9��%i��U�I60E��S2x�����&�h�a-K4����CŦaYR�C�\��S�q��l�� �ۭ�~&�@���+Q��i��ȑ���'U~����D�Om������0���W:jQΧ�G��M��&{��2\<�#B��g{��Fy��;I�ڐ��eM�L="~��X>ԥot'��	AÃ�*�ȋg��)#�l6S��Nn?�b�n[,�.��za���k�"��v=Ax�e��3+�z�6ɒE��!�g���b��9���}��K�h6Y�M9W�Q�Vi#�R��Yl��6����I����E�EeS�s��������r�>�V���gZk���^Z�p5PL�9	��y�랜�~
ް�~���`�jZ&8Y+���5N3a�s%�"Y=�%�W�cq�~ƭ�f>Z����5A�,b�@Q�wyk�Q�$tLEd냷�3#r�M0�s���bsh��i|��Ѥ@nq���3���0/�b�Qf�,�k�or:ל���F|��gN�4��9��T),�e����ݩO���~���@����hc��>`�Jt���T�e�}��[%�>~f��5q�W*�H�!���L�O��8vk�b?�[�}����5���ǋ��(~����+��g~t�^�&��c�'�8�h���֩����j?3T ��i⨟�4"fa�ʟ�!�G��7���� �
3MӌUʴYgK_j��p|�d��}�D+ã����~�@����5�f?��eDM
����5�a�-�I�t#"4ꦲC���죘����C��
t���J�f������`�)��ǛV	��%�0��]L�*�f������C���Cքr��V�u����u��l������a#Io��2�P�)�l�xh$ENY�Fg�~bL~|����}�̇�����V��W�H� D�����n6���;#���9�qs���,�l�:�ڨGv�3	.iވ"k�}�05G�����|��\7��}��G���BʋI�^F�G��K�v��;�;��&��$�Ɨ\���V^�9�7h���Ɲ��!�)S�R�~ڛ\
ѭ�&᰺�r�i�]F��g2��I��Q� �D��ꢃ�dz��ǎ=�L������X&Ǚy�78He+���]e5��:����P�
���G��)�0���.��t{����T�ZFm0UaQ�LE�6�"�Q�T�z�p��L���_Ú'Ӛ�UᵰQ���\����7���d04�Cn��+�Ef=S�a��_�xu��;-?��z�=�h�Ww�3#	�&��~.�Eky4����FGy����ό�Si7ъAť�T�!���7������p��ʽ�VrM��6qh��ј��sԥɆmv�3#����D�6�Է6��4(���XW�bE7쳃�Ya����+� �!/d�"o�:mt�B;��1�$����_X5@��Z������t��]6#~����ϼ(�Y� :����ga;�&�c~��	��gV� C� ES���A����K��z��q���%6Ư�L���Z���I���9j/��`���,%62�&��� M�!$�_�\�+j�ғb��1n��{�����Ӟ��fC"!�E�x��A���6��J�R\�t�k�����J�^��m]NZx�:��ߩ	�(���7*�����4S�7[�f.�Q)m��*� �Cl�>��˹��0��=�:�&[hȝ��g���ބ;O�LLt-��)��s=?����w��(����S�ͪ7�4��៷����M��:�i<>�����0�L¡�݁�K���s��M�Ώ���
�naz{;9���]b�G�_�1񆟂�}e�BE�_�J��אW�bL_����?t��+�ӣ���{���2�6�؊�c��fMcC��t(��p��wl��e������mw,ŀMم�O��zį�d�\?��e�}[����;�c+l��/X7|�V/Oh�{ƞ=[�0gw�s�:�a8C�^vݰ��^�|׸� ��@�����u`���CddiQXq��i�����pyr��kB�O���?=)���ߩK��,� �S�NaX�0R����}��Jg���dx�� �A!�,a�;��7���ev:!Wy�����z~��ח���|#�wpG
d��!�Ɛb������;�{x0�BUl�R��Ϫ@k�U�ZU�f��B�ѫd�}�h�u�w&���"ә)�Ƕa}Έ�����c�MM��ߨ7qwLX��>Y�f9�Ξ�p4WI`4��ac؄�t�oB[�]_3�%��J��$G���?�?]z��ث׽�����ۻ�u�9�F��;������aE��'�Wp)+�բ�
n1ω��睊��׿o�&L>#�����2�u��pֈǺ7�`�p�r�Ü�ݸ�_hRV=W�*.�R�SP�&�>0����wm���]l���˒�>�z�SᏵ�����o��[Jx{�a2���3�O��;���.�n�v�ѡ��_�?�g����N��l(��V�M�/[2BƲg��5�şNt}��x��k��~�ސ�?Cxb��}0re! ��2�4�5���J���pq`��!� a���Y��L���a!I��<�eP���;ʞۅ��ԮS�8��v���_��qz&k�#y'~�	�q5$J�l��+��Ţ����Bu7 �Wv~r:ꎛ���<����|=d9?]7��5W<A~�����I�xy�y�DA�O��`|H����6q�/��&�:-)2m�,^��@O���pۉ�F���;��N��dU�<ǓGDA��3����E|c�����}��Wfh�?�k d��;�0w
�ˢ���W�=�_�!�3�/�oӋ//]��7g���]O��������o�_���^^J�+��Ǟ:���g�Yҗ~���vBb�(��ݎ��iq�����_ƾ��]M\��g�Kf�alw`۝�T��~��uPS5��!����"�IN��B��w>�~+�g���`w�gR��Ħ��s�M� �+���|v���v"I�#(R�'e�6�A�~�,�n%~�џG��Z{?[C�k���1��t.m�>R"���d���+{�cc�RTu�b��ڣ���m��Q�x��p{��Ý\)@2�>V�?���YW�x�h~�\ޞo�Lzj#��?�/.%� ��+2�d�1�U����� 9  �y��:��p���@��U��^=ƛG�sٌ-=0H����WA�I��}��p�V=G�3Q��V�Eف��=k�J����w}� ��rz��a��x�*(����B���?��1<�2�hM�����IZ�����q�7aw~���T-~.�
��&�d���{����\"}hv?��fr��K��?D��p1�y4��9��L��r{�dwH0��d�,O���:I� ~h5�����z���ew��e/�N�n/���(��,-��Z�V澈4W�r`0�U��x�o/���N�	P�bIBo�e��Y6��A�}9��V�F��'�>����LY�{-U�t�����c���Y+���!�}�;>�@*�dALI/�@�I��CK�_�x���p�O�5kzy������i�����%��D��;�hK6-�$K�ue�dIEW��cs�w����<��&��Ҭk��h�`>��?0����9$OL�0��	����b�t�_�}�<�B�܌k��*~�L��:۠����S����~���	R�S��*���@��q���{&7�zw�W���`�6��`u)��g�������+����sw�V�]�l�VNB���r\�K�m��+�3y�`g��Pe��2��t?��fف��6�H�o/�n���xV�r�qܱ��U���GQp`��oqY�9��3�����@s9�_I����*-��@1�7�/�]q������������<�UBu�nFC������\��:~�w�pw*gͣcSTfQX��7ld��������xf�9��ݱcM�Y�`�e����NI�\����17qW|A[�q�0��d�ؒ����v���H�	;�#��
9�������Uup@�_�����Q�L��צ�wg}�(X[椡�"��b��r����X�k���m�⎅Y=t��=çp�����Jt`;˯e�ec*���-KB���d[�X'�Ҵ^�2?0��e3���ב��k��݂X(�]Љ��,�<�#M��>T��^����ҧ��S��w�gH<�볺�I9g��'3�]<%짝�q��׵��#<UH��m�֑$C(��x�,��^m���;�P�Ƹ�R�i�/}Y��l�6ٷ�\��N�w�g@/([C��[6��e/�<0�{[�k���)�(�+Ү�|
�6���GЌU�*ҏ+��|���r��fx{B/�)p��%ƞ��#����-�� _K51#X㱴h%'��m=�l����y��G�y�|}u��e���s*o�K`����}ƛ>����;
���zّtt	+5�&3HwL���>��ywt���i:�я�,Z??:|-���t��g����A���q���2Dc<�������ɜ;��n�W��Xh�y�DHG!����܆��jnF��n?�b`�g�"����lIgLL^P�;���.����3BO�]�0��_yG@��5*uC4c6�߄T-�����ޭ�
�?#����EA��Ԥ3񉧳�mBĦ��_n��޹���b`��L��L,�bC*�AT=ҏ~�ˊ���/\�� �,Q
��q�BoUϯ�����P����V�6�FJgf.mY�h��4lH�I�1��m�?w��V��^-M��[jc*K���c8�O���Ŏ%���kw8cP�O�dl�٣v ~�C<5���w����f��!M���$N��@l�y�l��{�/�ij~W�=j���"
�؎�S#GK܌2i${`��O��w��10VCYQ�iC�����9ПSKjcs��h��*�]���6��C]�1e���i��.�q��>'��:rP��(���h��g���[����t.���N��;�H��Hv�Li��2�X��:�;1��s�
���{��@�Q�i-���u�����?���/;�v�������꣧;Y�:n�>�U����l�$�U~InY��"����c��F��Ll�����+�.Y�>���;R`�q�6i�l�z|���l_�ǳ�cbl�&��+B	0�0YY���I���iP��҉/�p!�F����(h�*�(F4�CEp��(��|�r�+��ѵ=�����
>�$m�±&���å��W���7�pGLd.����\
�
���+fr`3�C�[\r��5;��]� �9�P;֊4c�O"ے�.�����~7a�������˪�`���p*r�X����E�ܾ�m�_���3
�$�\�S�%���D8��EG�.��݈��g�v���=&�d�pF�0ȇ.��
�7�-ܭ~~�q��Wď[Z��}�$���/�lTh;���&5�BIQ�VF�d�����c_GpI��}t{�C��y*��!�g��Y���r�e���ǀ�7�N�����ｻw;LF�h�A�)�*�-R�j&s���w?�v�8u'�h��N�[e�f"���ؘb������Eתgw�n���*�,����Xg�Nʇ�2�����?�R�����c)N����f�m^�e��yhs��_ػN܍;ʐ ���4��	�=�KD��S�\�_zwT�@�Ѐ�JY�h�U�����6�kAn�&{�YpA[��ت%�Q���ޠ�2�̷������x����n��0��6�L�d�2 %������u��O;vm3y7�����#�#R��]F\�������Fv���� ���hn��d�Y-�Fف]_u!��@#��(����P"�������<{ �}ͅW�Ѝ�mw�g ��p��ˮ,�g�<�}xy��>�u-��{w�� bfpAU�@YL(��NFၯ�����W��n��aGrR���q�{�O7�C[��-.�Bo3;��%	Z�E(��d������%^����:ڈ�M�"�*P�~0f!�}��6�X�-�ɿ�Y�+���\���( �q⍬h��Z�e��}���_O}	kwԇ@��Rψ
$�b* �� s`��V�ڨ�wpG�y��XW^�bd"�<_��ȷ}�
��8b�T�����بAa9T�BҨ"���r��,�^��Q�����,Q�y�k���xZ�#{˿b��J��"w�w��������k[��         g  x�-��m�0C��a
K�s��?Gy��FH\��MR	KO럗���Ӧ�ӗ-ݗoۺo?v��k����{y�Ua�JcBk.��w�*;z~F�]�1�*{۸��3h�����4>�'�u�il���D�S��G�IK�<��V�x,O-�����X���؞��8^�V\/�	�x^Zh9��v�2��h�M\V�eym+�rzi�@�奭 -��v�<>�M����>��ϧ��>���U���V�s��tj�&h5}����ym�V��	Z_�hu}i�A��K���t����5m�6ӗ�,_�V��drl�6��k��}=[���{�m^�:O���-I���o����m�V�^�A[�[mM��vD���A[����:~���$��@��cH*�#�!���%2$U�H����ɐdF[@B�@Ւ�yv@����]b�=Ы��.��2P�$��O��"!epk#�W�W�Kb��.�>˯Ⱥ�h��l%����Bf)Q��RN�
���DbK,��J����%�e^�\b���D��+�%�%�JHx���^b���ė�,a �%6�����ySv��8eW��T!� Q({�Nɼԋ��C�)+Ȍ΍��!��A�Ȇ/�F��/�� _��4�"H|Q0ă$��@�
 !�� �K !��v}H0�����ꁭ�ڡS���[��_mZ����mV1қƴI�Ao���XC�)C���l2�jc�,8�]����m��Y�~�>�5o�4�N�t�ʟq��/C�EX�qPxk�6BȒq��6�5\�sn�y5��9���{[j@�zq��jڃ�n�mZ��^�m�Y�k��	�5��Â�~���'���h_�x��r���k.G\�x��r�&	�S&mGN�1�Y��(0S]�"��"���Tg���L��*�3%���T���Lu��Ϝ4�n�b )QE��$`�C�I#��b4�+�"HS݂*�4�/�"LS⣊8M��:P%DJ/b��g0�1�DI�E�ǄƫytѴ���
F��lV��lV����੯}��l����������M�/��T��)����)���),;tu
��tu
��t��)�tu�Z7�ۣ��)18$-��#t����q�?�&d�      �   $  x����r�  k���HX[���iҺApD$�<d��#E���Lf(`�b�*2գgQ��ō�T�
9N;��a�z�H�^M��/�c@
BJ�S�'����Q��q�c4�-����e�W5TuS횲,�l�o~xYO�!*�U8��e�=0�tbnktK�)v��6������[7vrp]\���8?�z��ٍSզ��h[0F��)Srj���?s�/�:��v�~b�Y�xW����_��R���&tW� �I�Լ�b��a���G��Wa��l	�yS�?B�=�PdY�	���      �   �   x�u���0E���4�J��0��\0,E
V@�
�^��&7��'7PY�«��[�e'ݏN����7�� �@i��Z�`Y6B��|o�E��a��^��&�?��x�C�7����zW�d�Q���nc/��Ǔ��'*���r����;�w �fNm�Mp|���a��|����b�0>��=A            x�3�4�@.c i��\1z\\\ '�      �      x������ � �            x������ � �            x������ � �      �   W   x�3�,K�(�-���0K,�-�,J1N�4�L��t�K��,�P�H���L��4202�50�54Q04�2��20�333'Q܂3���b���� ���      �      x������ � �            x������ � �      �      x������ � �      �      x��]{s9r���)xL�?)�ky�/��%�}T]n�v�v�R^kD��9gx��RU�F�^>I�~6f0�&-T6gj�i4�F���Ƴ'���ʊŲ,��h�H��
�}�]�U�d�,m�7i}vF�9;k7y���Y�>�}Z�M�W�����E��$y:=k�6=��*MZ�O�4����j�u������t�dŏY���g�"Y�ӓ�*�Lڼy]V�_���/�UZ�����> i���&!,e+���*kп�0�j�k�'i��A�W5"+�~@/�f%)A@�S/�l��=D6y�L�˜���fu����(-؜1�>�%x�4i���C�iV	��݆�˄�`3͋B0+i�0y���k�EZ�ANه��4��睕�`P�����ISC,�<J�*��I^k\�d ��f�<� R�>C�X١V��
^g�j$�C����V�b�F�����᭭r�5�8g��c�*��һ�0Ji65�~ܖ�i╕��T���.�e������)�K�*���4 AŞ��<��*�M�R�)� Q�&M�zj{Y8�W6���H!��6+7��0�*�㊝縢���|�Uu�c����A�j��}�����X��zG�0���n���OX�߽��9d�M"v���Q x#������X'%ϵ�$�
�I=�g���Y����z���f�Wt4�ڵ�b�x@��:��AW����X±�>bӇ'��?�e��ן��}1*���~S��r�� Ɓ1��
�<���I�&9��n�̖��A��/4��W�����$VM9*��P�d�����c%A<^Nڏ�
��!)ٓ�+Z�ҥ�Y�B�AU���ĸҞgX<88L
�T`���q�6�"	�C��%�"�=S������W-u��s���B�����t����(��Ϫ4O�:���GDK���l8ԣR�O���v��:]���]�8��F߇�&[���8��,�
q��m��+	2����!�%nd���1���3Ȧ�V��\�L3=f̤+{E�O: :�"�*F�u������H�wLP�UP5�<�V�Z�!��t/Hhj9;;7�����pB��oG����Mu�}�l��Q3�9(f�1 �v��}E}ds>|g������8�Zy��6�Ѡ�l"�q ��u�j�+�p��eiZ (�:t�$s��(�?�a0��4_��4���쮬n.���_3�ɮb��0�E�2/�� r���>�`2q(��d����v�j�յ+ȡ�|5[BZ�1��@D��Y����a�� í*{�G_��E��5������iU���U�D�-��YT�Cp��?��Χb�Ɋ�3)�1S1�#숰#>ءkS��C���p@�[��;���H�D#��[��d��mH�AS�6�
��BX�ν� �S����UR!�iȪ�k�?T�DP�3�(�!
A��#a��>���,X����e���@�Rh�L����,h�	?�׆m+��D�A�4I�$�'Y6d�ud��cUEM�߼*�z_�EP��m�e�U=��*�d:lZ�4�A%�sY4��2�S����#�YqY�
5�Wm�TJ1��r�UV#��gO� u�:Tn�1XU�e�X�j/��^s%|¸})k�m,�#]"������x
�"F*MSemCM(������#�3�28��}���ͪt%��Y˃Ѓ�����a�U�Pw����p}����%{�5Y5�,�v�6h�x����~�۫t�����u��g���D9~�U��l�*�H�gN�4��Y�N�P�)~�M�e��~S�gR�w�S�w�A
�xS�$�����J�����n���&M(�M��"�E��d.�"E�SZ\��Ss�Z d4�)�K��((�Pm���J7���SK爗Ej830؅��=01z�?ʬx�U2'G�$��&���h�!! f��r��o�0p�#�֚s�P{k�~vۢ&D�YմHU�������2oׅ���;Ȳ ��J/�*-��WtV`��1�zY�J?`��ĝH��҂���jA�!���w�J1��tL�6ϕH�F���E�@�d�5&�j�ԏ~�!u�(`�Q �Ћ2�l����s�&(�7���"����[�aBw���U����I��y�+{�` w���6"׈\#r���0��K�>0���D��̞@:��R�K����խx�P��S�#
t�Ѓ����km��������H�e���'d<.�ͭ�͆5�z�d���UZ���bAEG/:z����u���a(�|>Z��{+�aE���h4j0)���g�'�+)G �f�7��hbwmb��lH�O��R�*RO��t���I��'N舷��X�����0=��ӹgIV�����x7��0�J�(����'=}xP�.����S�v���B��S��(:K���J�5�\Ƥ�u&A���=�u��,�j��YyQ��s�y��,��l��3R�5�d�Ɣ��XQZ �Rqm����2�+�&/�dߤX�\&Б4�N��4����
�;P�}��kȲ�3QED�*���(!���u�a�U���R���s1�����h��%
e�|��b�|��L]�-Ѳ�`ϔD��|O^�/QN��|��3��ߐ��z��I62�l�����Pv(c-X�����g��(K�f�cBha!��]G�����^�A��+8��&�L�ј��0k&sg����jQ[g�~��:fH���G�u��.��!ʷ�g�G"�p��s�D�/��Ӭ(�ND��9c�M)03ta�1�K.p.�@�M Ux�>"�Ǆ��"��֨�դR�A��[���R��k�8x&i��ˈEk�(��/`S���Y_�	t���5_����L��/������0�͝�O�O�K��\;�,e��GR<����Ͽ��G<&*#�n�Ds8�9>T�S�u0dg^ ���$b����	��	 :nv ����w��^�o��}��x�j��B+m�����B�Wiȿ֗>��*kro���d����iϒ-����Ǉ����+8ϧ!���Eh���C�NMt���P�:���㡷�X*:姅�z.�go�|
�<hSԿK�	.x�!��e�8�R���ݴ���]B_)������O���!��	?�m������Hǫ��t���;v�	�ž<D���A�'&�ǉ������i��nI���A��X���/Jb$$�9V���X5�7}��U�V��yI[5X_����E_\��+����,\'������Q�jhB7�U�I�����Á�9|��N�W���&�]�~��{8#!��@�S���f�!�_�lOa_>$_80w�ZŹ��]�&;;��0�d��o]s�l��67e݌l�����,�5)#�bT��'�`t'�;q����t'�"{x���D�4���l�¿�W�m1�6W+�̼����Epz(��z�E�8&sv����8���{:�E�1[�l�	��z̜��[�f����K���y"QbkWI�V�=J��.#e�aF�}�]�D�d��*x�}�%ms���,L-mW\Ul^���N2yv���F�_	I��ֱ۲2g꣄��ky$f�j��sM-�b+u�v-;TBO{���>��\�S��z�^�����4rG��i���Y�
*��/������[�(��h���>:S�}�Z]�25V��e��_���6������C�\X�
��q)����
��s��P-Dޤ���#��I��M���7h8RN;"º�![q.tȺ!DV�D�Q��R?Z�>;�9��t����P����K�e[��˖D�wv$L���8��.iaŦ�4�*I�v۔�f!�GM��hk��a�j¶ɢc�9~ɟ��1�7��A�q����g�p�@G����!�	�/Z�'
���P�SImVMGN�NGt��7Y�mGKq �v䌋)N?,�j�H+�Q���Hv��L�� �]z"m��u��(�0�:]eķy�m�0r6����i�{����4[�� �ra|���?�v���y�W�մ��[�kwL�U��    ���.�J?��q"�t�p�b���\�mE��������̂�������1��Jo=tr�p����]���L�Y@�uJ����3�'�F ���"v��)b���v����L��{��Dl�1��9(�i�n��^#0l��
����w��C��r�#�h���8`�������Y��0vYˑH=��c��Q���a�D8"� �;ݒD��R�_�$��#=�yK��a�Q;.��M� 's2s巅�X)��I>�E��\�"�����|�d#+Vhz�X�Փ6�`��`��L��(��Q�Ge���G��c�P�(���I���Dzf��[kxgG9.��:�/ݚ�t!bR�#���L�-��f���^��c*B�y�xE���kDFfw-�t��ې�/^?LE�mҮm�@df�� ���tx����u�	�4Z�PH�>x+E�Z�%MZ��t�����e�v�r�?Z�ohe�j?V���"�;@��e>���:F|J?-��F�H�3�1�E���Q����Q�8�h;�@����J(ZO�Ml��Gٳ�[*#?pދ�ǓF"*D6Z��N)���x�ȵ5�D%}�Jz��t���;��˴�]b�d6�H%`��xoGb�v��C��1���O�F+��aYyG�����B����9�ʿ��u+�ʽ>��G�|��y�}Wf�ǾS��\YI��}�v;�>�|�� �@��V��8���R{�T��~5 �ԥ�{ �� �]�dkw4�b���X�]�zg���c;z����i�]���q��i�+vgRH����Q�'���Wi�r;���4�� 0";�����e4��0~$��a7��
ݽ�7нu�^��eV��e�i���J`�$,������wv�y�i�G_�g�ŏ~�^�^e�Y�;'��/��U�z�Uy��K�]��`�C{1�ޚ*. ���o�Q���>��%>��V?%H]!��=Q�Ё#F7%�)���*�0���	���|4�����QO�`�E!X�`���!f���C����u5/KW�ӱ���lJ4]�)���E�n�ƥ
uݺ�]�K4qa(w��0��^��kU9m̧Dpx"�X�V�0�h�;������S�D�h�fW�<f<4���?����X4W�\��\�@~���@�w�p������J�
y��&���V��m,Q`��ܰ���v\�E~��8-d,)E�rH�W\$�_8�9��YY�X/�<�%�eZ�i[�uS���={'ۖ$�&,&�w���V���8���X}m���\�B�gڶ{�j�k�7x�a��#��O�՛D6�sO23G�|8�Y�@G�m�����6T���p�G.V�� ��
>(��L�
 ܓYϗ���>4���ߨ�:>�<X_ͺ�T�����3�����゚PEp����ٱ��T�� ����c���أ�$�dlm2C�x�ITQ�E�i�5�.�V��GM"����dQ�!ؐ��n�����r�x\�)#�<$Hii����%�܀��OktBa�c���\Gs�X̵/�7���{�$um��N�Kw�O�5���ӻt�s����{���Ex����O%l١�� �� f����~��'�qFf;P�:�Л����3��o��	Y�!^�iX�>�6D)�d}v��h'?�}Z�M���L�E�ߨ��2˛�R��[�L�"N^g���O�bX�?fiN����NP��j�xB/��S����y�����~�d��*k�,Y��*O.R�ҦDٜՈ����5FL�PX2&Z@����Ҍy��`JJ+6w�����0���qn~w��50���aW�S&ϲp�l����JއWڙ��� ����+Z�q�+p�`^u��_R�Ǜ4;`��>�½�Am��$�p_��B��;�mĢ��
a|�:��@RE��É(⋍��9�(����S�R�>��T(�<�E�scG�^삖A�U��][���j.�SQ�Q����WrX�����S!�çȔ`2�S&�CNه=5��ɡ�ha�L*Ľp���B1v� �lǯ@��f�@����郚b�d]����/ԭ]X��'ح��I��窤�0��E!FV���@ZKw�u�����TD�":�Bł
��r-4�hy*h�Ɖ|Y�Jֻ� /���zQ�����и֋��ރ���5i����1Α8��Cr8G�/r�`�} p7N'�,��!8���0�?39m����Yd����I;6�ÄG%u_X��\`V�	佰�~�Ăa�v�./�9A�Lk��j�N,WYq��^��l�ă�I<��s#�u�\ =0�\'>5,0�R��^�l���
�t���E����`��f��N`�,��.p�
=6�ÍۇƚA�h̢1{��L�kq�{۝`�ܜA��H�:|=�:�g�b�#F:��t�hB�&�hB�&D �ǉ&H3��98�h{X`��3n�&|"�t >G��o�Z��̓)z�	=�����[W���Dq�*[�I��4/I�%-�<*���z��3����R�	��|�"�o�o�f~�,o�V��o�ϓ����Q��㷖�"'�f�x�(�x�.�d_���	4���&U:�#NdI�qU�Wy�p��k��k:k���i�`dӄ�4���s&�Xg˪���F��.+V�]=�A���'J$\4wY��/V��8�>��?�B�g��&��kO�q�y��J以�۷�����m����X^����嵳�gx��˳��BaC<�'�R-�I�����	K�jU�l���eyUdM�0��/���X�� �?��s��|Y��U~Y{���KbiU�����O�`��P

��'M��O����Y�^*�y�:�!̀܈�#�̒&(o���D���	���Dȧ�IS�e���A�1j��u"~�#��'C��X�er3z�����[�PEz��z��?_ߓ�9C���R��؈���],�P�q��2??�:�&]���tnT=�S�˩��*���I�0���'��"��*����N?b�g��� r�W�M��֧瘕�z�RQ�,��O����N�f_M�뤙 \>�˚���;��벪�'���������/��Z�������������fr�k�a�߈�2)&h0�����!��	֫������9cT�?��ϓ��?M����W��������=��~s�7�?��� h��Z'<��'�����u�T �>���rY�E31�f�����eYM���}}r�L\'�)sF��:iw�L�|�*O4Y�<[�LP/𬑹BN^y7�hj�#9$������$s�}�^y��6�����G3��Ѣ�e��j��.�1�p���h�zU\!��1�Z�ɢ_w���{�V ��1|�B�D؞��d����1䖂�{
��l�����k�/�����c|9Ɨs|�ڃB�\9A]8�|�}��:h�8�fń�-u��jT^�*��һBC7�Q�s�+⏃�8`�J�t�L��ghH�s���M)�9�a��g������HIΐV+jD1@� }@j2x��`����l�ej7�A�d�6�������O�Ǔ��y4B�7B�<iޑ�Ұߊ8�&/�Ղ�w��y�Ct�r��>�M��6�>[�����|۔/��5o���b��&Լn(�@�+�����7z�tǙ6�gT�Ri�V.ڋ݋ɿ�珇$�b��`���1
����ಔ�ۍ�^ؕ�@"��}�si��@�A݇գH�ud���>��{l~� �V�c�1�>^t�h�/.�^ڔu��-�q'0�E�598J��]X�k����Q��0�|(���Q����%F/��%*�CMi� ?1L8�����To���k�z��U���J�$݆2�=��ɲ����~'���r�Ϟ��f�-h��d�bu]�DF�fE�O�3o[�d7���݇���;�o*���E��MI��DY�T���]l��P�?�b.�9�5�
qo>o��1�R�WN�w�]�k�%ԿCbT>⭈�:���Ru
�.�X�GQ� jR��}t5����� �  w@��wT�ʖ8���7����u�j��M�N�}=9�v����Mi��_H��d�f���o�>��gO�~��l��Qx��9�7(�Q\q�
��u܅-a�8e��1��C�c�8H�X���0\��0���7�T�\�J��,'��-[�N~yy0�e�<��i�q��˃�,��n����FP��q,�{3��J������H��Uv���z�`,+-�+
GnrYNM�g)'�7Iե$Xq0v}���n��c�٨n��&<?\¯]%y�V p�ʃ�-�������3j��`4�𑕫�j�y.a��I�.��qA)>Q��������!�C����I�!�I�&�w��^�ˢ��l��Pq�}D���t�/���s��x�BHo�����3B
�-V�o�,�9�Ц�����ECb�Dǭa����~��EA"ix5��"��C`ڄa ���p�
;��4©���Iݿ�����;v��;͘�[&g��s�3h<հ�vL���^⪜�+�!���ܒ��2��o����ab@B�>(X���p�5���b�It��+�����}@���V6���|Xp���g7�N�C��$$Y��6�TTD�V���rK7�]���AJ�5jU�C��Gq��xcJ�]3�u&ݟ{&M]A1��~?0��a�f�ag�EsZlO� �P�Ew{���] >��Q%��7tP�el 2�8�� ���)��ɑ|1#]��A�ࡀ��0ݡ;�`4��P[���sn�wА�0z�|���E�����߇�}�T��P�Lĳ�!ξ7j��.�G��~�J��|�!�n7��R{)&>� ȳQo�̚�CY����� (� �.�0!�]�}���0Y@#��w��[&��B\�s�s6%�O2?}ǩԀR��Y�� p\�n��c;��G����D67��x4,bڈi?-L im�A��-!,��Xn �s�{j;W	����]�I������#�1��#���(p�Aߓ�d�<�#< ]tm�������;E��_} ��qǤ�qC%����"N�8�'i�$`��E8�q��+L$�9i,�n��Q�PNǇ�T�4�>�}H:��"C�_����d���������zS)��7�{�P7����|<|�k�"����Qb�V �W�n��, 2�9\��3��SW�j����}9
����WP�C�p�$u���pH�C
��:N>��Y��O���'�< �C�@��8�į(��B<���
"*p�EejI[� "P��e�u�D3LebY|u�-�it-��|t����a��8j}�G�u���Gy�&;%쐚]�ϭYw?}��8F�7�(�"_�"qoE�3Ä#ǕY'�@���	C^�sGF��J�*>PES�[�����ea�~� 
��:�����я5      �   �  x��]I��&>��#�iGU۽��a�01_�s��P�$2�Rdk����A��xd*����)�������7o2�>B���ob��6w�.~�np����?��ގD!J����2-��(?�E�M����v���(B�G�?[>^� ?C��g<��Z~
'к�jh�o<�2�B���"��!�gnU����UƐ��Y��p��yD��	�ѿ���������/�_h>o����)'w���܃�47�ڎ$���v��+�v��JP��s1�)�q��)J�A�=��C��������ǯ����?���YV9����7����j�P��mR����쫄���es�%9�6��-^�R��h��Q��T�l��I�;�KU�*_���P����Q�z�3huY�,��+��J�:e�� �e(��?"/+<�V��2LbHO8���ڣĤ���Cj����/�sm�ϔ��F+��n HG�����!
(yD��ۛ���F�$���)A�=y�f�#��n�;�̧z�zF?ȃ��.����%�Fv+cT6?����>pZP��{���G`3�����|��U&ٽ7�F7�ƾ��N8_:�d�U��gW!/�u�?����h#�(��'ir�3����bcj���t���%�u����:O�����;	w.�p|�1�ZC��%0)�}X]��c�H�rA��vE�4�M��;�r��~٢��	{	%(?�����1����qL�آ�AJ٢
;9[����|f�M��yt�b��"1��E�gy
i�E.�����boZ)�h����3aE]��^��W}k��t�L�������x��
{�K�W��я�u�'��O�B:\|��Ѿ'�<�"�4-�m* 1��xdX�5KhA�5��D{m}ц|��I���뙵v��f�^��=N*u�	c�W�	�Ny��N8\�F�%j�N��@��wB���x�v��컽d�w{0����/컽��uJf��_ }�I���됚�L|9�zjX^*��R����F���mB�4H0��q�=I��N�B��ka�԰V���0��%�B�*:-4M�E�A�!:�x�_r���$����e^c������x���P��f���sO��؆��\dt��ӳ�c#m�ਗ�d|ԇ�����$�rAJ�u��y;2V���_�? �X:�Ԧ9?��[�Kxd��+<��T�~c�F�#���
��iqj͖*B}d��O~2�*�+�؆����E����S�F�e"�ȵ�^�V8�#X��ىb5*�"Y�_���`1���TV��t�=�Q�vݜR;��*59MK���u�47UY�T���UM�Ŧ	��YV���H'��j+ԓ�}V_�����<#��w�&;Mv�,��bAY���S�z\a.P�
��k�X�5��t���;�4���o� �:�GY�g�6��l����=�����Sځ�(^i���ȑ�x���7g��oN�F��5Kl��d�C�IƹG��k|[�.�w�������`m
��~�Xb8����/ͪ���^�^�b7��b^����ى��8g(9���|jX�+��\c��F�?�L;��:B�h�Q�wZ��i���/��|��aR �X(�#4������tI坲���Oؘy�]���$&Gl˞[v��$w��6*��Bl{�K��eZfuKiCcu��d�Zwǋ-ݳ`��d�Y�(��]�܂��h�j����6@�x��1u\�N�fU]��ҝjK�;��Dى�e�r��Ӣܦ0,��Q�@��fɀEY��N��,Ւ*[�(�Se��N�/H�+v�^�$3��,��H�H��za!�za��f��Ψ�Bqދ�;�z�6f�*�4/��AW�B�o�a�4&q���ÀqQ��
�%*��ä��|$��&�>�Y����L�+�ߴ��p�f�oG>��븛�
�MI���۹7�^b>���J�M9UTz��s�ք\��?��o�6�^��߲;]�f����U��.�[��	���X��N�@�(����2h$�̤R��z�"�Rͅe��΅�v
�6����� @i
��D��T��3�z>��g-D�w(=��Q�^����F����Œ�����M&A���|	�\S��j}�8�r�u=�E��SJ1*��QZ �[X(Vc8�2���jQ��4���������l\ds����\�<�19O�@��.z�n�Q\l��Nܜ��O�J�^���,�f��ư���<��E����(~�	���ϯl�� _]��'t �a���lB��䇰'*�c�7`�"!ċ��Q{��x��Ѥ3�q�!�4�^���b���ҥ�R�̔�j�l)d��6����K���ܐt�4p�
�@�O�;\�������'@&CFE�����0�,�G�s��r5O%�:�ؓ��k�����?���O��z���Tp���V�C�F��+B��G��w$���(~���.���e�L��,_��ol�h)��W:�$lI
��T��.TZ� [h���䧈�a���i!�4���]]_�.v}arv�s�Y���8~��0����C��9TQ!��B�� ��DW�.6�����'.hV��(h��y��N��[H/�|���
�C� ���<�5��l��)Xc�hdOFJfZ{&��J�jiG.*��H�7� �WM3[����$��<�^��{D���XɈWo�J�L��&���Ta�hq�|��ǔ�/��g��<)?i?=�oM���NYX�
iu�5@`t¶7�ʩ�s���0�x��p��x��	i���#��F���hdR18Z��^l�Oa(�����j�	�������m����QW��B�p�Ȋˍ�����r�F����v����pd'b�a[�1�N>c���Vɹ�?s��]� �V�(����bM����xki���uh^����|xrU\bͽ����>`.�a2�4J���Re�Q�1Gt�e)����Q�T[a��5o8J�_�I_��37�������O�^@��q�Ҡ��y)و�M4vanv�ө�d&1�۾�	Y��Y��et��F3}�gBJ3��,C],;��
�/�Ǧ-��?�t��AbM��#�ܳ|��_F}8E������f�A�{a~y���G&��i�k���B�iF��p��^�pG����Hb��.f�Y�t�Ʀ��4��?�m�ME��t��oƉr��\V������Ja�O���x�"QFU�C�l��Cq&4��rI	�@"3��l��׶�g�c!��3�iG��o�F:��A\�ǘ1��(b�(�{����y�5�(G��zf?�����`�K��cu��ص;���Lg�y��C��#A��|s�Hb��K�Q�2���	����]Kz����`�����c�,�V����$&�~c�%:^�m*}�Y��!C�Ь����K��cA��5^��y��i�k��n`��Rʛ�<Bϓq� N��`D48��>��	l�ٮ���tK��#�t�^�V�[�I�23Z��viD����"�,��1f� `����b�GuiL���ZyiL�7^��Y��.��Ɗ�j`I��ؤ<�hRq������a��m�84�CZp�h����Q!�Ym�z��#f��t�
���7��q���&@��5L�7qj~�1(��:θ�G�J�ʃ�H�r�N�L��&U:��9�G�Y���c2��K��0�y��X�lQ-gV;i5��^�\ǁ�v,���g�&/��~�}�B��q?^z��)dЌ?u� �<(*�vdI���e��?a�O����5/�L3���ī�S�#�A�[�c1��_��F�* �
3	�L��0�\��|9Y�-ϰ�9�
�ҧ�(�
Ёz�4y���&&*�:��j(�c�ߞ1p����7oo޾������ﾽ�p�������7?}���7����n?�{�0������'�������Oo����7o���Y�            x������ � �      �      x������ � �      �   �   x�m�A� ��s�^` h�,�P��Lz���v��m�?y�S=�&
� t�Bq����ǰQ²뀇~�����L(d��q�����~� ~%&�$҅,�hΣk���	���ў�b�%�_�Χwy�K������_���a��mF,��r`�LL�,_o]6:�wI�%������`b[^      �      x������ � �      	      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      �   �	  x���Ɏ�8 �3��N�������f�9�E"���&R�׏l��TvV��K	(&/~�"�� �
-���(k���C�
���>=�Q����`�[g�����H�&)����0�fO0J���w�3�׿�����Z4&��ЦҦ�z�4NnX�qh.�)l-�,b�]g��\�F�ڎ'3�m�P�~�Uh]���?@���gS� e�WKkQ>�.�e�R��&g����$���ڎ)_}: .'l�]R�uN2�/&��<Y��f�F�̨��o�r�Q�1�P��}2wrLh_M�݃IS��wg�6�b����Q�ǉ����ghģ��uҙ{�ʅ�=��!ӊ1�ʄm%2j+j�r�ޓEi���t0u�Z�i!�fS�:gi$�}z��������o�ڗ딒� zJ������G�Hl�{7�������(�h|��+O�dI
:�m3'U]�*��?u���YgA��@>�:��r��X;�o�CF/΃�$e�ʴY���82�݆F�3r"���`���P��2#!��d��j�+��Cq9�O��#��R�D"�ݼ��1�V)Q�9��.=�(�P���cF��l昕tZ�����G���
����ˉ�8Z:	�o�N��Cks�O����W1�։ɒ�Md�:5��=�^ǥR	��;2à��ፘ�A{�a>���i����Q~BЦ���}�U[�S��r/�� x^��c�w��w�*�-��NT)�̽�xf&η��Se�z�X�Np;�s�B�����GaZ>�nK$,k�3]vl�{�g�
:4����Q!�R�LE�+�f#�A�&��3�姍�r���eI�po�p�GC��i���^����P���>o��RY2U���Ԝ8�؏s�ڪW\��Ul����J;5�ِ����ЎEk�K�L�M�/_�S��@C	��m0���k�ƍ��
9��}?�'���_��t[��#E�χ�vLL.9��9/���b��z��m�7��}��p�!��Fq�{�+�u�$b���tѼ�:qtjtA�Zo AzK�Ø�@�mЩ1}��f��y��ZOE�.ƽ�ޞA_������1}h[wڔU�'Ր8C���Y�y���>缘>�(��.�d��m;X�6ɖ�m�-:5����h�EcǊ��b˞�
��A������U�Ͷvo�;����]�Є۠Sc� �а�e9Y�P4��RWS����pgi������rl��������R����_ Bb��/UE*���0b�����
%���t�ʂ�uب��'|���u�_~?����J�}�3h�B��ۥ�����췝o>6{��+f,2&�@���tí �-��ϗ�xe�1�a��0p�͐�Q8VYNL�Ű'�ٹY�>B��z�؜��|`�QZ`=�M���*�ݯR�i.$�|4[7�H-��H7�ʏ�XU(�e�+�^��֩:�[/��Ao�1�@Tyےd�a*z�`٭��m�Jn|��}@�`�[+�7�օ����L�%�'2��0A�VT%��d��+V��\��U�y��a݈c��ǉg6�'��p����'Z�w��w_>���4��
�7B�2h�*Ӷ1��zX|����es�L���D ���� �������sg��V4�o����a2�����j�n�P�"Fb�[I�U��'|�����i��b�v��� !��q�7	��<�@驲l�:���BUp�"�//����M�尼Y)~J�����/�l\4J�yW+8�}51�`�����z'xHf��f���fSM�:�7�-���:c��ٵ]Z�k�<�,-�-����"�ۘW(��vn+��|Gf����>��B�љ`0W*U��ϖ|C��A�q�)���N�uG]��2ڍ�`W6�����?ݺk��S��D���E�2[Ǹ����D�W���?:9�
� ]T�I7Y����}�g�rs]rjT!{�����m2�
�������G.�>u����4뀤�*��6���j���׮�3�~�N�=�Q�R0�^4<�z+��l�Kr"�<߶��X��p5�T�B7<�)��V%|Xe`�8r6�k_:ue�֘��_��I*B �6*u7��!L�\�����W\�J1�@�!�e��~h4�O�&7�]u�c	�e:�K��b�:�b�fmuu��Á�`L'�I������8wky�8�À��ʤ�f]�1�*]Cw��<������-�ִU}��T�mqs}�>��@��N����A�L6�X�|��Bf/��B�x�m��m}��%��)e(��/��+��QK�r^:��%��e��F�/	&p
.p�`��?FM�����bQm7��q�4���6�U����xa����f�R,YR���/[���5?f��0�Q��`�
F�~�$W����%U+���Xv?�9�&���<&�n�8� ��1��{(�i��Ҝd����ӧ����{         i  x�-�[�!D��Ō0~�^��u�q[��(�#�a��T�������857��ŭ���zm�#_��;p�B�+�<!(�򞞔��W�C��۵xO�|c}U�3dq���E�9�`e�d!}��]JN�$Q�r�O�
T&먭9U�:YVkAu�O���&4'��C����-Xk�&0��?�i{��^t�`O�uI�ɀ=moZ�r�����vaO�F_�5)�m����I��t��d�BkIxL&��C?�&.k��2�i���ɺ��i��"t�O��p�O��=M����<�G�1.�~�ٚ3�Z0k���"[K�!mґ�f c2��]f-����4[�y֗Gpz텧�uO*��l��G���z      �   �   x���M
�0D�����/L��.=���1ZCL5��ӗ"�tQ��c�y�,��Yߔ�F��-zLӱ��ѻFז��
�d-�vx�Ī�K�]��w�Q�a��B!$�!Q���<?�	(�9����%�SE���A��/t[�z�%k���끾9�/N #iv���2�� x�a�      �     x���Oo�@��˧聫�]�?����-�bm/+���E��W�[f^�%s��P��\y�\�z�:^����H�r�e�+�� 7{!��=Ry,2�0��I�l��� F��~U<qH���|HF�P����t���z����Gˠ��U�P�!С����Ű���rP�e`XH�RWg�SvJ�SB8{�+�+�Q�z����Ÿx	�V53��c9ߝ�I�1�~��&�L]��gOz� �������B�!�]�Y�Ql��bv�"-�a�܋r9            x�3�4�4�4�2�4��b���� M�      �      x������ � �            x������ � �      -      x������ � �      C      x������ � �      /      x������ � �      3      x������ � �      7      x������ � �      +      x������ � �      !      x������ � �      9      x������ � �            x������ � �      5      x������ � �      #      x������ � �      ;      x������ � �      A      x������ � �      %      x������ � �      =      x������ � �      )      x������ � �      ?      x������ � �      '      x������ � �            x������ � �      1      x������ � �     