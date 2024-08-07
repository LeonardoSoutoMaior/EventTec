CREATE TABLE event (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(250) NOT NULL,
    img_url VARCHAR(100),
    event_url VARCHAR(100) NOT NULL,
    date TIMESTAMP NOT NULL,
    remote BOOLEAN NOT NULL
);
