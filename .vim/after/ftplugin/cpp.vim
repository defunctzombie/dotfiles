" http://stackoverflow.com/questions/8062608/vim-and-c11-lambda-auto-indentation
" makes c++11 lambda indentation not shit
" don't indent c++ namespaces -> (N-s)
" don't indent access specifiers (public, private) -> (g0)
setlocal cindent cino=j1,(0,ws,Ws,N-s,g0
