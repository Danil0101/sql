CREATE TABLE IF NOT EXISTS company
(
    id integer NOT NULL,
    name character varying,
    CONSTRAINT company_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS person
(
    id integer NOT NULL,
    name character varying,
    company_id integer references company(id),
    CONSTRAINT person_pkey PRIMARY KEY (id)
);

INSERT INTO company(id, name) VALUES (1, 'Сбербанк'), (5, 'Ростелеком'), (10, 'ВТБ');
INSERT INTO person(id, name, company_id) VALUES (1, 'Иванов', 1), (2, 'Иванова', 1), (3, 'Петров', 5), (4, 'Петрова', 5), (5, 'Сидоров', 10);

SELECT p.name AS имя, c.name AS компания
FROM person AS p JOIN company AS c on p.company_id = c.id
WHERE c.id <> 5;

SELECT c.name AS компания, COUNT(*) AS человек
FROM company AS c JOIN person AS p on c.id = p.company_id
GROUP BY компания
HAVING COUNT(*) IN 
	(SELECT MAX(внутр.кол_человек)
	FROM (SELECT c.name AS компания, COUNT(*) AS кол_человек
			FROM company AS c JOIN person AS p on c.id = p.company_id
			GROUP BY компания) внутр)
; 