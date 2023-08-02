CREATE OR REPLACE PROCEDURE my_dataset.REMOVE_TEMP_TABLE(CHARACTER VARYING(ANY))
                            RETURNS  CHARACTER VARYING(ANY)

                            LANGUAGE NZPLSQL AS
                            BEGIN_PROC
                            DECLARE
                            tempTableName ALIAS FOR $1;
                            BEGIN

                            execute IMMEDIATE  'drop table ' || tempTableName ;

                            return 'Table dropped' ;


                            END;
                            END_PROC;
