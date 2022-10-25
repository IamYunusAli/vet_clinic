CREATE TABLE medical_histories(
    id BIGSERIAL PRIMARY KEY,
    admitted_at TIMESTAMP,
    patient_id INT REFERENCES patients(id),
    status VARCHAR
);

CREATE TABLE patients(
     id BIGSERIAL PRIMARY KEY,
     name VARCHAR,
     date_of_birth DATE
);

CREATE TABLE invoices(
    id BIGSERIAL PRIMARY KEY,
    total_amount DECIMAL,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT REFERENCES medical histories(id)
);

CREATE TABLE treatments(
    id BIGSERIAL PRIMARY KEY,
    type VARCHAR(50),
    name VARCHAR(100)
);

CREATE TABLE invoice_items(
    id BIGSERIAL PRIMARY KEY,
    unit_price DECIMAL,
    quantity INT,
    total price DECIMAL,
    invoice_id INT REFERENCES invoices(id),
    treatment_id INT,REFERENCES treatments(id)
);

CREATE TABLE medical_treatment(
    treatment_id INT references treatments(id),
    medical_history INT references medical_histories(id)
);

CREATE INDEX ON medical_histories (patient_id);
CREATE INDEX ON invoices (medical_history_id);
CREATE INDEX ON invoice_items (invoice_id);
CREATE INDEX ON invoice_items (treatment_id);
CREATE Index ON medical_treatment (treatment_id);
CREATE Index ON medical_treatment (medical_history_id);

