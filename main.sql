CREATE DATABASE "weaver-ci"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

/*
 * Users table
 */
CREATE TABLE public.users
(
    db_id SERIAL,
    user_id uuid NOT NULL UNIQUE,
    email_address varchar(255) NOT NULL UNIQUE,
    last_login timestamp with time zone,
    created_on timestamp with time zone NOT NULL default (now() at time zone 'utc'),
    modified_on timestamp with time zone NOT NULL default (now() at time zone 'utc'),
    PRIMARY KEY (db_id)
);