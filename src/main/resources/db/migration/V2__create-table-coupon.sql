CREATE TABLE coupon(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    code VARCHAR(100) NOT NULL,
    valid TIMESTAMP NOT NULL,
    event_id UUID,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE
);