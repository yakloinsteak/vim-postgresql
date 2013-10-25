function! postgresql#Init(path)
  let s:vpg_path = a:path
  SQLSetType postgresql
  setlocal omnifunc=syntaxcomplete#Complete
endfunction

function! postgresql#SetDictionary()
  let l:dictionary_path = s:vpg_path . '/dictionary.txt'
  exe 'setlocal dictionary=' . l:dictionary_path . ',' . &dictionary
endfunction

function! postgresql#SetThesaurus()
  let s:thesaurus_path = s:vpg_path . '/thesaurus.txt'
  exe 'setlocal thesaurus=' . s:thesaurus_path . ',' . &thesaurus
endfunction
