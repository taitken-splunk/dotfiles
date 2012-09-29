"
" Filetype detection
"
augroup filetypedetect
    " Detect .txt as 'text'
    autocmd! BufNewFile,BufRead *.txt setfiletype text
    " PHP
    autocmd! BufNewFile,BufRead *.phtml setfiletype php
    " Svn commmits
    au BufNewFile,BufRead  svn-commit.* setf svn
    " Actionscript 
    au BufNewFile,BufRead *.as setf actionscript
    " ini files as well as .hgrc files
    au BufNewFile,BufRead *.ini,*/.hgrc,*/.hg/hgrc setf ini
    "Json files
    au BufNewFile,BufRead *.json setf json

    " VCL for varnish configs
    au BufRead,BufNewFile *.vcl setf vcl

    " Puppet files
    "au BufNewFile,BufRead *puppet* setf puppet
    au BufNewFile,BufRead *.pp setf puppet

    " Set vagrant files as ruby
    au BufNewFile,BufRead Vagrantfile setf ruby 

    au! BufRead,BufNewFile /var/log/*  set filetype=syslog
    au! BufRead,BufNewFile bp*.log  set filetype=pythonlog
    au! BufRead,BufNewFile *.log  set filetype=syslog
    au! BufRead,BufNewFile */nginx/* set ft=nginx
augroup END
augroup Binary
      au!
      au BufReadPre   *.bin,*.jpg,*.mp3,*.wav,*.aif let &bin=1
      au BufReadPost  *.bin,*.jpg,*.mp3,*.wav,*.aif if &bin | %!xxd -c 32
      au BufReadPost  *.bin,*.jpg,*.mp3,*.wav,*.aif set ft=xxd | endif
      au BufWritePre  *.bin,*.jpg,*.mp3,*.wav,*.aif if &bin | %!xxd -r
      au BufWritePre  *.bin,*.jpg,*.mp3,*.wav,*.aif endif
      au BufWritePost *.bin,*.jpg,*.mp3,*.wav,*.aif if &bin | %!xxd
      au BufWritePost *.bin,*.jpg,*.mp3,*.wav,*.aif set nomod | endif
augroup END
