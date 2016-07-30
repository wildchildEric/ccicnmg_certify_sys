CREATE TABLE user_ (
  id                      SERIAL PRIMARY KEY,
  name                    VARCHAR(255),
  username                VARCHAR(255),
  password                VARCHAR(255),
  creation_time           TIMESTAMP,
  modification_time       TIMESTAMP,
  account_non_expired     BOOLEAN NOT NULL,
  account_non_locked      BOOLEAN NOT NULL,
  credentials_non_expired BOOLEAN NOT NULL,
  enabled                 BOOLEAN NOT NULL,
  created_by_user_id      INTEGER REFERENCES user_,
  modified_by_user_id     INTEGER REFERENCES user_
);
-- ALTER TABLE user_
--   ADD CONSTRAINT fk_user_created_by FOREIGN KEY (created_by_user_id) REFERENCES user_;
-- ALTER TABLE user_
--   ADD CONSTRAINT fk_user_modified_by FOREIGN KEY (modified_by_user_id) REFERENCES user_;