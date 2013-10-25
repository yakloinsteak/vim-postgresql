" Only do this when not done yet for this buffer
if exists("b:did_ps_ftplugin")
  finish
endif

let b:did_ps_ftplugin = 1
let s:vpg_path = resolve(expand('<sfile>:p:h:h'))

call postgresql#Init(s:vpg_path)
call postgresql#SetDictionary()
call postgresql#SetThesaurus()
