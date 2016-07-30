CREATE TABLE t_user (
  id                      BIGSERIAL PRIMARY KEY,
  name                    VARCHAR(255),
  username                VARCHAR(255) UNIQUE,
  password                VARCHAR(255),
  account_non_expired     BOOLEAN NOT NULL,
  account_non_locked      BOOLEAN NOT NULL,
  credentials_non_expired BOOLEAN NOT NULL,
  enabled                 BOOLEAN NOT NULL,
  creation_time           TIMESTAMP,
  modification_time       TIMESTAMP,
  created_by_user_id      BIGINT REFERENCES t_user,
  modified_by_user_id     BIGINT REFERENCES t_user
);
-- ALTER TABLE t_user
--   ADD CONSTRAINT fk_user_created_by FOREIGN KEY (created_by_user_id) REFERENCES t_user;
-- ALTER TABLE t_user
--   ADD CONSTRAINT fk_user_modified_by FOREIGN KEY (modified_by_user_id) REFERENCES t_user;