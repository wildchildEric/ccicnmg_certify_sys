CREATE TABLE t_authority (
  id                  BIGSERIAL PRIMARY KEY,
  role                VARCHAR(255) NOT NULL,
  group_id            BIGINT REFERENCES t_group,
  creation_time       TIMESTAMP,
  modification_time   TIMESTAMP,
  created_by_user_id  BIGINT REFERENCES t_user,
  modified_by_user_id BIGINT REFERENCES t_user
);