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
