CREATE TABLE t_user_group (
  user_id  BIGINT REFERENCES t_user,
  group_id BIGINT REFERENCES t_group
);