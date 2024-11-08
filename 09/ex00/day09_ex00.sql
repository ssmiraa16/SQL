CREATE TABLE person_audit(
	created timestamp with time zone default current_timestamp not null,
	type_event char(1) default 'I' not null ,
	row_id bigint not null,
	name varchar,
	age integer, 
	gender varchar,
	address varchar,
	constraint ch_type_event check (type_event IN ('I', 'D', 'U'))
);

CREATE FUNCTION fnc_trg_person_insert_audit() RETURNS trigger AS 
	$trg_person_insert_audit$
BEGIN
IF TG_OP='INSERT' THEN 
INSERT INTO person_audit(row_id , name, age, gender, address)
VALUES(NEW.id, NEW.name, NEW.age, NEW.gender, NEW.address);
END IF;
RETURN NULL;
END;
$trg_person_insert_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit AFTER INSERT ON person 
FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_insert_audit();

INSERT INTO person(id, name, age, gender, address) 
	VALUES (10,'Damir', 22, 'male', 'Irkutsk');