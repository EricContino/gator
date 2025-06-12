-- +goose Up
CREATE TABLE feeds (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    url TEXT NOT NULL UNIQUE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

-- +goose Down
DROP TABLE feeds;