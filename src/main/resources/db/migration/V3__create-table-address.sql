CREATE TABLE address(
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    uf VARCHAR(100) NOT NULL,
    event_id UUID,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE
);