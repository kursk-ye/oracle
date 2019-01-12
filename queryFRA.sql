SELECT
    NAME,
    TO_CHAR(SPACE_LIMIT/1024/1024, '999,999,999,999') AS SPACE_LIMIT_MB,
    TO_CHAR((SPACE_LIMIT - SPACE_USED + SPACE_RECLAIMABLE)/1024/1024,'999,999,999,999') AS SPACE_AVAILABLE_MB,
    ROUND((SPACE_USED - SPACE_RECLAIMABLE)/SPACE_LIMIT * 100, 1) AS PERCENT_FULL
    FROM V$RECOVERY_FILE_DEST;

--show parameter db_recovery_file_dest_size;

--alter system set  db_recovery_file_dest_size = integer;
