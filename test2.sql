CREATE ROLE <rolename>;
-- WH--

GRANT ALL ON WAREHOUSE <whname> TO ROLE <rolename>;

--DB--
GRANT OWNERSHIP ON DATABASE  <dbname> TO ROLE <rolename>;
GRANT ALL       ON DATABASE  <dbname> TO ROLE <rolename>;

--SCHEMA--
GRANT OWNERSHIP ON ALL SCHEMAS IN DATABASE <dbname> TO ROLE <rolename>;
GRANT ALL  ON ALL SCHEMAS IN DATABASE <dbname> TO ROLE <rolename>;

--TABLES AND VIEWS--
GRANT SELECT ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT INSERT ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT UPDATE ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT TRUNCATE ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT DELETE ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT OWNERSHIP ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;
GRANT ALL ON ALL TABLES IN DATABASE <dbname> TO ROLE <rolename>;


GRANT SELECT ON ALL VIEWS IN DATABASE <dbname> TO ROLE <rolename>;
GRANT OWNERSHIP ON ALL VIEWS IN DATABASE <dbname> TO ROLE <rolename>;
GRANT ALL ON ALL VIEWS IN DATABASE <dbname> TO ROLE <rolename>;

-- PROCEDURES--

GRANT ALL ON ALL PROCEDURES IN DATABASE <dbname> TO ROLE <rolename>;

--STAGE--

GRANT USAGE ON STAGE <stagename> TO ROLE <rolename>;
GRANT READ ON STAGE <stagename> TO ROLE <rolename>;
GRANT WRITE ON STAGE <stagename> TO ROLE <rolename>;
GRANT MODIFY ON STAGE <stagename> TO ROLE <rolename>;
GRANT OWNERSHIP ON STAGE <stagename> TO ROLE <rolename>;

--MASKING POLICY--

GRANT CREATE MASKING POLICY ON ALL SCHEMAS IN DATABASE <dbname> TO ROLE <rolename>;
GRANT APPLY MASKING POLICY ON ALL SCHEMAS IN DATABASE <dbname> TO ROLE <rolename>;

--STREAMS--

GRANT CREATE STREAM ON DATABASE <dbname> TO ROLE <rolename>;
GRANT ALTER ON STREAM  <streamname> TO ROLE <rolename>;
GRANT DROP ON STREAM  <streamname> TO ROLE <rolename>;
GRANT OWNERSHIP ON STREAM  <streamname> TO ROLE <rolename>;

--TASKS --
GRANT CREATE TASK  ON  ACCOUNT TO ROLE <rolename>;
GRANT EXECUTE TASK ON DATABASE <dbname> TO ROLE <rolename>;
GRANT OPERATE TASK ON DATABASE <dbname> TO ROLE <rolename>;
GRANT ALL TASK ON DATABASE <dbname> TO ROLE <rolename>;
GRANT OWNERSHIP ON TASK  <taskname> TO ROLE <rolename>;

--SNOWPIPE--
GRANT CREATE PIPELINE  ON DATABASE <dbname> TO ROLE <rolename>;
GRANT EXECUTE ON PIPELINE <pipename> TO ROLE <rolename>;
GRANT OPERATE ON PIPE <pipename> TO ROLE <rolename>;
GRANT ALL ON PIPE <pipename> TO ROLE <rolename>;
GRANT OWNERSHIP ON PIPE <pipename> TO ROLE <rolename>;

--SEQUENCE--

GRANT CREATE SEQUENCE ON DATABASE <dbname> TO ROLE <rolename>;
GRANT USAGE ON SEQUENCE <sequencename>  TO ROLE <rolename>;
GRANT ALTER ON SEQUENCE <sequencename>  TO ROLE <rolename>;
GRANT OWNERSHIP ON SEQUENCE <sequencename>  TO ROLE <rolename>;
--adding extra line for new commit
