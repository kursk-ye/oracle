connect scott/tiger
define _editor=vi

col object_name for a30
col segment_name for a30
col file_name for a40
col Name for a15
col what for a30 word_wrapped
col plan_plus_exp for a100
col global_name new_value gname

define gname=idle

select lower(user) || '@' || 	substr(global_name, 1, decode(dot, 0, length(global_name), dot-1)) global_name
	from (select global_name, instr(global_name, ' . ') dot from global_name );
	
set termout on
set appinfo ON
set appinfo "SQL*Plus"
set arraysize 15
set autocommit OFF
set autoprint OFF
set autorecovery OFF
set autotrace off
set blockterminator "."
set cmdsep OFF
set colsep " "
set compatibility NATIVE
set concat "."
set copycommit 0
set copytypecheck ON
set define "&"
set describe DEPTH 1 LINENUM OFF INDENT ON
set markup HTML OFF SPOOL OFF ENTMAP ON PRE OFF
set echo OFF
set editfile "afiedt.buf"
set embedded OFF
set endbuftoken ""
set escape OFF
set feedback 6
set flagger OFF
set flush ON
set HEADING ON
set headsep "|"
set LINESIZE 135
set logsource ""
set long 80
set longchunksize 80
set newpage 1
set null ""
set numformat ""
set numwidth 10
set PAGESIZE 100
set pause OFF
set recsep WRAP
set recsepchar " "
set SERVEROUTPUT ON size 1000000 format WORD_WRAPPED
set shiftinout invisible
set showmode OFF
set sqlblanklines OFF
set sqlcase MIXED
set sqlcontinue "> "
set sqlnumber ON
set sqlprefix "#"
set sqlprompt "SQL> "
set sqlterminator ";"
set suffix "sql"
set tab ON
set termout ON
set TIME ON
set TIMING ON
set TRIMOUT ON
set trimspool OFF
set underline "-"
set verify ON
set wrap OFF
