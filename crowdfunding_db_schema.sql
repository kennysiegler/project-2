-- CAMPAIGNS
CREATE TABLE campaigns (
    cf_id integer NOT NULL,
    contact_id integer NOT NULL,
    company_name character varying[] COLLATE pg_catalog."default" NOT NULL,
    description character varying[] COLLATE pg_catalog."default" NOT NULL,
    goal integer NOT NULL,
    pledged integer NOT NULL,
    outcome character varying[] COLLATE pg_catalog."default" NOT NULL,
    backers_count integer NOT NULL,
    country character varying[] COLLATE pg_catalog."default" NOT NULL,
    currency character varying[] COLLATE pg_catalog."default" NOT NULL,
    launch_date date[] NOT NULL,
    end_date date[] NOT NULL,
    category_id character varying[] COLLATE pg_catalog."default" NOT NULL,
    subcategory_id character varying[] COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT campaign_pkey PRIMARY KEY (cf_id)
)
;

--CATEGORIES
CREATE TABLE categories (
	category_id varchar(60) NOt NULL,
	category varchar(60) NOT NULL,
	PRIMARY KEY (category_id)
);
--SUBCATEGORIES
CREATE TABLE subcategories (
	subcategory_id varchar(60) NOt NULL,
	subcategory varchar(60) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

--CONTACT
CREATE TABLE contacts (
	contact_id integer NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(60) NOT NULL,
	PRIMARY KEY (contact_id)
);





SELECT * FROM contacts;

SELECT * FROM categories;

SELECT * FROM subcategories;

SELECT * FROM campaigns;