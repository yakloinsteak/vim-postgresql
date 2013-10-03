setlocal dictionary+=$HOME/.vim/bundle/postgresql/dictionary.txt

" postgresql thesaurus is the first thesaurus
let g:thes = &thesaurus
setlocal thesaurus=$HOME/.vim/bundle/postgresql/thesaurus.txt
exe 'setlocal thesaurus+=' . g:thes

setlocal omnifunc=syntaxcomplete#Complete
