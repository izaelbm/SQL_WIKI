select sqltext.text, req.* from sys.dm_exec_query_stats req
CROSS APPLY sys.dm_exec_sql_text(sql_handle) AS sqltext
where creation_time between '2023-08-02 12:00:00' and '2023-08-02 13:00:00'
