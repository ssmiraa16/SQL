ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_person_id 
	CHECK (person_id is not null);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_pizzeria_id 
	CHECK (pizzeria_id is not null);
ALTER TABLE person_discounts ADD CONSTRAINT ch_nn_discount 
	CHECK (discount is not null);
ALTER TABLE person_discounts ALTER COLUMN discount SET DEFAULT 0;
ALTER TABLE person_discounts ADD CONSTRAINT ch_range_discount 
	CHECK (discount between 0 and 100);