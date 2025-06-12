-- name: CreateFeed :one
INSERT INTO feeds (id, name, url, user_id)
VALUES (
    $1,
    $2,
    $3,
    $4
)
RETURNING *;

-- name: GetFeeds :many
SELECT f.name, f.url, u.name as username from feeds f INNER JOIN users u ON f.user_id = u.id;