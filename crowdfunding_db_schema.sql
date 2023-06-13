-- Categories
CREATE TABLE IF NOT EXISTS public.categories
(
    category_id character varying(60)  NOT NULL,
    category character varying(60)  NOT NULL,
    CONSTRAINT categories_pkey PRIMARY KEY (category_id)
);


-- SUBCATEGORIES
CREATE TABLE IF NOT EXISTS public.subcategories
(
    subcategory_id character varying(60)  NOT NULL,
    subcategory character varying(60)  NOT NULL,
    CONSTRAINT subcategories_pkey PRIMARY KEY (subcategory_id)
);

-- CONTACT
CREATE TABLE IF NOT EXISTS public.contacts
(
    contact_id integer NOT NULL,
    first_name character varying(30)  NOT NULL,
    last_name character varying(30)  NOT NULL,
    email character varying(60) NOT NULL,
    CONSTRAINT contacts_pkey PRIMARY KEY (contact_id)
);
-- CAMPAIGNS
CREATE TABLE IF NOT EXISTS public.campaigns
(
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name character varying(60) NOT NULL,
    description character varying(60) NOT NULL,
    goal double precision,
    pledged double precision,
    outcome character varying(60) NOT NULL,
    backers_count integer,
    country character varying(60) NOT NULL,
    currency character varying(60) NOT NULL,
    launch_date date NOT NULL,
    end_date date NOT NULL,
    category_id character varying(60) NOT NULL,
    subcategory_id character varying(60) NOT NULL,
    CONSTRAINT campaigns_pkey PRIMARY KEY (cf_id),
    CONSTRAINT campaigns_category_id_fkey FOREIGN KEY (category_id)
        REFERENCES public.categories (category_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT campaigns_contact_id_fkey FOREIGN KEY (contact_id)
        REFERENCES public.contacts (contact_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT campaigns_subcategory_id_fkey FOREIGN KEY (subcategory_id)
        REFERENCES public.subcategories (subcategory_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);



SELECT * FROM contacts;

SELECT * FROM categories;

SELECT * FROM subcategories;

SELECT * FROM campaigns;