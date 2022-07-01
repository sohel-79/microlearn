# microlearn

Clone web app of DeepStash app

Using JSP,CSS,Bootstrap,Postgres

Add following to create database


-- Table: public.author

-- DROP TABLE IF EXISTS public.author;

CREATE TABLE IF NOT EXISTS public.author
(
    authorid text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    name text COLLATE pg_catalog."default",
    pass text COLLATE pg_catalog."default",
    isallowed boolean DEFAULT false,
    CONSTRAINT authorid PRIMARY KEY (authorid),
    CONSTRAINT email UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.author
    OWNER to postgres;
    
    
-------------------------------------------------------------------------------------------------------------------------------    
    
    -- Table: public.books

-- DROP TABLE IF EXISTS public.books;

CREATE TABLE IF NOT EXISTS public.books
(
    bookname text COLLATE pg_catalog."default" NOT NULL,
    author text COLLATE pg_catalog."default",
    bookid integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    image text COLLATE pg_catalog."default",
    CONSTRAINT bookid PRIMARY KEY (bookid),
    CONSTRAINT authorid FOREIGN KEY (author)
        REFERENCES public.author (authorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books
    OWNER to postgres;
-- Index: fki_a_name

-- DROP INDEX IF EXISTS public.fki_a_name;

CREATE INDEX IF NOT EXISTS fki_a_name
    ON public.books USING btree
    (author COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
    
    
-------------------------------------------------------------------------------------------------------------------------------

-- Table: public.ideas

-- DROP TABLE IF EXISTS public.ideas;

CREATE TABLE IF NOT EXISTS public.ideas
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    bookid integer,
    authorid text COLLATE pg_catalog."default",
    title text COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    isdeleted boolean DEFAULT false,
    CONSTRAINT idea_id PRIMARY KEY (id),
    CONSTRAINT authorid FOREIGN KEY (authorid)
        REFERENCES public.author (authorid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT bookid FOREIGN KEY (bookid)
        REFERENCES public.books (bookid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ideas
    OWNER to postgres;
-- Index: fki_book_id

-- DROP INDEX IF EXISTS public.fki_book_id;

CREATE INDEX IF NOT EXISTS fki_book_id
    ON public.ideas USING btree
    (bookid ASC NULLS LAST)
    TABLESPACE pg_default;
    
    
    
-------------------------------------------------------------------------------------------------------------------------------

-- Table: public.userinfo

-- DROP TABLE IF EXISTS public.userinfo;

CREATE TABLE IF NOT EXISTS public.userinfo
(
    uname text COLLATE pg_catalog."default" NOT NULL,
    email text COLLATE pg_catalog."default" NOT NULL,
    name text COLLATE pg_catalog."default",
    pass text COLLATE pg_catalog."default",
    CONSTRAINT emaiid UNIQUE (email),
    CONSTRAINT username UNIQUE (uname)
        INCLUDE(uname)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.userinfo
    OWNER to postgres;
