COMMENT ON TABLE person_discounts IS 'Таблица описывает процент скидок для посетителей';
COMMENT ON COLUMN person_discounts.id IS 'ID скидки';
COMMENT ON COLUMN person_discounts.person_id IS 'ID посетителя';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'ID пицерии';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка в процентах';