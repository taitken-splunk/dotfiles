"
" Key Mappings
"

" Change leader to a comma for ease of use
let mapleader=","

" switch to upper/lower window quickly
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" use CTRL-F for omni completion
imap <C-F> 

" Toggle NERDTree 
nmap <silent> <F2> :NERDTreeToggle<CR>
nmap <silent> <S-F2> :NERDTreeFind<CR>

" Toggle search highlight
nmap <silent> <F3> :set hls!<CR>

" Rerun last : command
nmap <silent> <F4> @:<CR>

" Use <F5> to togle comments 
nmap <silent> <F5> \cs<CR>

" use <F6> to toggle line numbers
nmap <silent> <F6> :set number!<CR>

" use <F7> to togle folding
nmap <silent> <F7> za

" map <F8> to toggle taglist window
" nmap <silent> <F8> :TlistToggle<CR>
" Set in .vim/after/plugin/general.vim only if taglist can be run

" Togle showing non printing chars
nmap <silent> <F9> :set list!<CR>

" Togle paste mode on and off with F10
set pastetoggle=<F10>

" Add current buffer to diff
nmap <silent> <F11> :diffthis<CR>

nmap <silent> <F12> :call PylintOnWriteTogle()<CR>