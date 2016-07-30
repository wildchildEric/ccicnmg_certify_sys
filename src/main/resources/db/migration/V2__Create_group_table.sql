CREATE TABLE t_group (
  id                  BIGSERIAL PRIMARY KEY,
  name                VARCHAR(255) UNIQUE,
  description         VARCHAR(255),
  creation_time       TIMESTAMP,
  modification_time   TIMESTAMP,
  created_by_user_id  BIGINT REFERENCES t_user,
  modified_by_user_id BIGINT REFERENCES t_user
);