au BufRead,BufNewFile *.psql,psql.edit.*.sql set ft=sql.postgresql

" TODO: detect postgresql via rails database.yml or if postgresql is running
" and mysql is not. Not the best heuristic, but it's a start.

if exists("g:sql_type_default") && g:sql_type_default == 'postgresql'
  au BufRead,BufNewFile *.sql set filetype=sql.postgresql
endif
